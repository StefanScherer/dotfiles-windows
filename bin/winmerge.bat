@echo off
:: Pass through to appropriate path.
::
if "%PROCESSOR_ARCHITECTURE%"=="x86" (
    "%ProgramFiles%\winmerge\winmergeu.exe" %*
) else (
    "%ProgramFiles(x86)%\winmerge\winmergeu.exe" %*
)

