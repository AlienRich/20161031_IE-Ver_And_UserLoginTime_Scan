SET @Prefix=IPList_ALL

for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i %date% %time%
	shutdown /m \\%%i /f /s /t 25200
	timeout /T 5
)