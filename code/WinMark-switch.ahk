
; =================���ڼ���ת(������)

; A ----------------------------------------------------------
; �����
<^<#<!A::
		MarkWinList_A := "MarkWinList_A_" . A_Now
		Return

; ��Ӵ��ڵ�����
CapsLock & A::
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			If (!MarkWinList_A)
			{
				MarkWinList_A := "MarkWinList_A_" . A_Now
			}
			WinGet, cur_win, ID, A
			GroupAdd, %MarkWinList_A%, ahk_id %cur_win%
		}
		Return

; �����л�
F22::
		IfWinActive, ahk_group %MarkWinList_A%
		{
			; ��ȡ������һ������, �����skip��������ת��tmp����
			WinGet, next_win, IDLast, ahk_group %MarkWinList_A%
			If(next_win == MakrWin_InPoint_A && WinExist("ahk_id" . MarkWin_Tmp_A))
			{
				WinActivate, ahk_id %MarkWin_Tmp_A%
			} else {
				GroupActivate, %MarkWinList_A%
			}
		} else {
			WinGetTitle, cur_title, A
			If (cur_title) {
				WinGet, MarkWin_Tmp_A, ID, A
			}
			; �л������е�һ������
			GroupActivate, %MarkWinList_A%
			; ���µ�ǰ����Ϊskip����
			WinGet, MakrWin_InPoint_A, ID, ahk_group %MarkWinList_A%
		}
		Return

; S ----------------------------------------------------------
; �����
<^<#<!S::
		MarkWinList_S := "MarkWinList_S_" . A_Now
		Return

; ��Ӵ��ڵ�����
CapsLock & S::
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			If (!MarkWinList_S)
			{
				MarkWinList_S := "MarkWinList_S_" . A_Now
			}
			WinGet, cur_win, ID, A
			GroupAdd, %MarkWinList_S%, ahk_id %cur_win%
		}
		Return

; �����л�
~LShift & CapsLock::
		IfWinActive, ahk_group %MarkWinList_S%
		{
			; ��ȡ������һ������, �����skip��������ת��tmp����
			WinGet, next_win, IDLast, ahk_group %MarkWinList_S%
			If(next_win == MakrWin_InPoint_S && WinExist("ahk_id" . MarkWin_Tmp_S))
			{
				WinActivate, ahk_id %MarkWin_Tmp_S%
			} else {
				GroupActivate, %MarkWinList_S%
			}
		} else {
			WinGetTitle, cur_title, A
			If (cur_title) {
				WinGet, MarkWin_Tmp_S, ID, A
			}
			; �л������е�һ������
			GroupActivate, %MarkWinList_S%
			; ���µ�ǰ����Ϊskip����
			WinGet, MakrWin_InPoint_S, ID, ahk_group %MarkWinList_S%
		}
		Return

; W ----------------------------------------------------------
; �����
<^<#<!W::
		MarkWinList_W := "MarkWinList_W_" . A_Now
		Return

; ��Ӵ��ڵ�����
CapsLock & W::
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			If (!MarkWinList_W)
			{
				MarkWinList_W := "MarkWinList_W_" . A_Now
			}
			WinGet, cur_win, ID, A
			GroupAdd, %MarkWinList_W%, ahk_id %cur_win%
		}
		Return

; �����л�
CapsLock & Tab::
		IfWinActive, ahk_group %MarkWinList_W%
		{
			; ��ȡ������һ������, �����skip��������ת��tmp����
			WinGet, next_win, IDLast, ahk_group %MarkWinList_W%
			If(next_win == MakrWin_InPoint_W && WinExist("ahk_id" . MarkWin_Tmp_W))
			{
				WinActivate, ahk_id %MarkWin_Tmp_W%
			} else {
				GroupActivate, %MarkWinList_W%
			}
		} else {
			WinGetTitle, cur_title, A
			If (cur_title) {
				WinGet, MarkWin_Tmp_W, ID, A
			}
			; �л������е�һ������
			GroupActivate, %MarkWinList_W%
			; ���µ�ǰ����Ϊskip����
			WinGet, MakrWin_InPoint_W, ID, ahk_group %MarkWinList_W%
		}
		Return

; X ----------------------------------------------------------
; �����
<^<#<!X::
		MarkWinList_X := "MarkWinList_X_" . A_Now
		Return

; ��Ӵ��ڵ�����
CapsLock & X::
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			If (!MarkWinList_X)
			{
				MarkWinList_X := "MarkWinList_X_" . A_Now
			}
			WinGet, cur_win, ID, A
			GroupAdd, %MarkWinList_X%, ahk_id %cur_win%
		}
		Return

; �����л�
LWin & CapsLock::
		IfWinActive, ahk_group %MarkWinList_X%
		{
			; ��ȡ������һ������, �����skip��������ת��tmp����
			WinGet, next_win, IDLast, ahk_group %MarkWinList_X%
			If(next_win == MakrWin_InPoint_X && WinExist("ahk_id" . MarkWin_Tmp_X))
			{
				WinActivate, ahk_id %MarkWin_Tmp_X%
			} else {
				GroupActivate, %MarkWinList_X%
			}
		} else {
			WinGetTitle, cur_title, A
			If (cur_title) {
				WinGet, MarkWin_Tmp_X, ID, A
			}
			; �л������е�һ������
			GroupActivate, %MarkWinList_X%
			; ���µ�ǰ����Ϊskip����
			WinGet, MakrWin_InPoint_X, ID, ahk_group %MarkWinList_X%
		}
		Return
