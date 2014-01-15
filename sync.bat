rem @echo off
cd /D %~dp0
git pull

where /q z.bat
if ERRORLEVEL 1 call :addScriptsToUserPath
 
if "%1x"=="--forcex" goto doIt
if "%1x"=="-fx" goto doIt
set /p answer=This may overwrite existing files in your home directory. Are you sure? (y/n)
if "%answer%"=="y" goto doIt
if "%answer%"=="Y" goto doIt
goto :EOF

:doIt
xcopy . "%USERPROFILE%" /EXCLUDE:excludes.txt /s /i /y
rem copy .vagrant.d to HOME/.vagrant.d or VAGRANT_HOME if defined
setlocal
if "%VAGRANT_HOME%x"=="x" set VAGRANT_HOME=%UserProfile%\.vagrant.d
xcopy .vagrant.d "%VAGRANT_HOME%" /s /i /y
endlocal
goto :EOF

:addScriptsToUserPath
for /F "tokens=2* delims= " %%f IN ('reg query "HKCU\Environment" /v Path ^| findstr /i path') do set OLD_USER_PATH=%%g
setx.exe PATH "%OLD_USER_PATH%;%UserProfile%\scripts" 
set PATH=%PATH%;%UserProfile%\scripts
exit /b
