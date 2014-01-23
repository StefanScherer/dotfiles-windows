@echo off
if "%SKIP_BASHRC_RUN%x"=="1x" goto :EOF
:: Command shell auto-run
::
:: install this in your %USERPROFILE% and make this an autorun command
:: with the following registry key:
::   reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /d """%UserProfile%\.bashrc.bat""" /f
::
set SKIP_BASHRC_RUN=1
if exist "%ProgramFiles%\clink\0.3.1\" (
  if "%PROCESSOR_ARCHITECTURE%"=="x86" (
  call "%ProgramFiles%\clink\0.3.1\clink.bat" inject --profile "%LOCALAPPDATA%\clink"
  ) else (
  call "%ProgramFiles(x86)%\clink\0.3.1\clink.bat" inject --profile "%LOCALAPPDATA%\clink"
  )
)
doskey /MACROFILE=%~dp0\.aliases


