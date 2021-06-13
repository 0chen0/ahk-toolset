

F24 & WheelDown::
	Loop 3
		Click WheelRight
	Return
F24 & WheelUp::
	Loop 3
		Click WheelLeft
	Return

; =================窗口置顶
F24 & MButton::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinSet, AlwaysOnTop, Toggle, A
		Return

; =================窗口最小化
F24 & LButton::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinMinimize, A
		Return

; =================关闭窗口
F24 & RButton::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinGet, pName, ProcessName, A
		If (pName=="devenv.exe" || pName=="SumatraPDF-no-MUPDF.exe" || pName=="QQ.exe")
		{
			return
		}
		If (pName == "chrome.exe" || pName == "firefox.exe" || pName == "Code.exe")
		{
			Send, ^w
			return
		}
		If (pName == "notepad++.exe")
		{
			WinMenuSelectItem, A, , 文件(F), 关闭(C)
			return
		}
		WinClose, A
		return
