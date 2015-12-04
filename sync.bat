@echo off
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
xcopy . "%USERPROFILE%" /EXCLUDE:excludes.txt /s /i /e /y /c

where /q apm
if ERRORLEVEL 1 goto :noatom
if not exist %USERPROFILE%\.atom\packages\editorconfig (
  apm install editorconfig
  apm install language-powershell
  apm install language-batch
  apm install file-types
  apm install language-docker
)
:noatom

:addScriptsToUserPath
for /F "tokens=2* delims= " %%f IN ('reg query "HKCU\Environment" /v Path ^| findstr /i path') do set OLD_USER_PATH=%%g
reg add HKCU\Environment /v Path /d "%OLD_USER_PATH%;%UserProfile%\bin" /f
set PATH=%PATH%;%UserProfile%\bin
exit /b
