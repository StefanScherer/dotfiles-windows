@echo off
set VAGRANT_HOME=%~dp0\..\.vagrant.d
set ChocolateyInstall=C:\ProgramData\Chocolatey
set PATH=%PATH%;%ChocolateyInstall%\bin;%~dp0\..\bin;C:\git\cmd;C:\git\bin
if "%1x"=="x" (
  cd /D %~dp0\..
) else (
  cd /D "%1"
)
echo.
echo Now you can use vagrant for VMware Workstation provider.
