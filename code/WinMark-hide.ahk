
; ~~~~~~~~~~~~~~~~~~~~~~~~~~	; 退出操作
OnExit, ExitScript
return
ExitScript:
WinShow, ahk_id %MarkWin_1%
WinShow, ahk_id %MarkWin_2%
WinShow, ahk_id %MarkWin_3%
WinShow, ahk_id %MarkWin_4%
WinShow, ahk_id %MarkWin_5%

ExitApp  ; Do a true exit.
; ~~~~~~~~~~~~~~~~~~~~~~~~~~

; =================窗口间跳转(隐藏)
; --1
<^<#<!Numpad1::
	WinGetTitle, cur_title, A
	If (!cur_title)
	{
		return
	}
	WinGet, cur_win, ID, A
	WinShow, ahk_id %MarkWin_1%
	MarkWin_1 = %cur_win%
	return
~LButton & F1::
~LCtrl & F24::
	IfWinActive, ahk_id %MarkWin_1% 
	{
		WinHide, ahk_id %MarkWin_1%
		WinActivate, ahk_id %MarkWin_Tmp_1%
	} Else {
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			WinGet, MarkWin_Tmp_1, ID, A
		}
		WinShow, ahk_id %MarkWin_1%
		WinActivate, ahk_id %MarkWin_1%
	}
	return

; --2
<^<#<!Numpad2::
	WinGetTitle, cur_title, A
	If (!cur_title)
	{
		return
	}
	WinGet, cur_win, ID, A
	WinShow, ahk_id %MarkWin_2%
	MarkWin_2 = %cur_win%
	return
~LButton & F2::
~LShift & F24::
	IfWinActive, ahk_id %MarkWin_2% 
	{
		WinHide, ahk_id %MarkWin_2%
		WinActivate, ahk_id %MarkWin_Tmp_2%
	} Else {
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			WinGet, MarkWin_Tmp_2, ID, A
		}
		WinShow, ahk_id %MarkWin_2%
		WinActivate, ahk_id %MarkWin_2%
	}
	return

; --3
<^<#<!Numpad3::
	WinGetTitle, cur_title, A
	If (!cur_title)
	{
		return
	}
	WinGet, cur_win, ID, A
	WinShow, ahk_id %MarkWin_3%
	MarkWin_3 = %cur_win%
	return
~LButton & F3::
~LAlt & F24::
	IfWinActive, ahk_id %MarkWin_3% 
	{
		WinHide, ahk_id %MarkWin_3%
		WinActivate, ahk_id %MarkWin_Tmp_3%
	} Else {
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			WinGet, MarkWin_Tmp_3, ID, A
		}
		WinShow, ahk_id %MarkWin_3%
		WinActivate, ahk_id %MarkWin_3%
	}
	return

; --4
<^<#<!Numpad4::
	WinGetTitle, cur_title, A
	If (!cur_title)
	{
		return
	}
	WinGet, cur_win, ID, A
	WinShow, ahk_id %MarkWin_4%
	MarkWin_4 = %cur_win%
	return
~LButton & F4::
~LWin & F24::
	IfWinActive, ahk_id %MarkWin_4% 
	{
		WinHide, ahk_id %MarkWin_4%
		WinActivate, ahk_id %MarkWin_Tmp_4%
	} Else {
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			WinGet, MarkWin_Tmp_4, ID, A
		}
		WinShow, ahk_id %MarkWin_4%
		WinActivate, ahk_id %MarkWin_4%
	}
	return

; --5
<^<#<!Numpad5::
	WinGetTitle, cur_title, A
	If (!cur_title)
	{
		return
	}
	WinGet, cur_win, ID, A
	WinShow, ahk_id %MarkWin_5%
	MarkWin_5 = %cur_win%
	return
~LButton & F5::
CapsLock & F24::
	IfWinActive, ahk_id %MarkWin_5% 
	{
		WinHide, ahk_id %MarkWin_5%
		WinActivate, ahk_id %MarkWin_Tmp_5%
	} Else {
		WinGetTitle, cur_title, A
		If (cur_title)
		{
			WinGet, MarkWin_Tmp_5, ID, A
		}
		WinShow, ahk_id %MarkWin_5%
		WinActivate, ahk_id %MarkWin_5%
	}
	return
