@echo off
setlocal EnableDelayedExpansion
if "%1x"=="x" (
  echo Usage: vagrantd command ...
  echo Writes a vagrant debug log file while running a vagrant command.
  echo The log files have a counter prefix for easier sorting.
  goto :EOF
)
set Num=1
if exist counter.txt (
  for /f "delims=" %%x in (counter.txt) do set /A Num=%%x+1
)
echo %Num% >counter.txt
set "formattedNum=00%Num%"
set Num=!formattedNum:~-2!
set Name=%*
set Name=%Name: =-%
call :l_replace "%Name%" "=" "-"
set Name=%str%
set Name=%Name:---=-%
set Name=%Name:--=-%
set logfile=%Num%-vagrant-%Name%.log
echo Writing debug log file %logfile%
echo Calling vagrant %* --debug
call vagrant %* --debug >%logfile% 2>&1
set vagrantexitcode=%ERRORLEVEL%
%SystemRoot%\system32\find.exe "INFO interface:" %logfile%
echo.
echo Vagrant exited with %vagrantexitcode%. See %logfile% for more details
goto :EOF

:l_replace
set "str=x%~1x"
:l_replaceloop
for /f "delims=%~2 tokens=1*" %%x in ("!str!") do (
if "%%y"=="" set "str=!str:~1,-1!"&exit/b
set "str=%%x%~3%%y"
)
goto l_replaceloop
