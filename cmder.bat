@echo off
:: create a shortcut for cmd.exe /C %USERPROFILE%/cmder.bat
:: and pin it to the taskbar.
set SKIP_BASHRC_RUN=1
if exist "C:\ProgramData\Chocolatey\lib\cmder.portable.1.1.1\tools\cmder\Cmder.bat" (
  call "C:\ProgramData\Chocolatey\lib\cmder.portable.1.1.1\tools\cmder\Cmder.bat"
  exit
)
