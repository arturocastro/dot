; Win+e launches XYplorer if available

xydefault := "C:\\Program Files\\MultiCommander (x64)\\MultiCommander.exe"

#if FileExist(xydefault)
	#e::
		Run %xydefault%, , , NewPID
		return
		
		
^!t::
Run %comspec% /k
return

#+Enter::
Run C:\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -, , , NewPID
return


#+l::
Run nircmd cmdwait 1000 monitor off, , , NewPID
Run nircmd lockws, , , NewPID
return


!+r::
Run C:\Users\arturo.castro\Desktop\a.ahk
return

!+e::
Run C:\Users\arturo.castro\Desktop\b.ahk
return
