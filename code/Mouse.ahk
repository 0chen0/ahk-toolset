

; ------------------------------------ Begin
; Dip	   -> F22
; XButton1 -> F23
; XButton2 -> F24
; ------------------------------------ End

; =================�����ҹ�
F24 & WheelDown::
		Loop 3
			Click WheelRight
		Return
; =================�������
F24 & WheelUp::
		Loop 3
			Click WheelLeft
		Return

; =================����
F24 & LButton Up::
		SendInput, {AltDown}{Left}{AltUp}
		Return
; =================ǰ��
F24 & RButton Up::
		SendInput, {AltDown}{Right}{AltUp}
		Return

; =================�����ö�
F23 & MButton Up::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinSet, AlwaysOnTop, Toggle, A
		Return

; =================������С��
F23 & LButton Up::
		WinGetTitle, cur_title, A
		If (!cur_title) {
			return
		}
		WinMinimize, A
		Return

; =================�رմ���
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
			WinMenuSelectItem, A, , �ļ�(F), �ر�(C)
			return
		}
		WinClose, A
		return
