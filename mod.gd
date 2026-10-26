extends Node

const Strings = preload("res://gdpatch/mods/snaptic_Chinese/ch_strings.gd")
const FONT_PATH := "res://gdpatch/mods/snaptic_Chinese/fonts/NotoSansTC-Regular.otf"
const Dialogue = preload("res://gdpatch/mods/snaptic_Chinese/ch_dialogue.gd")
var _cjk: FontFile = null
var _reported := {}

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	_cjk = _load_font()
	if _cjk == null:
		_log("font not found at %s; the mod is off" % FONT_PATH)
		return
	get_tree().node_added.connect(_on_node_added)
	_translate_tree(get_tree().root)

	# Rescan: some windows set their text again when they open.
	var timer := Timer.new()
	timer.wait_time = 0.5
	timer.process_mode = Node.PROCESS_MODE_ALWAYS
	timer.timeout.connect(func(): _translate_tree(get_tree().root))
	add_child(timer)
	timer.start()
	_log("enabled")

func _on_node_added(node: Node) -> void:
	# Deferred: scenes set their text in _ready (setting rows, tab titles),
	# which runs after the node enters the tree.
	_translate_node.call_deferred(node)


func _translate_tree(n: Node) -> void:
	_translate_node(n)
	for child in n.get_children():
		_translate_tree(child)


func _translate_node(n: Node) -> void:
	if not is_instance_valid(n):
		return
		
	var res = n.get("dialogue_resource")
	if res is Resource:
		Dialogue.translate_resource(res)
		
	if n is Control:
		_add_fallback(n)

	if n is Label:
		var old: String = n.text
		var new_text: String = Strings.zh(old)
		if new_text != old:
			n.text = new_text
	elif n is RichTextLabel:
		var old_rich: String = n.text
		var new_rich: String = Strings.in_rich(old_rich)
		if new_rich != old_rich:
			n.text = new_rich

	if n is OptionButton:
		for i in range(n.item_count):
			n.set_item_text(i, Strings.zh(n.get_item_text(i)))
	elif n is Button:
		var old_btn: String = n.text
		var new_btn: String = Strings.zh(old_btn)
		if new_btn != old_btn:
			n.text = new_btn

	if n is TabContainer:
		for i in range(n.get_tab_count()):
			n.set_tab_title(i, Strings.zh(n.get_tab_title(i)))
	if n is Label or n is Button or n is RichTextLabel:
		_report_english(n, n.text)
	if str(n.get_path()).begins_with("/root/GDPatch"):
		return


# Adds the Chinese font as a fallback to the fonts this control draws with.
# Arimo has no Chinese glyphs, so Latin text still uses Arimo and only the
# characters Arimo lacks come from the Chinese font.
func _add_fallback(n: Control) -> void:
	var fonts: Array = [n.get_theme_default_font(), n.get_theme_font("font", n.get_class())]
	for f in fonts:
		if f is FontFile and not f.fallbacks.has(_cjk):
			f.fallbacks.append(_cjk)


func _load_font() -> FontFile:
	if not FileAccess.file_exists(FONT_PATH):
		return null
	var bytes := FileAccess.get_file_as_bytes(FONT_PATH)
	if bytes.is_empty():
		return null
	var font := FontFile.new()
	font.data = bytes
	return font


func _log(message: String) -> void:
	print("SNAPTIC-Chinese: " + message)

# Prints each visible control that still shows English, once, with its path.
# Text with letters has upper != lower; Chinese characters have neither.
func _report_english(n: Node, text: String) -> void:
	if text.strip_edges() == "" or text.to_lower() == text.to_upper():
		return
	if not n.is_visible_in_tree():
		return
	var key := str(n.get_path())
	if _reported.has(key):
		return
	_reported[key] = true
	_log("untranslated: %s = \"%s\"" % [key, text])