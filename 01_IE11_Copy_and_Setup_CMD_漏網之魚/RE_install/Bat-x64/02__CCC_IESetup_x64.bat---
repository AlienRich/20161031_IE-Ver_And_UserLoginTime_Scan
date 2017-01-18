@echo OFF

SET @Prefix=IPList_x64_CCC

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	start .\psexec \\%%i C:\temp\IE11Setup\IE11-x64\IE11Setup_CCC.bat
	timeout /T 20
)