import-module z

Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadlineOption -BellStyle None

function .. { cd .. }
function ... { cd .. ; cd .. }
function .... { cd .. ; cd .. ; cd .. }
function ..... { cd .. ; cd .. ; cd .. ; cd .. }
function home { cd $env:USERPROFILE }

Import-Module posh-git

# Set up a simple prompt, adding the git prompt parts inside git repos
function global:prompt {
    $realLASTEXITCODE = $LASTEXITCODE

    Write-Host($pwd.ProviderPath) -nonewline -ForegroundColor Gray

    Write-VcsStatus
    Write-Host
    $global:LASTEXITCODE = $realLASTEXITCODE
    return "$ "
}

function t {   
    # Windows Theme and define mode to be consistent 
    $themePath = "Registry::HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
    $AppsUseLightTheme = Get-ItemProperty -Path $themePath -Name AppsUseLightTheme
    $goDark = ($AppsUseLightTheme.AppsUseLightTheme / 1) -eq 1
    
    Set-ItemProperty -Path $themePath -Name AppsUseLightTheme -Value ($(if ($goDark) { 0 } else { 1 })) -Type DWord
    Set-ItemProperty -Path $themePath -Name SystemUsesLightTheme -Value ($(if ($goDark) { 0 } else { 1 })) -Type DWord

    # Terminal
    $settingsPath = "$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
    $terminalLightTheme = "One Half Light"
    $terminalDarkTheme = "One Half Dark"
    if ($goDark) {
        ((Get-Content $settingsPath) -replace $terminalLightTheme, $terminalDarkTheme) | Set-Content $settingsPath
    } else {
        ((Get-Content $settingsPath) -replace $terminalDarkTheme, $terminalLightTheme) | Set-Content $settingsPath
    }
}

Start-SshAgent -Quiet
