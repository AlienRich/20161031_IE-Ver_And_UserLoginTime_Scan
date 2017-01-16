::::	forfiles /P C:\TEMP\20160623_ID-SCAN /s /m *_List-Local-User-Group.csv /c "cmd /c type @path >>C:\TEMP\20160623_ID-SCAN\原始資料篩選\_$$_ALL_List-Local-User-Group.csv"
:::		forfiles /P C:\TEMP /s /m *_List-Local-User-Group.csv /c "cmd /c type @path >>C:\TEMP\20160623_ID-SCAN\原始資料篩選\_$$_ALL_List-Local-User-Group_0629.csv"

set FilePath=%CD%
for /F "tokens=1,2,3 delims=/ " %%a IN ('date /t') do (set ScanDate=%%a%%b%%c)
for /F "tokens=1,2,3 delims=: " %%a IN ('time /t') do (set ScanTime=%%b%%c)

:::::::::::CLEAN SET::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set FileName=
set FileConvertName=
SET TMP-FileConvertName=
set FileNameMM=
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set FileName="_IEVer_Query_iexplore.exe_FileVer_1-Put.csv"
set FileConvertName=%ScanDate%-%ScanTime%_IEVer_Query_iexplore.exe_FileVer.csv
forfiles /P %FilePath% /s /m %FileName% /c "cmd /c type @path >>%FilePath%\%FileConvertName%"
set TMP-FileConvertName=TMP-%FileConvertName%
powershell.exe "type %FilePath%\%FileConvertName% | sort -Unique | out-file %FilePath%\%TMP-FileConvertName%"
type %FilePath%\%TMP-FileConvertName% > %FilePath%\%FileConvertName%
del %TMP-FileConvertName%
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



:::::::::::CLEAN SET::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set FileName=
set FileConvertName=
SET TMP-FileConvertName=
set FileNameMM=
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set FileNameA=PCInfo_And_NowLoginID-UserName.csv
set FileNameB=PC-UserProfile_UseTime_PCAndUserInfoJoin.csv

set TMP-FileConvertNameA=TMP-CopyAll-%FileNameA%
set TMP-FileConvertNameB=TMP-CopyAll-%FileNameB%


MKDIR .\BranchIP-TMP
for /f %%a in ('dir /b .\BranchIP') do (
	copy %FilePath%\BranchIP\%%a\*%FileNameA% %FilePath%\BranchIP-TMP\%%a-%FileNameA%
	copy %FilePath%\BranchIP\%%a\*%FileNameB% %FilePath%\BranchIP-TMP\%%a-%FileNameB%
	)


copy %FilePath%\BranchIP-TMP\*%FileNameA% %FilePath%\%TMP-FileConvertNameA%
powershell.exe "type %FilePath%\%TMP-FileConvertNameA% | sort -Unique | out-file %FilePath%\%ScanDate%-%ScanTime%_%FileNameA%"
del %FilePath%\%TMP-FileConvertNameA%


copy %FilePath%\BranchIP-TMP\*%FileNameB% %FilePath%\%TMP-FileConvertNameB%
powershell.exe "type %FilePath%\%TMP-FileConvertNameB% | sort -Unique | out-file %FilePath%\%ScanDate%-%ScanTime%_%FileNameB%"
del %FilePath%\%TMP-FileConvertNameB%


PAUSE