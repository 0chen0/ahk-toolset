
; =================窗口间跳转(非隐藏)
; --A
~LButton & XButton2::
		WinGetTitle, cur_title, A
		If (!cur_title)
		{
			return
		}
		WinGet, MakrWin_A, ID, A
		return
XButton2::
		WinGet, cur_win, ID, A
		if (cur_win != MakrWin_A)
		{
			WinGetTitle, cur_title, A
			If (cur_title) {
				MarkWin_Tmp_A = %cur_win%
			}
			WinActivate, ahk_id %MakrWin_A%
		} Else {
			WinActivate, ahk_id %MarkWin_Tmp_A%
		}
		return
; --B
CapsLock & S::
		WinGetTitle, cur_title, A
		If (!cur_title)
		{
			return
		}
		WinGet, MakrWin_B, ID, A
		return
~LShift & CapsLock::
		WinGet, cur_win, ID, A
		if (cur_win != MakrWin_B)
		{
			WinGetTitle, cur_title, A
			If (cur_title) {
				MarkWin_Tmp_B = %cur_win%
			}
			WinActivate, ahk_id %MakrWin_B%
		} Else {
			WinActivate, ahk_id %MarkWin_Tmp_B%
		}
		return
; --C
CapsLock & W::
		WinGetTitle, cur_title, A
		If (!cur_title)
		{
			return
		}
		WinGet, MakrWin_C, ID, A
		return
CapsLock & Tab::
		WinGet, cur_win, ID, A
		if (cur_win != MakrWin_C)
		{
			WinGetTitle, cur_title, A
			If (cur_title) {
				MarkWin_Tmp_C = %cur_win%
			}
			WinActivate, ahk_id %MakrWin_C%
		} Else {
			WinActivate, ahk_id %MarkWin_Tmp_C%
		}
		return
; --D
CapsLock & X::
		WinGetTitle, cur_title, A
		If (!cur_title)
		{
			return
		}
		WinGet, MakrWin_D, ID, A
		return
~LWin & CapsLock::
		WinGet, cur_win, ID, A
		if (cur_win != MakrWin_D)
		{
			WinGetTitle, cur_title, A
			If (cur_title) {
				MarkWin_Tmp_D = %cur_win%
			}
			WinActivate, ahk_id %MakrWin_D%
		} Else {
			WinActivate, ahk_id %MarkWin_Tmp_D%
		}
		return

