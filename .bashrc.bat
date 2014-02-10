@echo off
if "%SKIP_BASHRC_RUN%x"=="1x" goto :EOF
:: Command shell auto-run
::
:: install this in your %USERPROFILE% and make this an autorun command
:: with the following registry key:
::   reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /d """%UserProfile%\.bashrc.bat""" /f
::
set SKIP_BASHRC_RUN=1
if exist "%USERPROFILE%\bin\clink\" (
  call "%USERPROFILE%\bin\clink\clink.bat" inject --profile "%LOCALAPPDATA%\clink"
)
doskey /MACROFILE=%~dp0\.aliases

set GIT_EDITOR=gvim

