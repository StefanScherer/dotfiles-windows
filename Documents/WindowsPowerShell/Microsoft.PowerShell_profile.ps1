# install-module z
# install-module PSReadLine

import-module z

Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

function .. { cd .. }
function ... { cd .. ; cd .. }
function .... { cd .. ; cd .. ; cd .. }
function ..... { cd .. ; cd .. ; cd .. ; cd .. }
function home { cd $env:USERPROFILE }

function subl { &"${Env:ProgramFiles}\Sublime Text 3\sublime_text.exe" $args }

# Load posh-git example profile
. "$env:USERPROFILE\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1"

