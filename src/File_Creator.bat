@echo off

set "folder=C:/X/X/X"
set "fileName=FileName"

:: FILENAME WITHOUT THE "."!
set "extension=txt"

echo %folder%
echo %fileName%
echo %extension%

echo .

if not exist "%folder%" (
    echo Directory does not exist.
    echo Creating Directory.
    echo .
    mkdir "%folder%"
)

set /a counter=0

:: (X, Y, Z) -> X: Starting Value; Y: Increment Value; Z: Final Value; VALUE = File Amount
for /L %%i in (1,1,100) do (
    echo Created: %fileName%_%%i.%extension%
    echo. >> "%folder%\%fileName%_%%i.%extension%"
    set /a counter+=1
)

echo %counter% Files created successfully in %folder%.
pause
