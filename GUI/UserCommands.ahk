; Created by Asger Juul Brunshøj

; Note: Save with encoding UTF-8 with BOM if possible.
; I had issues with special characters like in ¯\_(ツ)_/¯ that wouldn't work otherwise.
; Notepad will save UTF-8 files with BOM automatically (even though it does not say so).
; Some editors however save without BOM, and then special characters look messed up in the AHK GUI.

; Write your own AHK commands in this file to be recognized by the GUI. Take inspiration from the samples provided here.
; List of categories
; SEARCH GOOGLE
; SEARCH OTHER THINGS
; LAUNCH WEBSITES AND PROGRAMS
; INTERACT WITH THIS AHK SCRIPT
; TYPE RAW TEXT
; OPEN FOLDERS
; MISCELLANEOUS

;-------------------------------------------------------------------------------
;;; SEARCH GOOGLE ;;;
;-------------------------------------------------------------------------------
if Pedersen = g%A_Space% ; Search Google
{
    gui_search_title = Google Search
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME&btnG=Search&oq=&gs_l=")
}
else if Pedersen = a%A_Space% ; Search Google for AutoHotkey related stuff
{
    gui_search_title = Autohotkey Google Search
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=autohotkey%20REPLACEME&btnG=Search&oq=&gs_l=")
}
else if Pedersen = l%A_Space% ; Search Google with ImFeelingLucky
{
    gui_search_title = I'm Feeling Lucky
    gui_search("http://www.google.com/search?q=REPLACEME&btnI=Im+Feeling+Lucky")
}
else if Pedersen = m%A_Space% ; Open more than one URL
{
    gui_search_title = Search multiple listed websites
    gui_search("https://www.google.com/search?&q=REPLACEME")
    gui_search("https://www.amazon.com/s?k=REPLACEME&redirectFromSmile=1")
    gui_search("https://www.youtube.com/results?search_query=REPLACEME")
}
else if Pedersen = x%A_Space% ; Search Google as Incognito
;   A note on how this works:
;   The function name "gui_search()" is poorly chosen.
;   What you actually specify as the parameter value is a command to run. It does not have to be a URL.
;   Before the command is run, the word REPLACEME is replaced by your input.
;   It does not have to be a search url, that was just the application I had in mind when I originally wrote it.
;   So what this does is that it runs chrome with the arguments "-incognito" and the google search URL where REPLACEME in the URL has been replaced by your input.
{
    gui_search_title = Google Search as Incognito
    gui_search("C:\Program Files\Google\Chrome\Application\chrome.exe -incognito https://www.google.com/search?safe=off&q=REPLACEME")
}


;-------------------------------------------------------------------------------
;;; SEARCH OTHER THINGS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = f%A_Space% ; Search Facebook
{
    gui_search_title = Search Facebook
    gui_search("https://www.facebook.com/search/results.php?q=REPLACEME")
}
else if Pedersen = y%A_Space% ; Search Youtube
{
    gui_search_title = Search Youtube
    gui_search("https://www.youtube.com/results?search_query=REPLACEME")
}
else if Pedersen = t%A_Space% ; Search torrent networks
{
    gui_search_title = Sharing is caring
    gui_search("https://kickass.to/usearch/REPLACEME")
}
else if Pedersen = spa ; Translate English to Spanish
{
    gui_search_title = English to Spanish
    gui_search("https://translate.google.com/#en/es/REPLACEME")
}
else if Pedersen = eng ; Translate Spanish to English
{
    gui_search_title = Spanish to English
    gui_search("https://translate.google.com/#en/es/REPLACEME")
}


