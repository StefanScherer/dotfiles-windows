@echo off
setlocal
set vi=vi
where /q vi
if ERRORLEVEL 1 set vi=gvim
path | %vi% - -c :s/PATH=// -c :s/;/\r/g
