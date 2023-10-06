@echo off

REM Delay in milliseconds (1000 milliseconds = 1 second)
set "delay=500"

ping -n 2 127.0.0.1 > nul
echo -^> Starting Debloating process...
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Extracting Nova Launcher....
"%cd%\Tools\7-Zip\7za.exe" x "%cd%\Tools\Nova\nova.7z" -o"%cd%\Tools\Nova"
move "%cd%\Tools\Nova\nova.apk" "%cd%\NoxPlayer\Nox\bin"
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Setting adb Directory.....
cd "%cd%\NoxPlayer\Nox\bin"
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Setting adb root....
adb root
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Setting adb remount....
adb remount
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Removing AmazeFileManager
adb shell rm -r /system/app/AmazeFileManager
echo:
echo -^> Removing AppStore
adb shell rm -r /system/app/AppStore
echo:
echo -^> Removing BuiltInPrintService
adb shell rm -r /system/app/BuiltInPrintService
echo:
echo -^> Removing CarrierDefaultApp
adb shell rm -r /system/app/CarrierDefaultApp
echo:
echo -^> Removing CompanionDeviceManager
adb shell rm -r /system/app/CompanionDeviceManager
echo:
echo -^> Removing CtsShimPrebuilt
adb shell rm -r /system/app/CtsShimPrebuilt
echo:
echo -^> Removing EasterEgg
adb shell rm -r /system/app/EasterEgg
echo:
echo -^> Removing Facebook
adb shell rm -r /system/app/Facebook
echo:
echo -^> Removing Helper
adb shell rm -r /system/app/Helper
echo:
echo -^> Removing LiveWallpapersPicker
adb shell rm -r /system/app/LiveWallpapersPicker
echo:
echo -^> Removing PrintRecommendationService
adb shell rm -r /system/app/PrintRecommendationService
echo:
echo -^> Removing PrintSpooler
adb shell rm -r /system/app/PrintSpooler
echo:
echo -^> Removing Traceur
adb shell rm -r /system/app/Traceur
echo:
echo -^> Removing WallpaperBackup
adb shell rm -r /system/app/WallpaperBackup
echo:
echo -^> Removing newAppNameEn
adb shell rm -r /system/app/newAppNameEn
echo:
echo -^> Installing Nova Launcher.......
adb install nova.apk
echo:
echo -^> Installed....
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Done.....
echo:
ping -n 2 127.0.0.1 > nul

echo -^> Restart NoxPlayer.....
echo:
ping -n 2 127.0.0.1 > nul

pause



