; �ļ������� ANSI ����, �������Ļ�������???

; #NoEnv
#SingleInstance, Force
#WinActivateForce
SetWorkingDir %A_ScriptDir%

#Include config.ahk
#Include WinMark-hide.ahk
#Include WinMark-switch.ahk
#Include ClipboardRegex.ahk
#Include Mouse.ahk

; =================���μ�
CapsLock::
Insert::
LWin::
~LCtrl & CapsLock:: 
~LAlt & CapsLock::
CapsLock & LCtrl::
CapsLock & LAlt::
CapsLock & LShift::
CapsLock & LWin::
+Space::		; =================����ȫ����л�
		return

; =================ӡ��ʼ�
^Space::
		note := "intitle:TITLE  tag:TAG  created:day-5  updated:20141210`n--------------------------------------------------------------------------------`nintitle`t~ �Դ�, Ĭ���ѱʼ���,��ͷ�ӿո��Ϊ�ѱʼ�����`ntag`t~ @��ǩ��`nupdated`t~ u:����ʱ��`ncreated`t~ c:����ʱ��`nday-5`t��ʾ5��ǰ"
		InputBox, SEARCH, |  ӡ��ʼ�  |, %note%, , 430, 105, 650, 500
		SEARCH := RegExReplace(SEARCH, "^([^ @])", " intitle:$1")
		SEARCH := RegExReplace(SEARCH, "^@@|[ ]@@", " tag:΢��")
		SEARCH := RegExReplace(SEARCH, "^@|[ ]@", " tag:")
		SEARCH := RegExReplace(SEARCH, " u:", " updated:")
		SEARCH := RegExReplace(SEARCH, " c:", " created:")
		if (Strlen(SEARCH) != 0)
		{
		  run "%Evernote%" showNotes /q "%SEARCH%"
		}
		return

; =================��ݴ�
!Space::
		InputBox, OutputVar, |  ��ݴ�  |, , , 320, 97, 700, 500
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
		
; =================��ͼ
~LAlt & F1::
		; EnvGet, tmpLOCALAPPDATA, LOCALAPPDATA
		; run "%tmpLOCALAPPDATA%\Microsoft\WindowsApps\Snipaste.exe" snip -o pin
		run "%Snipaste%" snip -o pin
		return
				
; =================�򿪹ȸ������
<!NumpadEnter::
		run "%Chrome%",,nID
		WinWait, ahk_pid %nID%, , 2
;		;		#WinActivateForce
;		;		WinActivate
;				WinActivate, "�±�ǩҳ - Google Chrome"
;				WinSet, Top
		WinSet, AlwaysOnTop, On
		WinActivate
		WinSet, AlwaysOnTop, Off
		return

; =================��������
PrintScreen::SendInput, {Volume_Down}		; ������С
Pause::SendInput, {Volume_Up}			; ��������
; <#F8::SendInput, {Volume_Mute}		; ������/��

; =================


