=@echo off
setlocal enabledelayedexpansion

:loop
REM Check Trigger 1
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger1') do set HTTP_CODE=%%i
echo Trigger 1 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-1
)

REM Check Trigger 2
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger2') do set HTTP_CODE=%%i
echo Trigger 2 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-2
)

REM Check Trigger 3
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger3') do set HTTP_CODE=%%i
echo Trigger 3 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-3
)

REM Check Trigger 4
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger4') do set HTTP_CODE=%%i
echo Trigger 4 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-4
)


timeout /t 5
goto loop

:do-something-1
echo Aktion 1 ausgefuehrt!
REM Hier kommt der Code, der fuer Trigger 1 ausgefuehrt werden soll
tasklist /fi "ImageName eq javaw.exe" /fo csv 2>NUL | find /I "javaw.exe">nul
if %ERRORLEVEL% equ 0 (
    set "java_running=1"
) else (
    set "java_running=0"
)
if %java_running% equ 1 (
    call :kill
) else (
    echo no kill
    timeout /t 10 /nobreak > nul
)
goto :eof

:do-something-2
echo Aktion 2 ausgefuehrt!
REM Hier kommt der Code, der fuer Trigger 2 ausgefuehrt werden soll
shutdown /p
goto :eof

:do-something-3
REM hopefully a self updating version using github ;D
echo Aktion 3 ausgefuehrt!
REM Hier kommt der Code, der fuer Trigger 3 ausgefuehrt werden soll
call :self.update
goto :eof

:do-something-4
REM idk, probably logout or so
echo Aktion 4 ausgefuehrt!
REM Here goes the code for trigger 4
shutdown /l
goto :eof


:self.update
cd %temp%
mkdir permanent
cd permanent
curl -O https://raw.githubusercontent.com/Easty101/bat-anti-java/main/V2/update.bat
start C:\path\to\SilentCMD\SilentCMD.exe %temp%\permanent\update.bat
REM !Change 'C:\path\to\SilentCMD\SilentCMD.exe' to your actual path! ################################################################
goto :eof

:kill
echo kill
taskkill /f /im javaw.exe >nul
timeout /t 5 /nobreak > nul
echo timer done
goto :eof
