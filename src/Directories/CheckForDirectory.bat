@echo off
setlocal enabledelayedexpansion

:: Specify the directory to search for
set "keyDirectory=C:\X\X\X"

:: Set a time limit in seconds 
set "timeLimit=60"
set /a "elapsedTime=0"



:loop
if exist "%keyDirectory%" (
    echo Directory found: %keyDirectory%
    goto end
) else (
    if !elapsedTime! geq %timeLimit% (
        echo Time limit exceeded. The script will now exit.
        goto end
    )
    echo Directory not found. Checking again... (Elapsed time: !elapsedTime! seconds)
    start scrnsave.scr /s   :: This Code line blocks Screen Visibility of the User. The User wont see his Screen, but rather a gray fullscreen image of nothing. You can hide anything this way!
    set /a "elapsedTime+=1"
    goto loop
)

echo The process has ended.
exit
