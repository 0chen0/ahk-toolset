; �ļ������� ANSI ����, �������Ļ�������

; ������ָ��
; "D:\Mine\Tools\ahk-toolset\compile\Compiler\Ahk2Exe.exe" /in "D:\Mine\Tools\ahk-toolset\code\main.ahk" /out "D:\Mine\Tools\ahk-toolset\compile\build\ahk-toolset.exe" /icon "D:\Mine\Tools\ahk-toolset\compile\czh.ico"

; ���������ļ���, ����Ҫ���û�������"MyCustomization"Ϊ"F:\0"
; EnvGet, CurPath, MyCustomization
toolsetRoot = %A_ScriptDir%\..\..
EnvSet, toolsetRoot, %toolsetRoot%

; ӡ��ʼ�(��ENScript.exe)
Evernote = %A_ScriptDir%\..\..\local\ENScript.exe - ��ݷ�ʽ.lnk

; Notepad++(�Դ�)
; Notepad = %CurPath%\software\Notepad++

; �ȸ������
Chrome = %A_ScriptDir%\..\..\local\chrome.exe - ��ݷ�ʽ.lnk

; Snipaste��ͼ(��Snipaste.exe)
; EnvGet, tmpLOCALAPPDATA, LOCALAPPDATA
; Snipaste = %tmpLOCALAPPDATA%\Microsoft\WindowsApps
Snipaste = %A_ScriptDir%\..\..\local\Snipaste.exe - ��ݷ�ʽ.lnk

