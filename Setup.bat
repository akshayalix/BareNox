@echo off

REM Delay in milliseconds (1000 milliseconds = 1 second)
set "delay=500"

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

echo -^> Installation Done......
echo:
ping -n 2 127.0.0.1 > nul

rem Define the program you want to create a shortcut for
set "ProgramName=Nox"
set "ProgramPath=%cd%\NoxPlayer\Nox\bin\Nox.exe"

rem Define the location for the shortcut (the desktop)
set "DesktopFolder=%userprofile%\Desktop"

rem Create a VBScript file to create the shortcut
> CreateShortcut.vbs (
    echo Set objShell = WScript.CreateObject^("WScript.Shell"^)
    echo:
    echo DesktopPath = objShell.SpecialFolders^("Desktop"^)
    echo:
    echo Set objShortCut = objShell.CreateShortcut^(DesktopPath ^& "\%ProgramName%.lnk"^)
    echo:
    echo objShortCut.TargetPath = "%ProgramPath%"
    echo:
    echo objShortCut.WorkingDirectory = "%ProgramPath%"
    echo:
    echo objShortCut.Save
)
ping -n 2 127.0.0.1 > nul

rem Execute the VBScript file to create the shortcut
cscript CreateShortcut.vbs

rem Clean up the temporary VBScript file
del CreateShortcut.vbs

echo:
echo -^> All Done!
echo:
ping -n 2 127.0.0.1 > nul

pause
