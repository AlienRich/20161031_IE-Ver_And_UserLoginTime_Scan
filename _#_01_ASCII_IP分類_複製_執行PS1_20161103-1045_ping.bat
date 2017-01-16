DEL /f /q .\_@@_KGIBANK-IP.txt
del /f /q .\_@@_Scan_IP_Ranges.txt
del /f /q .\_@@_IPList_ALL_Branch.txt
del /f /q .\_@@@@_*_Scan_IP_Ranges.txt

set IEVerCHK=_#_04-CHK_IE_VER_Query_iexplore.exe_FileVer.ps1
set WMI1=_#_WMIC_撈目前使用USER-ID_20131103-1045.ps1
set WMI2=_#_WMIC_撈曾經登入本機帳號的UserProfile使用時間_20161103-1045.ps1

::::	擷取所在路徑
::::	for /f "tokens=1,2,3 delims=@" %%p in ('forfiles /p .\ /s /m *.@ /C "cmd /c echo @path"') DO (SET RunPath=%%p%%r)
SET RunPath=%CD%

::::	使用IP-SCAN將網段內的PC掃出
net time /set /domain /yes
for /F %%i IN (.\_#_IP-Range.txt) do (
	echo Scan ::: %%i
	set time=
	set date=
	echo RunTime ::: %date%  %time%
	START .\AdvancedIPScannerPortable\advanced_ip_scanner_console.exe /r:%%i /f:.\_@@@@_%%i_Scan_IP_Ranges.txt
	ping 127.0.0.1 -n 20
	)

:CHKFile
ECHO ******************************
ECHO *** 等待確認檔案產生！
ECHO ******************************

TIMEOUT 600
for /f %%a in (.\_#_IP-Range.txt) do (
	if not exist %RunPath%\_@@@@_%%a_Scan_IP_Ranges.txt echo 【%RunPath%\_@@@@_%%a_Scan_IP_Ranges.txt】檔案不存在
	if not exist %RunPath%\_@@@@_%%a_Scan_IP_Ranges.txt Do (START .\AdvancedIPScannerPortable\advanced_ip_scanner_console.exe /r:%%a /f:.\_@@@@_%%a_Scan_IP_Ranges.txt)
	TIME 20
	)

for /f %%a in (.\_#_IP-Range.txt) do (
	if not exist %RunPath%\_@@@@_%%a_Scan_IP_Ranges.txt goto CHKFile
	)

copy .\_@@@@_*_Scan_IP_Ranges.txt .\_@@_Scan_IP_Ranges.txt

::::	過濾狀態"alive"與"KGIBANK"
net time /set /domain /yes
TYPE .\_@@_Scan_IP_Ranges.txt | find "alive" | find " KGIBANK " >>.\_@@_KGIBANK-IP.txt

::::	篩選出IP
for /F "usebackq tokens=1,2,3,4,5 delims= " %%I IN (.\_@@_KGIBANK-IP.txt) do echo %%M>>.\_@@_IPList_ALL_Branch.txt

::::	建立各分行資料夾
for /F "usebackq tokens=1,2,3 delims=.-" %%i IN (.\_#_IP-Range.txt) do mkdir .\BranchIP\%%i.%%j.%%k

::::	將各分行的IP丟入各分行資料夾
del /s IPList_ALL.txt
for /F "usebackq tokens=1,2,3,4 delims=. " %%i IN (.\_@@_IPList_ALL_Branch.txt) do echo %%i.%%j.%%k.%%l>>.\BranchIP\%%i.%%j.%%k\IPList_ALL.txt

::::	複製PS1到各資料夾內
del /s /f /q .\BranchIP\*.ps1
del /s /f /q .\BranchIP\*.bat
for /f %%a in ('dir /b .\BranchIP') do (
	copy .\*.ps1 .\BranchIP\%%a
	)

::::	產生執行批次檔runPS.bat
net time /set /domain /yes
for /f %%a in ('dir /b .\BranchIP') do (
	echo cd\>.\BranchIP\%%a\runPS.bat
	echo cd %RunPath%>>.\BranchIP\%%a\runPS.bat
	echo cd BranchIP\%%a>>.\BranchIP\%%a\runPS.bat
	echo POWERSHELL.exe ".\%IEVerCHK%">>.\BranchIP\%%a\runPS.bat
	echo TIMEOUT 5>>.\BranchIP\%%a\runPS.bat
	echo POWERSHELL.exe ".\%WMI1%">>.\BranchIP\%%a\runPS.bat
	echo TIMEOUT 5>>.\BranchIP\%%a\runPS.bat
	echo POWERSHELL.exe ".\%WMI2%">>.\BranchIP\%%a\runPS.bat
	echo EXIT>>.\BranchIP\%%a\runPS.bat
	start .\BranchIP\%%a\runPS.bat
	ping 127.0.0.1 -n 20
	)