

; ------------------------------------ Begin
; Dip	   -> F22
; XButton1 -> F23
; XButton2 -> F24
; ------------------------------------ End

; =================滚轮右滚
F24 & WheelDown::
		Loop 3
			Click WheelRight
		Return
; =================滚轮左滚
F24 & WheelUp::
		Loop 3
			Click WheelLeft
		Return

; =================后退
F24 & LButton Up::
		SendInput, {AltDown}{Left}{AltUp}
		Return
; =================前进
F24 & RButton Up::
		SendInput, {AltDown}{Right}{AltUp}
		Return

; =================窗口置顶
F23 & MButton Up::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinSet, AlwaysOnTop, Toggle, A
		Return

; =================窗口最小化
F23 & LButton Up::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinMinimize, A
		Return

; =================关闭窗口
F23 & RButton Up::
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
