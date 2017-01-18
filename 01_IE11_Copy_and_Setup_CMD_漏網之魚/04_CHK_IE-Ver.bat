REM @echo off
 
SET @Prefix=IPList_ALL
Echo IP_Addr,Internet-Explorer-Version >_IE-Version_Result.csv

For /F "Tokens=*" %%a In (%@Prefix%.txt) Do (echo IP=%%a
:::::	Set RegQry="\\%%a\HKLM\Software\Microsoft\Internet Explorer" /v Version
	REG.exe Query "\\%%a\HKLM\Software\Microsoft\Internet Explorer" /v Version >CheckCC.txt
	Find /i "Version" < CheckCC.txt > StringCheck.txt
	FOR /f "Tokens=3" %%b in (StringCheck.txt) DO (echo IE版本=%%b
		Echo %%a,%%b >>_IE-Version_Result.csv
		Echo %%a,%%b
		SET %%a=""
		Set %%b=""
		del StringCheck.txt
		del CheckCC.txt
))