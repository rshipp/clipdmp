;Clipboard dumper
#SingleInstance, Off
#NoTrayIcon
TimeStamp = %A_Now%
IfExist, clipdumps {
  IfExist, clipdumps\%TimeStamp%.clpdmp {
    Sleep, 1000
    FileAppend, % ClipboardAll, clipdumps\%A_Now%.clpdmp
  } IfNotExist, clipdumps\%TimeStamp%.clpdmp {
    FileAppend, % ClipboardAll, clipdumps\%TimeStamp%.clpdmp
  } IfExist, clipdumps\%TimeStamp%.clpdmp.txt {
    Sleep, 1000
    FileAppend, % Clipboard, clipdumps\%A_Now%.clpdmp.txt
  } IfNotExist, clipdumps\%TimeStamp%.clpdmp.txt {
      FileAppend, % Clipboard, clipdumps\%TimeStamp%.clpdmp.txt
  }
} IfNotExist, clipdumps {
  FileCreateDir, clipdumps
  FileAppend, % ClipboardAll, clipdumps\%TimeStamp%.clpdmp
  FileAppend, % Clipboard, clipdumps\%TimeStamp%.clpdmp.txt
}
ExitApp
