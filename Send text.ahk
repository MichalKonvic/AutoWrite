;Created by MichalKonvic
;2021
#SingleInstance Force
#NoEnv
#NoTrayIcon
    Gui -MinimizeBox -SysMenu
    Gui Color, 0x020A48
    Gui Add, Edit, x0 y0 w500 h300 +Multi HScroll vEDITTEXT
    Gui Add, Hotkey, x505 y10 w90 h20 vHotkey gHotkeyEvent
    Gui Add, Button, gExit x505 y275 w90 h20, Exit
    Gui Show, w600 h300, Text Typer
Return ; end of auto-execute section
GuiEscape:
GuiClose:
ExitApp

Exit:
ExitApp
Return

HotkeyEvent:
    Sleep 600
    Hotkey, %Hotkey% Up,SendText
Return

SendText:
    Gui, Submit, NoHide
    send %EDITTEXT%
Return