;-------------------------------------------------------------------------------
;;; LAUNCH WEBSITES AND PROGRAMS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = / ; Go to subreddit. This is a quick way to navigate to a specific URL.
{
    gui_search_title := "/r/"
    gui_search("https://www.reddit.com/r/REPLACEME")
}
else if Pedersen = face ; facebook.com
{
    gui_destroy()
    run www.facebook.com
}
else if Pedersen = red ; reddit.com
{
    gui_destroy()
    run www.reddit.com
}
else if Pedersen = cal ; Google Calendar
{
    gui_destroy()
    run https://www.google.com/calendar
}
else if Pedersen = note ; Notepad
{
    gui_destroy()
    Run Notepad
}
else if Pedersen = maps ; Google Maps focused on the Technical University of Denmark, DTU
{
    gui_destroy()
    run "https://www.google.com/maps/@42.0902685`,-v88.353051`,12z"
}
else if Pedersen = inbox ; Open google inbox
{
    gui_destroy()
    run https://inbox.google.com/u/0/v
    ; run https://mail.google.com/mail/u/0/#inbox  ; Maybe you prefer the old gmail
}
else if Pedersen = mes ; Opens Facebook unread messages
{
    gui_destroy()
    run https://www.facebook.com/messages?filter=unread&action=recent-messages
}
else if Pedersen = url ; Open an URL from the clipboard (naive - will try to run whatever is in the clipboard)
{
    gui_destroy()
    run %ClipBoard%
}
else if Pedersen = chat ; Opens chatgpt
{
    gui_destroy()
    run https://chat.openai.com/
}
else if Pedersen = check ; opens to do list in checkvist
{
    gui_destroy()
    run https://checkvist.com/checklists/876069#
}
else if Pedersen = mind ; opens to do list in checkvist
{
    gui_destroy()
    run https://app.mindmup.com/files-gold.html
}
else if Pedersen = %A_Space%mind ; opens mindnump
{
    gui_destroy()
    run https://www.mindmup.com/tutorials/keyboard.htmlo
}
else if Pedersen = %A_Space%mind ; opens mindmup shortcuts
{
    gui_destroy()
    run https://www.mindmup.com/tutorials/keyboard.html
}
else if Pedersen = todo ; opens to do list in ticktick
{
    gui_destroy()
    run https://ticktick.com/webapp/#p/inbox/tasks
}
else if Pedersen = %A_Space%todo ; opens to do ticktick shortcuts
{
    gui_destroy()
    run https://ticktick.com/webapp/#settings/shortcuts
}
else if Pedersen = keyboard ; opens to do keyboard diagram
{
    gui_destroy()
    run https://app.diagrams.net/#G1KO8JrjISewijqD4I2V0WsTv1p6c8QwcE
}
else if Pedersen = repo ; opens up your github repos
{
    gui_destroy()
    run https://github.com/Anthonyae?tab=repositories
}
else if Pedersen = %A_Space%git ; opens up your github repos
{
    gui_destroy()
    run https://jdsalaro.com/blog/git-cheat-sheet/index.html
}

;-------------------------------------------------------------------------------
;;; INTERACT WITH THIS AHK SCRIPT ;;;
;-------------------------------------------------------------------------------
else if Pedersen = rel ; Reload this script
{
    gui_destroy() ; removes the GUI even when the reload fails
    Reload
}
else if Pedersen = dir ; Open the directory for this script
{
    gui_destroy()
    Run, %A_ScriptDir%
}
else if Pedersen = host ; Edit host script
{
    gui_destroy()
    codeLocation := "C:\Users\" A_UserName "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"
    script_location:= A_ScriptFullPath
    Run, %codeLocation% %script_location%
}
else if Pedersen = user ; Edit GUI user commands
{
    gui_destroy()
    codeLocation := "C:\Users\" A_UserName "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"
    run, %codeLocation% "%A_ScriptDir%\GUI\UserCommands.ahk"
}
else if Pedersen = test ; Edit GUI user commands
{
    gui_destroy()
    

    WinGet, chromeWindows, List, ahk_exe chrome.exe  ; Get a list of Chrome windows

; Split the string of window handles into an array
StringSplit, chromeWindowsArray, chromeWindows, %A_Space%

if (chromeWindowsArray.MaxIndex() > 0) {
    MsgBox, The first Chrome window handle is %chromeWindowsArray1%
} else {
    MsgBox, No Chrome windows found.
}

    tabList := ""  ; Variable to store the tab list
    MsgBox, chromeWindows: %chromeWindows%
    MsgBox, % chromeWindows[1]
    MsgBox, chromeWindowsA_index: %chromeWindows%%A_Index%
    MsgBox, chromeWindowsA_Index_again: chromeWindows%A_Index%
    WinGet, tabCountTest, Count, % "ahk_id " 132862
    MsgBox, test: %tabCountTest%
    Loop, % chromeWindows
    {
        chromeWindow := chromeWindows%A_Index%  ; Get the handle of each Chrome window

        ; Get the number of tabs in the current Chrome window
        WinGet, tabCount, Count, % "ahk_id " chromeWindow
        MsgBox, chromeWindow: %chromeWindow% 
        MsgBox, tabCount: %tabCount%

        ; Loop through each tab and retrieve the URL
        Loop, % tabCount
        {
            ; Get the URL of the current tab
            tabTitle := GetChromeTabTitle(chromeWindow, A_Index)

            ; Append the tab URL to the list
            tabList .= tabTitle "`n"
        }
    }

    MsgBox, % "List of Chrome tabs:`n`n" tabList  ; Display the tab list in a message box

    GetChromeTabTitle(windowHandle, tabIndex) {
        controlName := "Chrome_RenderWidgetHostHWND1"
        controlText := ""
        control := "ahk_id " windowHandle

        if DllCall("FindWindowEx", "Ptr", control, "Ptr", 0, "Str", controlName, "Ptr")
            if DllCall("SendMessage", "Ptr", control, "UInt", 0x133, "Ptr", tabIndex-1, "Ptr", 0, "Ptr")
                DllCall("SendMessage", "Ptr", control, "UInt", 0x100, "Ptr", 0x2D, "Ptr", 0, "Ptr")
                    controlText := DllCall("SendMessage", "Ptr", control, "UInt", 0xC, "Ptr", 0, "Ptr", 0, "Str")

        return controlText
    }


    

}



