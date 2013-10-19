;Display clipboard contents
#SingleInstance, Off
#NoTrayIcon
Gui, Add, Edit,, % Clipboard
Gui, Add, Picture,, % Clipboard
Gui, Add, Edit,, % ClipboardAll
Gui, Add, Text, ys,
Gui, Show,, Clipboard Contents
Gui +Resize
WinWait, Clipboard Contents
WinActivate, Clipboard Contents
return

GuiClose:
ExitApp