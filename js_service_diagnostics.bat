@echo off
setlocal enabledelayedexpansion

:loop
echo start
curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger > response.txt
set /p response_code=<response.txt

if !errorlevel! equ 0 (
    if !response_code! equ 200 (
        echo Trigger aktiviert!
        REM Hier kommt der Code, der ausgeführt werden soll
        tasklist /fi "ImageName eq javaw.exe" /fo csv 2>NUL | find /I "javaw.exe">nul
        if !errorlevel! equ 0 (
            set "running=1"
        ) else (
            set "running=0"
        )
        if !running! equ 1 goto kill
		echo no kill
        timeout /t 10 /nobreak > nul
    ) else (
		echo no Trigger
	)
)

timeout /t 10 /nobreak > nul
goto loop

:kill
echo kill
taskkill /f /im javaw.exe >nul
timeout /t 5 /nobreak > nul
echo timer done
goto loop
