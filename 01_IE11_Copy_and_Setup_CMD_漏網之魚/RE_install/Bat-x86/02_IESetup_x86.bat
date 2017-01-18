@echo OFF

SET @Prefix=IPList_x86

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	start .\psexec \\%%i D:\temp\IE11Setup\IE11-x86\ie11setup.bat
	timeout /T 20
)