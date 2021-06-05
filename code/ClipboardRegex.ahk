
CapsLock & V::
	filename = %A_ScriptDir%\..\..\code\script\ClipboardRegex\clipboard.txt
	
	wfd := FileOpen(filename, "w")
	string := clipboard
	wfd.Write(string)
	wfd.Close()
	
	InputBox, OutputVar, |  ÎÄ±¾Ìæ»»  |, , , 320, 97, 700, 500
	commands=
	(join&
		python "%A_ScriptDir%\..\..\code\script\ClipboardRegex\main_ClipboardRegex.py" "%OutputVar%"`n
	)
	RunWait, cmd /c %commands%  
	
	rfd := FileOpen(filename, "r")
	OutputVar := rfd.Read()
	rfd.Close()
	clipboard := OutputVar
	return
