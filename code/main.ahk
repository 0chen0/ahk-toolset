; 文件编码用 ANSI 编码, 否则中文会有乱码???

; #NoEnv
#SingleInstance, Force
#WinActivateForce
SetWorkingDir %A_ScriptDir%

#Include config.ahk
#Include WinMark-hide.ahk
#Include WinMark-switch.ahk
#Include ClipboardRegex.ahk
#Include Mouse.ahk

; =================屏蔽键
CapsLock::
Insert::
LWin::
~LCtrl & CapsLock:: 
~LAlt & CapsLock::
CapsLock & LCtrl::
CapsLock & LAlt::
CapsLock & LShift::
CapsLock & LWin::
+Space::		; =================屏蔽全半角切换
		return

; =================印象笔记
^Space::
		note := "intitle:TITLE  tag:TAG  created:day-5  updated:20141210`n--------------------------------------------------------------------------------`nintitle`t~ 自带, 默认搜笔记名,开头加空格改为搜笔记内容`ntag`t~ @标签名`nupdated`t~ u:更新时间`ncreated`t~ c:创建时间`nday-5`t表示5天前"
		InputBox, SEARCH, |  印象笔记  |, %note%, , 430, 105, 650, 500
		SEARCH := RegExReplace(SEARCH, "^([^ @])", " intitle:$1")
		SEARCH := RegExReplace(SEARCH, "^@@|[ ]@@", " tag:微信")
		SEARCH := RegExReplace(SEARCH, "^@|[ ]@", " tag:")
		SEARCH := RegExReplace(SEARCH, " u:", " updated:")
		SEARCH := RegExReplace(SEARCH, " c:", " created:")
		if (Strlen(SEARCH) != 0)
		{
		  run "%Evernote%" showNotes /q "%SEARCH%"
		}
		return

; =================快捷打开
!Space::
		InputBox, OutputVar, |  快捷打开  |, , , 320, 97, 700, 500
		if (Strlen(OutputVar) != 0)
		{
			commands=
			(join&
			 python "%A_ScriptDir%\..\..\code\script\QuickCmd\main_QuickCmd.py" "%OutputVar%"`n
			)
			Run, cmd /c %commands%  
			return
		}
		return
		
; =================截图
~LAlt & F1::
		; EnvGet, tmpLOCALAPPDATA, LOCALAPPDATA
		; run "%tmpLOCALAPPDATA%\Microsoft\WindowsApps\Snipaste.exe" snip -o pin
		run "%Snipaste%" snip -o pin
		return
				
; =================打开谷歌浏览器
<!NumpadEnter::
		run "%Chrome%",,nID
		WinWait, ahk_pid %nID%, , 2
;		;		#WinActivateForce
;		;		WinActivate
;				WinActivate, "新标签页 - Google Chrome"
;				WinSet, Top
		WinSet, AlwaysOnTop, On
		WinActivate
		WinSet, AlwaysOnTop, Off
		return

; =================音量设置
PrintScreen::SendInput, {Volume_Down}		; 音量减小
Pause::SendInput, {Volume_Up}			; 音量增大
; <#F8::SendInput, {Volume_Mute}		; 静音开/关

; =================


