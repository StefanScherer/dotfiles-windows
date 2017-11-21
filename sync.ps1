if (!(Test-Path $env:USERPROFILE\Documents\WindowsPowerShell)) {
  mkdir $env:USERPROFILE\Documents\WindowsPowerShell
}

copy Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 $env:USERPROFILE\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
