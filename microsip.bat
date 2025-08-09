@echo off
REM Get the path to the Downloads folder
set "DOWNLOADS=%USERPROFILE%\Downloads"

REM File name and URL
set "FILENAME=MicroSIP-3.19.12.zip"
set "URL=https://github.com/lambboy123/test/raw/refs/heads/main/MicroSIP-3.19.12.zip"

REM Download using PowerShell (built into Windows 10)
echo Downloading %FILENAME% to %DOWNLOADS% ...
powershell -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%DOWNLOADS%\%FILENAME%'"

REM Unzip the file
echo Unzipping...
powershell -Command "Expand-Archive -Path '%DOWNLOADS%\%FILENAME%' -DestinationPath '%DOWNLOADS%\MicroSIP' -Force"

echo Done! File saved to %DOWNLOADS%\MicroSIP
pause
