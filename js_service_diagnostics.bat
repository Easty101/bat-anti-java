@echo off
:loop
curl -s -o nul -w "%{http_code}" http://pi-bot.local/trigger
if %errorlevel%==0 (
    echo Trigger aktiviert!
	REM Hier kommt der Code, der ausgeführt werden soll
	tasklist /fi "ImageName eq javaw.exe" /fo csv 2>NUL | find /I "javaw.exe">nul
	if "%errorlevel%"=="0" (set "running=1") else (set "running=0")
	if %running%==1 goto kill
	timeout /t 120 /nobreak > nul
)
timeout /t 10
goto loop

:kill
taskkill /f /im javaw.exe >nul
timeout /t 300 /nobreak > nul
goto loop