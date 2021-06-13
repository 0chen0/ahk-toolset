
; =================窗口间跳转(非隐藏)

; A ----------------------------------------------------------
; 清空组
<^<#<!A::
		MarkWinList_A := "MarkWinList_A_" . A_Now
		Return

; 添加窗口到组中
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

; 窗口切换
F22::
		IfWinActive, ahk_group %MarkWinList_A%
		{
			; 获取组中下一个窗口, 如果是skip窗口则跳转至tmp窗口
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
			; 切换到组中第一个窗口
			GroupActivate, %MarkWinList_A%
			; 记下当前窗口为skip窗口
			WinGet, MakrWin_InPoint_A, ID, ahk_group %MarkWinList_A%
		}
		Return

; S ----------------------------------------------------------
; 清空组
<^<#<!S::
		MarkWinList_S := "MarkWinList_S_" . A_Now
		Return

; 添加窗口到组中
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

; 窗口切换
~LShift & CapsLock::
		IfWinActive, ahk_group %MarkWinList_S%
		{
			; 获取组中下一个窗口, 如果是skip窗口则跳转至tmp窗口
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
			; 切换到组中第一个窗口
			GroupActivate, %MarkWinList_S%
			; 记下当前窗口为skip窗口
			WinGet, MakrWin_InPoint_S, ID, ahk_group %MarkWinList_S%
		}
		Return

; W ----------------------------------------------------------
; 清空组
<^<#<!W::
		MarkWinList_W := "MarkWinList_W_" . A_Now
		Return

; 添加窗口到组中
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

; 窗口切换
CapsLock & Tab::
		IfWinActive, ahk_group %MarkWinList_W%
		{
			; 获取组中下一个窗口, 如果是skip窗口则跳转至tmp窗口
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
			; 切换到组中第一个窗口
			GroupActivate, %MarkWinList_W%
			; 记下当前窗口为skip窗口
			WinGet, MakrWin_InPoint_W, ID, ahk_group %MarkWinList_W%
		}
		Return

; X ----------------------------------------------------------
; 清空组
<^<#<!X::
		MarkWinList_X := "MarkWinList_X_" . A_Now
		Return

; 添加窗口到组中
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

; 窗口切换
LWin & CapsLock::
		IfWinActive, ahk_group %MarkWinList_X%
		{
			; 获取组中下一个窗口, 如果是skip窗口则跳转至tmp窗口
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
			; 切换到组中第一个窗口
			GroupActivate, %MarkWinList_X%
			; 记下当前窗口为skip窗口
			WinGet, MakrWin_InPoint_X, ID, ahk_group %MarkWinList_X%
		}
		Return
