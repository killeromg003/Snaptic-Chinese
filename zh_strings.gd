extends RefCounted

## Exact English texts (whole label, trimmed) -> Simplified Chinese.
const TEXT := {
 "Snaptic OS": "Snaptic 系統",
 "Respawn": "復活",
 "Options": "選項",
 "Resume": "繼續",
 "Title Screen": "標題畫面",
 "Close": "關閉",
 "Back": "返回",
 "Restore ALL Defaults": "全部恢復預設",
 "Restore Default Button Mappings": "恢復預設按鍵映射",

 "Sound": "聲音",
 "Camera": "鏡頭",
 "Display": "顯示",
 "Controls": "操作",
 "Accessibility": "輔助功能",

 "Master Volume": "主音量",
 "Music Volume": "音樂音量",
 "Sfx Volume": "音效音量",

 "Camera Smoothing": "鏡頭平滑",
 "Smoothed": "平滑",
 "Stiff": "僵硬",
 "Camera Invert X": "鏡頭 X 軸反轉",
 "Camera Invert Y": "鏡頭 Y 軸反轉",
 "Autocamera On Mouse Free": "滑鼠自由時自動鏡頭",
 "Autocamera On No Input": "無輸入時自動鏡頭",
 "Camera FOV": "鏡頭視野 (FOV)",
 "Camera Look Sensitivity:": "鏡頭靈敏度：",
 "Joystick": "手柄",
 "Button": "按鍵",
 "Mouse": "滑鼠",

 "Window Mode": "視窗模式",
 "Windowed": "視窗化",
 "Borderless": "無邊框",
 "Fullscreen": "全螢幕",
 "Vsync": "垂直同步",
 "Off": "關閉",
 "On": "開啟",
 "Adaptive": "自適應",
 "Max Fps": "最大幀率",
 "uncapped": "不限制",
 "Pixelization": "像素化",
 "Datamoshing": "資料抹除特效",

 "Button Prompt Style": "按鍵提示樣式",
 "Auto": "自動",
 "Keyboard Mouse": "鍵盤滑鼠",
 "Gamepad": "手把",
 "Gamepad (Xbox)": "手把 (Xbox)",
 "Gamepad (PlayStation)": "手把 (PlayStation)",
 "Gamepad (Switch)": "手把 (Switch)",
 "Gamepad (Steam Deck)": "手把 (Steam Deck)",
 "Gamepad (Steam Controller)": "手把 (Steam Controller)",
 "Wall Mapping": "牆面操作方式",
 "Camera Relative": "相對鏡頭",
 "Surface Fixed": "固定表面",
 "Carry Controls Around Curves": "彎道時保持操作",
 "Gamepad Cursor Speed": "手把遊標速度",

 "Screen Shake Scale": "螢幕抖動強度",
 "Speed Lines": "速度線",
 "Impact Frames": "衝擊幀",
 "Marble Arrow": "彈珠箭頭",
 "Dialogue Speed": "對話速度",
 "Dialogue Auto Advance": "對話自動前進",
}

## Text inside a RichTextLabel (BBCode tags are left alone).
const RICH := {
 "Loading...": "載入中...",
}


static func zh(text: String) -> String:
 var key := text.strip_edges()
 if key != "" and TEXT.has(key):
 return text.replace(key, TEXT[key])
 return text


static func in_rich(text: String) -> String:
 var out := text
 for key in RICH:
 out = out.replace(key, RICH[key])
 return out