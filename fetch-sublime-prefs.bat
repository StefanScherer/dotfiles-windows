@echo off
rem This is a helper to fetch my Sublime prefs to fetch it into the repo for commit and push
copy "%USERPROFILE%\Appdata\Roaming\Sublime Text 3\Packages\User\*" "%~dp0\AppData\Roaming\Sublime Text 3\Packages\User\