;-------------------------------------------------------------------------------
;;; TYPE RAW TEXT ;;;
;-------------------------------------------------------------------------------
else if Pedersen = @@ ; Email address
{
    gui_destroy()
    Send, Anthony.ae@outlook.com
}
else if Pedersen = name ; My name
{
    gui_destroy()
    Send, Anthony Alvarez
}
else if Pedersen = phone ; My phone number
{
    gui_destroy()
    SendRaw, +45-12345678
}
else if Pedersen = int ; LaTeX integral
{
    gui_destroy()
    SendRaw, \int_0^1  \; \mathrm{d}x\,
}
else if Pedersen = logo ; ¯\_(ツ)_/¯
{
    gui_destroy()
    Send ¯\_(ツ)_/¯
}
else if Pedersen = clip ; Paste clipboard content without formatting
{
    gui_destroy()
    SendRaw, %ClipBoard%
}


;-------------------------------------------------------------------------------
;;; OPEN FOLDERS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = down ; Downloads
{
    gui_destroy()
    run C:\Users\%A_Username%\Downloads
}
else if Pedersen = drop ; Dropbox folder (works when it is in the default directory)
{
    gui_destroy()
    run, C:\Users\%A_Username%\Dropbox\
}
else if Pedersen = rec ; Recycle Bin
{
    gui_destroy()
    Run ::{645FF040-5081-101B-9F08-00AA002F954E}
}
else if Pedersen = hbrep ; Folder:Reporting projects
{
    gui_destroy()
    ; run, "C:\Users\anthony\Dropbox (Happiest Baby`,` Inc)\Accounting\Reporting Projects"
    run C:\Users\%A_Username%\Dropbox (Happiest Baby`,` Inc)\Accounting\Reporting Projects
}
else if Pedersen = hbdec ; serial trace
{
    gui_destroy()
    run C:\Users\%A_Username%\Dropbox (Happiest Baby`,` Inc)\FloQast\FQ - Happiest Baby Inc\2022\12 - December\05 Fixed Assets\seria trace - updated as of 202306
}

;-------------------------------------------------------------------------------
;;; MISCELLANEOUS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = ping ; Ping Google
{
    gui_destroy()
    Run, cmd /K "ping www.google.com"
}
else if Pedersen = caps ; Ping Google
{
    gui_destroy()
    Input, SingleKey, V L1
    if GetKeyState("CapsLock", "T") = 1
    {
    SetCapsLockState, off
    }
    else if GetKeyState("CapsLock", "F") = 0
    {
    SetCapsLockState, on
    }
}
else if Pedersen = hosts ; Open hosts file in Notepad
{
    gui_destroy()
    Run notepad.exe C:\Windows\System32\drivers\etc\hosts
}
else if Pedersen = date ; What is the date?
{
    gui_destroy()
    FormatTime, date,, LongDate
    MsgBox %date%
    date = ""
}
else if Pedersen = week ; Which week is it?
{
    gui_destroy()
    FormatTime, weeknumber,, YWeek
    StringTrimLeft, weeknumbertrimmed, weeknumber, 4
    if (weeknumbertrimmed = 53)
        weeknumbertrimmed := 1
    MsgBox It is currently week %weeknumbertrimmed%
    weeknumber =
    weeknumbertrimmed =
}
else if Pedersen = ? ; Tooltip with list of commands
{
    GuiControl,, Pedersen, ; Clear the input box
    Gosub, gui_commandlibrary
}
else if Pedersen = mouse ; Get mouse position
{   
    gui_destroy()
    MouseGetPos, LocX, LocY
    MsgBox, X is at %LocX% and Y is at %LocY%
}