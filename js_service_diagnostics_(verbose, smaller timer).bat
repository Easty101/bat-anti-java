@echo off
:repeat
echo looking around...
tasklist /fi "ImageName eq javaw.exe" /fo csv 2>NUL | find /I "javaw.exe">nul
if "%errorlevel%"=="0" (set "running=1") else (set "running=0")
if %running%==1 goto kill
echo kill.statement.false
echo waiting...
timeout /t 30 /nobreak > nul
echo 30 seconds remaining
timeout /t 20 /nobreak > nul
echo 10 seconds remaining
timeout /t 10 /nobreak > nul
goto repeat

:kill
taskkill /f /im javaw.exe >nul
echo kill.statement.true
echo waiting...
timeout /t 30 /nobreak > nul
echo 30 seconds remaining
timeout /t 20 /nobreak > nul
echo 10 seconds remaining
timeout /t 10 /nobreak > nul
goto repeat