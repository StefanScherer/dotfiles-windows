@echo off
set sshstart=0
tasklist | grep ssh-agent >NUL
if ERRORLEVEL 1 (
  set sshstart=1
  ssh-agent | grep -v echo | sed -e "s/^/@set /" | sed -e "s/;.*$//" - > %TEMP%\call.cmd
)
call %TEMP%\call.cmd
if %sshstart%==1 (
  ssh-add "%HOME%\.ssh\id_rsa"
  if exist "%HOME%\.ssh\id_rsa-home" (
    ssh-add "%HOME%\.ssh\id_rsa-home"
  )
)
@echo on
