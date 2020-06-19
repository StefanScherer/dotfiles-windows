import-module z

function .. { cd .. }
function ... { cd .. ; cd .. }
function .... { cd .. ; cd .. ; cd .. }
function ..... { cd .. ; cd .. ; cd .. ; cd .. }
function home { cd $env:USERPROFILE }

Import-Module posh-git

Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Chord Ctrl+a -Function BeginningOfLine
Set-PSReadLineKeyHandler -Chord Ctrl+e -Function EndOfLine
Set-PSReadLineKeyHandler -Chord Alt+LeftArrow -Function BackwardWord
Set-PSReadLineKeyHandler -Chord Alt+RightArrow -Function NextWord
Set-PSReadlineOption -BellStyle None

function Test-Administrator
{
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

# Set up a simple prompt, adding the git prompt parts inside git repos
function global:prompt {
    $realLASTEXITCODE = $LASTEXITCODE

    Write-Host($pwd.ProviderPath) -nonewline -ForegroundColor Gray

    Write-VcsStatus
    Write-Host
    $global:LASTEXITCODE = $realLASTEXITCODE
    if (Test-Administrator) {
        Write-Host -NoNewline -ForegroundColor Red "Administrator $env:USERNAME "
    }
    return "$ "
}

function t {
    wsl.exe -d Ubuntu-20.04 ~/bin/t
}

# Start-SshAgent -Quiet
