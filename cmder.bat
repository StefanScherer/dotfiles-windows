@echo off
:: create a shortcut for cmd.exe /C %USERPROFILE%/cmder.bat
:: and pin it to the taskbar.
set SKIP_BASHRC_RUN=1
if exist "C:\cmder\Cmder.exe" (
  "C:\cmder\Cmder.exe"
  exit
)
