@echo off
:: Generates a number (1 or 0). Basically a coin flip
set /a random=%random% %% 2

if %random%==0 (
    :: Any Code you want to be executed, if the Number is 0 and the PC wont shut off
    exit
) else (
    :: Will shut off the computer immeadiatly if RNG = 1
    C:\Windows\System32\shutdown.exe -s -t 00
)
exit
