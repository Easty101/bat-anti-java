@echo off
:repeat
echo looking around...
tasklist /fi "ImageName eq javaw.exe" /fo csv 2>NUL | find /I "javaw.exe">nul
if "%errorlevel%"=="0" (set "running=1") else (set "running=0")
if %running%==1 goto kill
timeout /t 300 /nobreak > nul
goto repeat

:kill
taskkill /f /im javaw.exe >nul
timeout /t 300 /nobreak > nul
goto repeat