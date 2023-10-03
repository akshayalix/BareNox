@echo off

::REM Delay in milliseconds (1000 milliseconds = 1 second)
::set "delay=1000"

::ping -n 2 127.0.0.1 > nul

echo:
echo -^> Starting BareNox.....
echo:

echo -^> Downloading Files Using Curl...
echo:
"%cd%\Tools\Curl\curl.exe"  -o ./NoxPlayerSetup.exe -J -L bignox.com/en/download/fullPackage?beta
echo:
echo -^> Download Complete....
echo:

echo -^> Creating Directory Structure...
echo:
mkdir "%cd%\NoxPlayer"
echo -^> Completed......
echo:

echo -^> Extracting Files...
"%cd%\Tools\7-Zip\7za.exe" x NoxPlayerSetup.exe -oNoxPlayer\Nox
echo:
echo -^> Extraction Complete....
echo:

echo -^> Removing Temp Files...
echo:
del NoxPlayerSetup.exe
echo -^> Remove Complete...
echo:

echo -^> Copying Run Scripts...
copy "%cd%\Tools\Scripts\*" "%cd%\NoxPlayer"
echo:
echo -^> Copy Complete...
echo:

echo -^> Installation Done......
echo:

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

rem Execute the VBScript file to create the shortcut
cscript CreateShortcut.vbs

rem Clean up the temporary VBScript file
del CreateShortcut.vbs

echo -^> Do you want to debloat NoxPlayer(Y/N):
set /p "choice="
echo:

if /i "%choice%"=="Y" (
    rem Add your Yes-specific commands here
    
    echo -^> First the RunNox-Root.bat file....
    start "" "%cd%\NoxPlayer"
    echo:
    echo -^> Then run the Debloat.bat file.......
) else (
    rem Add your No-specific commands here
    
    echo -^> Alright...	
    echo:
    echo -^> You can use the shortcut to lauch NoxPlayer or RunNox.bat.....
)
echo:

echo -^> Bye!
echo:

pause
