

; XButton1 Up::
XButton1 & LButton::
	SendInput, {AltDown}{Left}{AltUp}
	Return
XButton1 & WheelDown::
	Loop 3
		Click WheelRight
	Return
XButton1 & WheelUp::
	Loop 3
		Click WheelLeft
	Return

; =================关闭窗口
XButton1 & RButton::
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