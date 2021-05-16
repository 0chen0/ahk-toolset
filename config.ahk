; 文件编码用 ANSI 编码, 否则中文会有乱码

; 编译用指令
; "D:\Tools\ahk-toolset\compile\Compiler\Ahk2Exe.exe" /in "D:\Tools\ahk-toolset\main.ahk" /out "D:\Tools\ahk-toolset\compile\build\ahk-toolset.exe" /icon "D:\Tools\ahk-toolset\compile\czh.ico"

; 工具所在文件夹, 这里要设置环境变量"MyCustomization"为"F:\0"
; EnvGet, CurPath, MyCustomization
toolsetRoot = %A_ScriptDir%\..\..

; 印象笔记(到ENScript.exe)
Evernote = D:\App\Evernote

; Notepad++(自带)
; Notepad = %CurPath%\software\Notepad++

; 谷歌浏览器
Chrome = C:\Program Files (x86)\Google\Chrome\Application

; Snipaste截图(到Snipaste.exe)
EnvGet, tmpLOCALAPPDATA, LOCALAPPDATA
Snipaste = %tmpLOCALAPPDATA%\Microsoft\WindowsApps


EnvSet, toolsetRoot, %toolsetRoot%
