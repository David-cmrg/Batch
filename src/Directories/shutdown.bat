@echo off

:: Executes the Shutdown file direct. -s stands for shutdown and -t {Number} stands for a time delay in seconds. 00 will turn off the Computer immediatly 
start "" "C:\Windows\System32\shutdown.exe" -s -t 10
exit
