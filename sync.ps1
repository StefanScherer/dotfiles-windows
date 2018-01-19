if (!(Test-Path $env:USERPROFILE\Documents\WindowsPowerShell)) {
  mkdir $env:USERPROFILE\Documents\WindowsPowerShell
}

if (!(Test-Path $env:USERPROFILE\Documents\WindowsPowerShell\Modules\z)) {
  Install-Module z -Scope CurrentUser -AllowClobber
}

if (!(Test-Path $env:USERPROFILE\Documents\WindowsPowerShell\Modules\posh-git)) {
  Install-Module posh-git -Scope CurrentUser
}


copy Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 $env:USERPROFILE\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
