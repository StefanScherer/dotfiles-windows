@echo off
setlocal
set vi="C:\Program Files (x86)\vim\vim74\gvim.exe"
if exist "C:\Program Files (x86)\vim\vim74\gvim.exe" goto :viewpath
set vi=vi
where /q vi
if ERRORLEVEL 1 set vi=gvim
:viewpath
path | %vi% - -c :s/PATH=// -c :s/;/\r/g
