@echo off

:: Ensure admin privileges
fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)

set "file=C:\Program Files (x86)\Bignox\uninst.exe"

echo Stopping Process....
taskkill /F /IM Nox.exe
taskkill /F /IM NoxVMHandle.exe
taskkill /F /IM NoxVMSVC.exe
taskkill /F /IM nox_adb.exe

if exist "%file%" (
	cd "C:\Program Files (x86)\Bignox"
	echo uninstalling Bignox...
	".\uninst.exe"
) else (
	echo file not found...
)

cd "C:\Program Files (x86)"
rmdir Bignox

echo Done....

pause

