

F24 & WheelDown::
	Loop 3
		Click WheelRight
	Return
F24 & WheelUp::
	Loop 3
		Click WheelLeft
	Return

; =================�����ö�
F24 & MButton::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinSet, AlwaysOnTop, Toggle, A
		Return

; =================������С��
F24 & LButton::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinMinimize, A
		Return

; =================�رմ���
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
			WinMenuSelectItem, A, , �ļ�(F), �ر�(C)
			return
		}
		WinClose, A
		return
