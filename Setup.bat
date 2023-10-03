@echo off

::REM Delay in milliseconds (1000 milliseconds = 1 second)
::set "delay=1000"

::ping -n 2 127.0.0.1 > nul

echo -^> Downloading Files Using Curl...
echo:
"%cd%\Tools\Curl\curl.exe"  -o ./NoxPlayerSetup.exe -J -L bignox.com/en/download/fullPackage?beta
echo -^> Download Complete....
echo:

echo -^> Creating Directory Structure...
echo:
mkdir "%cd%\NoxPlayer"
echo -^> Completed......
echo:

echo -^> Extracting Files...
"%cd%\Tools\7-Zip\App\7-Zip\7za.exe" x NoxPlayerSetup.exe -oNoxPlayer\Nox 
echo:
echo -^> Extraction Complete....
echo:

::echo ->^ Going To Extract Some Required Files...
::"%cd%\Tools\7-Zip\App\7-Zip\7za.exe" x "%CD%\assets\Bignox.7z" -o NoxPlayer\Bignox 
::echo ->^ Extracting Complete....

echo -^> Removing Temp Files...
echo:
del NoxPlayerSetup.exe
echo -^> Remove Complete...
echo:

echo -^> Going To Copy Run Scripts...
copy "%cd%\Scripts\*" "%cd%\NoxPlayer"
echo:
echo -^> Copy Complete...
echo:



pause
