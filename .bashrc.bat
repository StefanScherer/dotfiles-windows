rem @echo off
:: Command shell auto-run
::
:: install this in your %USERPROFILE% and make this an autorun command
:: with the following registry key:
::   reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /d """%UserProfile%\.bashrc.bat""" /f
::
if "%PROCESSOR_ARCHITECTURE%"=="x86" (
call "%ProgramFiles%\clink\0.3.1\clink.bat" inject --profile "%LOCALAPPDATA%\clink"
) else (
call "%ProgramFiles(x86)%\clink\0.3.1\clink.bat" inject --profile "%LOCALAPPDATA%\clink"
)



:: Aliases
doskey n=notepad $*
doskey e=explorer .
doskey history=type "%LOCALAPPDATA%\clink\.history" $*

