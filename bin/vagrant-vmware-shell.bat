@echo off
set VAGRANT_HOME=%~dp0\..\.vagrant.d
set ChocolateyInstall=C:\ProgramData\Chocolatey
set PATH=%PATH%;%ChocolateyInstall%\bin;%~dp0\..\bin
cd /D %~dp0\..
echo.
echo Now you can use vagrant for VMware Workstation provider.
