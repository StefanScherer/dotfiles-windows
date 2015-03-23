@echo off
:: Command shell auto-run
::
:: install this in your %USERPROFILE% and make this an autorun command
:: with the following registry key:
::   reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /d """%UserProfile%\.bashrc.bat""" /f
::

set GIT_EDITOR=gvim

if "%HOME%x"=="x" call start-ssh-agent.bat
