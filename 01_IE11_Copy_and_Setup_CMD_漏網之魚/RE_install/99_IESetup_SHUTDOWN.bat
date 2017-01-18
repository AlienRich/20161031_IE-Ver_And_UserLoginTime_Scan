@echo OFF

SET @Prefix=IPList_ALL

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	timeout /T 5
	shutdown /m \\%%i /f /s /t 21600
)
