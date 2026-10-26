extends RefCounted

## Exact dialogue text from zip_dialogue.dialogue -> Traditional Chinese.
const LINES := {
	"Acquired Datalens!": "已獲得數據透鏡！",
	"Acquired Phone!": "已獲得手機！",
	"A [wave amp=50.0 freq=-5.0 connected=1]strange[/wave] looking donut.": "一個[wave amp=50.0 freq=-5.0 connected=1]奇怪[/wave]的甜甜圈。",
	"eat it?": "要吃掉它嗎？",
	"no": "不要",
	"okay": "好",
	"[shake rate=20.0 level=5]it taste like peas[speed=0.1]...[/speed][/shake]": "[shake rate=20.0 level=5]嚐起來像豌豆[speed=0.1]……[/speed][/shake]",
	"I'm a cube.": "我是一個方塊。",
	"But not just any cube. I'm a special cube!": "但我可不是普通的方塊，我是特別的方塊！",
	"Thank you for bringing me home! I cannot believe you hauled me across this entire map.": "謝謝你把我帶回家！真不敢相信你把我一路扛過整張地圖。",
	"I don't know how I would've gotten here without you. Why did you bring me along?": "沒有你我根本不可能到這裡。你為什麼要帶我一起？",
	"You looked like you needed help.": "你看起來好像需要幫忙。",
	"Thank you for looking out for cubes like me.": "謝謝你關照像我這樣的方塊。",
	"You seemed extra clickable today.": "你今天好像特別愛點擊。",
	"So true bestie": "說得對，好朋友！",
	"Hey there! my name is Zip.": "嗨！我叫 Zip。",
	"You look like you just woke from a [i]deep[/i] sleep!": "你看起來像是剛從[i]深度[/i]睡眠中醒來！",
	"There’s just a few things you gotta know about this place. Looks like you already discovered that you can [color=green]jump[/color] with [action=jump]!": "這裡有幾件事你得知道。看來你已經發現可以用 [color=green]跳躍[/color] 配合 [action=jump] 了！",
	"Be sure to hold the jump button to get the most height you can out of it.": "記得按住跳躍鍵，才能跳得最高。",
	"You can also zoom in using [action=zoom_in], and zoom out using [action=zoom_out]!": "你也可以用 [action=zoom_in] 放大視角，用 [action=zoom_out] 縮小視角！",
	"And remember, play at your own pace!": "記得，按照你自己的節奏玩就好！",
	"This is a magnet wall.": "這是一面磁力牆。",
	"You see, when you’re a marble… you’re [i]incredibly[/i] magnetic.": "你看，當你變成彈珠的時候……你會變得[i]非常[/i]有磁性。",
	"Press [action=do_marble] to [color=green]toggle marble mode[/color]! You’ll be on a roll in no time.": "按下 [action=do_marble] 來 [color=green]切換彈珠模式[/color]！你很快就能順暢地行動了。",
	"If you find wall movement to be unexpected, there's an alternate directional mapping in the [color=purple]Controls Settings![/color]": "如果你覺得牆面上的移動不太對勁，可以在 [color=purple]操作設定[/color] 裡找到另一種方向對應！",
	"Would you like me to toggle it for you?": "要我幫你切換嗎？",
	"Would you like me to toggle the directional mapping setting?": "要我幫你切換方向對應設定嗎？",
	"Yes": "好",
	"Set to [b][color=purple]Camera Relative[/color][/b]": "已設為 [b][color=purple]相對鏡頭[/color][/b]",
	"Set to [b][color=purple]Surface Fixed[/color][/b]": "已設為 [b][color=purple]固定表面[/color][/b]",
	"If it still doesn't feel right, I can also make your input direction visible while magnetized.": "如果還是不順手，我也可以在磁化時顯示你的輸入方向。",
	"Sure": "好啊",
	"I set Marble Arrow Enabled to [color=green]true[/color].": "我已將彈珠箭頭設為 [color=green]開啟[/color]。",
	"You can disable this anytime in the [color=purple]Accesibility Settings[/color].": "你隨時可以在 [color=purple]輔助功能設定[/color] 中關閉它。",
	"No.": "不用。",
	"No thanks.": "不用了，謝謝。",
	"If you chain a series of jumps together while you’re a marble, you will jump higher and higher!": "當你變成彈珠時，如果連續跳躍，就會越跳越高！",
	"Use this information to escae the pull of magnets!": "利用這個資訊來擺脫磁力的吸引！",
	"Hey I forgot to mention...": "嘿，我忘了提一件事……",
	"When you're going [i]really[/i] fast as marble, try [color=green]unmarbling[/color] using [action=do_marble] to take tighter corners.": "當你以彈珠形態[i]非常[/i]快速移動時，試試用 [action=do_marble] 來 [color=green]解除彈珠形態[/color]，這樣就能轉更小的彎。",
	"[tornado radius=2.0 freq=3.0 connected=1]Buuuut,[/tornado] you will slowly lose speed, so don't stay as a guy forever.": "[tornado radius=2.0 freq=3.0 connected=1]不過，[/tornado]你的速度會慢慢下降，所以別一直當個人太久。",
	"You have now acquired the [color=light_blue]Data Lens[/color]!": "你已獲得 [color=light_blue]數據透鏡[/color]！",
	"You can access the [color=light_blue]Data Lens[/color] by opening it in the taskbar in the bottom left. [color=green]Click once[/color] to free your cursor and open the taskbar!": "你可以在左下角的工作列中打開 [color=light_blue]數據透鏡[/color]。[color=green]點擊一次[/color]即可釋放游標並打開工作列！",
	"The [color=light_blue]Data Lens[/color] reveals secrets behind it that cannot normally be seen - objects that are [color=turquoise][b]invisible[/b][/color] unless seen through its frame.": "[color=light_blue]數據透鏡[/color]能揭示平常看不見的秘密——那些[color=turquoise][b]隱形[/b][/color]的物體，只有透過它的框架才看得到。",
	"You can drag and resize the [color=light_blue]Data Lens[/color] window to get a better look!": "你可以拖動並調整 [color=light_blue]數據透鏡[/color] 視窗的大小，看得更清楚！",
	"What a strange land!": "好奇怪的地方！",
	"It looks... strangely familiar...": "看起來……莫名地眼熟……",
	"Do you remember this place?": "你還記得這個地方嗎？",
	"I've seen it before": "我以前來過",
	"uhh": "呃……",
	"Don't worry about it!": "別擔心！",
	"Hey thanks for playing our demo!": "嘿，謝謝你玩我們的試玩版！",
	"That's pretty much everything we can show you for now...": "目前我們能展示的大概就這些了……",
	"But you're welcome to stick around and keep exploring!": "但你可以繼續留下來探索！",
	"There may be some secrets you missed. ;)": "可能還有你錯過的秘密哦 ;)",
	"I'll leave you with one more tip:": "最後再給你一個小提示：",
	"If you jump while holding [action=do_marble], you'll perform a long jump!": "如果你按住 [action=do_marble] 跳躍，就會做出跳遠！",
	"You can even do it in the air!": "你甚至可以在空中做！",
	"Have fun!~": "玩得開心！~",
	"You seem like you enjoy breaking the rules...": "你好像很喜歡打破規則……",
	"I have another tip for you.": "我還有一個小提示給你。",
	"If you do a really short jump, you'll [color=light_blue]b[/color] able to strafe around in the air like crazy!": "如果你做一次很短的跳躍，就能[color=light_blue]在空中[/color]瘋狂地左右橫移！",
	"I call it [color=light_blue]b-hopping[/color]! What do u think?": "我把它叫做 [color=light_blue]b-hopping[/color]！你覺得怎麼樣？",
	"I feel like it's been done before...": "我覺得這招以前就有人做過了……",
	"Oh... :L": "喔……:L",
	"Very cool!": "很酷！",
	"Thanks I invented it.": "謝謝，這是我發明的。",
	"Heyyyy...": "欸……",
	"You know that wooden box you just touched?": "你剛才碰到的那個木箱，你知道吧？",
	"Don't worry about it. It didn't do anything.": "別擔心，它沒做什麼。",
	"Hold on!": "等等！",
	"It actually does do something.": "其實它確實有作用。",
	"Please explain.": "請解釋一下。",
	"The box transferred a special power to you.": "那個箱子把一種特殊能力傳給了你。",
	"You can now click and drag yourself!": "現在你可以點擊並拖動自己了！",
	"Careful not to get hurt!": "小心別受傷！",
	"Okay thank you Zip!": "好，謝謝你 Zip！",
	"No problemo! Always happy to help!": "沒問題！我隨時樂意幫忙！",
}


## Translates a DialogueResource in place, once per resource.
static func translate_resource(res: Resource) -> void:
	if res == null or res.has_meta("snaptic_zh_done"):
		return
	res.set_meta("snaptic_zh_done", true)
	var lines = res.get("lines")
	if not lines is Dictionary:
		print("SNAPTIC-Chinese: dialogue resource has no 'lines' dictionary; not translated")
		return
	var hits := 0
	for id in lines:
		var line = lines[id]
		if not line is Dictionary or not line.has("text"):
			continue
		var text = line["text"]
		if not text is String or text == "":
			continue
		if LINES.has(text):
			line["text"] = LINES[text]
			hits += 1
		else:
			print("SNAPTIC-Chinese: no translation for: \"%s\"" % text)
	print("SNAPTIC-Chinese: dialogue %s: %d lines translated" % [res.resource_path, hits])