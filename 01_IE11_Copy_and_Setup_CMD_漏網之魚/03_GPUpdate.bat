@echo OFF

SET @Prefix=IPList_ALL

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat)
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat)
	timeout /T 5
)

echo ==========================================================
echo 等待10分鐘，再強制套用一次。依當時情況，此批次可隨時關閉。
echo ==========================================================
timeout /T 600

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat)
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat)
	timeout /T 5
)

echo ==========================================================
echo 等待10分鐘，再強制套用一次。依當時情況，此批次可隨時關閉。
echo ==========================================================
timeout /T 600

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat)
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat)
	timeout /T 5
)

echo ==========================================================
echo 等待10分鐘，再強制套用一次。依當時情況，此批次可隨時關閉。
echo ==========================================================
timeout /T 600

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat)
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat)
	timeout /T 5
)

echo ==========================================================
echo 等待10分鐘，再強制套用一次。依當時情況，此批次可隨時關閉。
echo ==========================================================
timeout /T 600

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat)
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat)
	timeout /T 5
)

echo ==========================================================
echo 等待10分鐘，再強制套用一次。依當時情況，此批次可隨時關閉。
echo ==========================================================
timeout /T 600

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x86\IE11_Gpupdate.bat)
	if exist "\\%%i\D$\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat" (start .\psexec \\%%i D:\temp\IE11Setup\IE11-x64\IE11_Gpupdate.bat)
	timeout /T 5
)