@echo off
setlocal

REM Delay in milliseconds (1000 milliseconds = 1 second)
set "delay=500"

ping -n 2 127.0.0.1 > nul
echo -^> Creating zip file
ping -n 2 127.0.0.1 > nul

if exist "C:\Program Files\7-Zip\7z.exe" (
  "C:\Program Files\7-Zip\7z.exe" a -tzip "BareNox_%date%.zip" * -x!.git -x!Build.bat -x!Readme.md
) else (
  echo ERROR^: 7zip executable not found! Please install it from https://www.7-zip.org/download.html
  exit /b 1
)
ping -n 2 127.0.0.1 > nul

echo:
echo -^> Done! You can find the zip file in the current directory - '%CD%\BareNox_%date%.zip'
echo:
ping -n 2 127.0.0.1 > nul

pause