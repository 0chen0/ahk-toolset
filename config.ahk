; �ļ������� ANSI ����, �������Ļ�������

; ������ָ��
; "F:\0\tool\ahk-toolset\compile\Compiler\Ahk2Exe.exe" /in "F:\0\tool\ahk-toolset\main.ahk" /out "F:\0\tool\ahk-toolset\compile\build\ahk-toolset.exe" /icon "F:\0\tool\ahk-toolset\compile\czh.ico"

; ���������ļ���, ����Ҫ���û�������"MyCustomization"Ϊ"F:\0"
; EnvGet, CurPath, MyCustomization
toolsetRoot = %A_ScriptDir%\..\..

; ӡ��ʼ�(��ENScript.exe)
Evernote = D:\App\Evernote

; Notepad++(�Դ�)
; Notepad = %CurPath%\software\Notepad++

; �ȸ������
Chrome = C:\Program Files (x86)\Google\Chrome\Application

; Snipaste��ͼ(��Snipaste.exe)
EnvGet, tmpLOCALAPPDATA, LOCALAPPDATA
Snipaste = %tmpLOCALAPPDATA%\Microsoft\WindowsApps


EnvSet, toolsetRoot, %toolsetRoot%
