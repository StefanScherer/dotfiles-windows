:: Easier navigation: .., ..., ~

doskey ..=cd ..
doskey ...=cd ..\..
doskey ....=cd ..\..\..
doskey .....=cd ..\..\..\..
doskey ~=cd /D %USERPROFILE%

doskey history=type "%LOCALAPPDATA%\clink\.history" $*

:: be nice
doskey please=sudo $*
doskey hosts=sudo notepad %SystemRoot%\system32\drivers\etc\hosts

:: Shortcuts
doskey g=git $*
doskey v=gvim $*
doskey n=notepad $*
doskey e=explorer .
