# https://winsysblog.com/2017/10/save-hours-time-psreadline-tweak.html
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
