@echo off

set "file=C:\Program Files (x86)\Bignox\uninst.exe"

echo:
echo -^> Stopping Process....
echo:
taskkill /F /IM Nox.exe
echo:
taskkill /F /IM NoxVMHandle.exe
echo:
taskkill /F /IM NoxVMSVC.exe
echo:
taskkill /F /IM nox_adb.exe
echo:

if exist "%file%" (
	cd "C:\Program Files (x86)\Bignox"
	echo -^> Uninstalling Bignox...
	".\uninst.exe"
    echo:
) else (
	echo -^> File not found...
)
echo:

echo -^> Deleting Folders....
echo:
cd "C:\Program Files (x86)"
rmdir /s /q Bignox
echo:
cd "%userprofile%"
rmdir /s /q .BigNox
echo:
cd "%userprofile%\AppData\Local"
rmdir /s /q Nox
rmdir /s /q NoxSrv
echo:

echo -^> Removing shortcut....
del "%userprofile%\Desktop\Nox.lnk"
echo:

echo -^> Done....
echo:

pause

