@echo OFF

SET @Prefix=IPList_x86
set Log=.\_roboCopy_ie11_86.log
echo RUN_TIME：%date% %time% > %Log%

:::::	robocopy \\CDBUHD\Download\0_IE11\IE11-x86 D:\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir
:::::	robocopy \\CDBUHD\Download\0_IE11\IE11-x86 D:\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir
:::::	set CDBUHDIE11Path=\\CDBUHD\Download\0_IE11
:::::	for /f %%a in ('dir %CDBUHDIE11Path%\IE11-x86 /b') do (if not exist D:\temp\IE11Setup\IE11-x86\%%a echo 【D:\temp\IE11Setup\IE11-x86\%%a】檔案不存在)
:::::	ECHO ##############################################################
:::::	ECHO # 執行前請確定下列事項：(此版本為x86)
:::::	ECHO # 1.檢查目錄檔案是否正確 D:\temp\IE11Setup。
:::::	ECHO # 2.檔案無缺少即可向下執行，複製檔案到USER電腦。
:::::	ECHO # 3.若有跳出"檔案不存在"訊息，請將此批次關閉。
:::::	ECHO ##############################################################
:::::	robocopy \\CDBUHD\Download\0_IE11\IE11-x86 D:\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%

echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)


ping -n 900 127.0.0.1
echo ### > %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ################################################################################################################### >> %Log%
echo ################################################################################################################### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
echo ### >> %Log%
for /f %%i in (.\%@Prefix%.txt) do (
	Echo ===========================================================================================
	Echo %%i_%date%_%time%
	start robocopy D:\temp\IE11Setup\IE11-x86 \\%%i\D$\temp\IE11Setup\IE11-x86 /r:3 /w:0 /mir /log+:%Log%
	ping -n 5 %%i
	)