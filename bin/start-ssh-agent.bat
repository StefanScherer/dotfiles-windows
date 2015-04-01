@echo off
set sshstart=0
tasklist | grep ssh-agent >NUL

if ERRORLEVEL 1 (
  set sshstart=1
  ssh-agent | grep -v echo | sed -e "s/^/@set /" | sed -e "s/;.*$//" - > %TEMP%\call.cmd
  echo Starting ssh-agent to keep your passphrase
  echo.
)
call %TEMP%\call.cmd
if %sshstart%==1 (
  ssh-add "%USERPROFILE%\.ssh\id_rsa"
  if exist "%USERPROFILE%\.ssh\id_rsa-home" (
    ssh-add "%USERPROFILE%\.ssh\id_rsa-home"
  )
)
@echo on
