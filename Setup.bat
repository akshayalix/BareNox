@echo off

REM Delay in milliseconds (1000 milliseconds = 1 second)
set "delay=500"

ping -n 2 127.0.0.1 > nul
echo:
echo -^> Starting BareNox.....
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Downloading Files Using Curl...
echo:
ping -n 2 127.0.0.1 > nul
"%cd%\Tools\Curl\curl.exe"  -o ./NoxPlayerSetup.exe -J -L bignox.com/en/download/fullPackage?beta
echo:
ping -n 2 127.0.0.1 > nul
echo -^> Download Complete....
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Creating Directory Structure...
echo:
ping -n 2 127.0.0.1 > nul
mkdir "%cd%\NoxPlayer"
ping -n 2 127.0.0.1 > nul
echo -^> Completed......
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Extracting Files...
ping -n 2 127.0.0.1 > nul
"%cd%\Tools\7-Zip\7za.exe" x NoxPlayerSetup.exe -oNoxPlayer\Nox
echo:
ping -n 2 127.0.0.1 > nul
echo -^> Extraction Complete....
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Removing Temp Files...
echo:
ping -n 2 127.0.0.1 > nul
del NoxPlayerSetup.exe
ping -n 2 127.0.0.1 > nul
echo -^> Remove Complete...
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Copying Run Scripts...
ping -n 2 127.0.0.1 > nul
copy "%cd%\Tools\Scripts\*" "%cd%\NoxPlayer"
echo:
ping -n 2 127.0.0.1 > nul
echo -^> Copy Complete...
echo:
ping -n 2 127.0.0.1 > nul

echo -^> All Done!
echo:
ping -n 2 127.0.0.1 > nul

pause
