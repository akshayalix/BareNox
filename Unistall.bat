@echo off


REM Delay in milliseconds (1000 milliseconds = 1 second)
set "delay=500"

set "file=C:\Program Files (x86)\Bignox\uninst.exe"

ping -n 2 127.0.0.1 > nul
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
ping -n 2 127.0.0.1 > nul

if exist "%file%" (
	cd "C:\Program Files (x86)\Bignox"
	echo -^> Uninstalling Bignox...
	".\uninst.exe"
    echo:
) else (
	echo -^> File not found...
)
echo:
ping -n 2 127.0.0.1 > nul

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
ping -n 2 127.0.0.1 > nul

echo -^> Done....
echo:
ping -n 2 127.0.0.1 > nul

pause

