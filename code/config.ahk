; 文件编码用 ANSI 编码, 否则中文会有乱码

; 编译用指令
; "D:\Mine\Tools\ahk-toolset\compile\Compiler\Ahk2Exe.exe" /in "D:\Mine\Tools\ahk-toolset\code\main.ahk" /out "D:\Mine\Tools\ahk-toolset\compile\build\ahk-toolset.exe" /icon "D:\Mine\Tools\ahk-toolset\compile\czh.ico"

; 工具所在文件夹, 这里要设置环境变量"MyCustomization"为"F:\0"
; EnvGet, CurPath, MyCustomization
toolsetRoot = %A_ScriptDir%\..\..
EnvSet, toolsetRoot, %toolsetRoot%

; 印象笔记(到ENScript.exe)
Evernote = %A_ScriptDir%\..\..\local\ENScript.exe - 快捷方式.lnk

; Notepad++(自带)
; Notepad = %CurPath%\software\Notepad++

; 谷歌浏览器
Chrome = %A_ScriptDir%\..\..\local\chrome.exe - 快捷方式.lnk

; Snipaste截图(到Snipaste.exe)
; EnvGet, tmpLOCALAPPDATA, LOCALAPPDATA
; Snipaste = %tmpLOCALAPPDATA%\Microsoft\WindowsApps
Snipaste = %A_ScriptDir%\..\..\local\Snipaste.exe - 快捷方式.lnk

