@ECHO OFF

SET @IEPackagePath=D:\temp\IE11Setup\IE11-x64\

ECHO %@IEPackagePath%

ipconfig | findstr "IPv4"

REM Clear DISM Log File
del /f /q C:\Windows\Logs\DISM\dism.log > NULL 2>&1

dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2834140-v2-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2670838-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2639308-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2533623-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2731771-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2729094-v2-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2786081-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2888049-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%Windows6.1-KB2882822-x64.cab /ScratchDir:D:\Temp /norestart

dism /online /add-package /packagepath:%@IEPackagePath%IE-Win7.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%ielangpack-zh-TW.CAB /ScratchDir:D:\Temp /norestart

dism /online /add-package /packagepath:%@IEPackagePath%IE11-Windows6.1-KB2929437-x64.cab /ScratchDir:D:\Temp /norestart
dism /online /add-package /packagepath:%@IEPackagePath%IE11-Windows6.1-KB3100773-x64.cab /ScratchDir:D:\Temp /norestart

REM そゅ╰参じン
ipconfig | findstr "IPv4"
echo %computername%_杆そゅ╰参じンい_1单120
msiexec /i %@IEPackagePath%docNinstall.msi /quiet /norestart
timeout /T 120 /NOBREAK > null

ipconfig | findstr "IPv4"
echo %computername%_杆そゅ╰参じンい_2单秨诀
msiexec /i %@IEPackagePath%docNcomp42@0a41.msi /quiet /norestart
gpupdate /target:user
gpupdate /target:computer
gpupdate /force
ECHO %computername%_Finished,Reboot-PC
shutdown /f /r /t 120

@ECHO ON