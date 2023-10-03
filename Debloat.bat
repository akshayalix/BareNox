echo -^> Starting Debloating process...
cd "%cd%\NoxPlayer\Nox\bin"
echo:

adb root
adb remount

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
echo -^> Copying Nova Launcher....
copy "%cd%\Tools\Nova\nova.apk" "%cd%\NoxPlayer\Nox\bin"
echo:
echo -^> Installing Nova Launcher.......
adb install nova.apk
echo:
echo -^> Installed....
echo:
echo -^> Rebooting NoxPlayer.....
adb reboot
echo:
