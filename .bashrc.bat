@echo off
:: Command shell auto-run
::
:: install this in your %USERPROFILE% and make this an autorun command
:: with the following registry key:
::   reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /d """%UserProfile%\.bashrc.bat""" /f
::

if "%cd%"=="%USERPROFILE%" (
  if "x%1"=="x" (
    if "%GIT_EDITOR%x"=="x" (
      set GIT_EDITOR=gvim
      if "%HOME%x"=="x" call start-ssh-agent.bat
    )
  )
)

:: for vagrant ssh
set TERM=linux
