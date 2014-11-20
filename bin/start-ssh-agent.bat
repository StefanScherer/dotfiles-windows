@echo off
ssh-agent | grep -v echo | sed -e "s/^/@set /" | sed -e "s/;.*$//" - > %TEMP%\call.cmd
call %TEMP%\call.cmd
del %TEMP%\call.cmd
ssh-add "%HOME%\.ssh\id_rsa"
if exist "%HOME%\.ssh\id_rsa-home" (
  ssh-add "%HOME%\.ssh\id_rsa-home"
)
@echo on
