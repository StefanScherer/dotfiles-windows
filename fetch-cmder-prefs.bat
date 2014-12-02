@echo off
rem This is a helper to fetch my cmder prefs into the repo for commit and push
rem cmder is previously installed with `cinst cmder`

if exist C:\ProgramData\Chocolatey\lib\cmder.portable.1.1.1\tools\cmder\config (
  copy "C:\ProgramData\Chocolatey\lib\cmder.portable.1.1.1\tools\cmder\config\*" "%~dp0\cmder\config\
)
if exist C:\cmder\config (
  copy "C:\cmder\config\*" "%~dp0\cmder\config\
)

del /F "%~dp0\cmder\config\.history
