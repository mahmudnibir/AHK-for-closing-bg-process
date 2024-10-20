; This part ensures the script always runs as admin
#Requires AutoHotkey v1.1.26+
if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}

!+d::  ; Alt + Shift + D to close Dragon NaturallySpeaking and all related processes
    Run, TaskKill /F /IM "dragon*" /T,, Hide  ; Closes all processes starting with "dragon"
    return

!+r::  ; Alt + Shift + R to reopen Dragon NaturallySpeaking and enable microphone
    Run, "C:\Program Files (x86)\Nuance\NaturallySpeaking15\Program\natspeak.exe"  ; Adjust the path if needed
    Sleep, 5000  ; Wait 5 seconds for Dragon to fully start (adjust if necessary)
    Send, {NumpadAdd}  ; Toggle the microphone on (NumPad+ is the default hotkey)
    return
