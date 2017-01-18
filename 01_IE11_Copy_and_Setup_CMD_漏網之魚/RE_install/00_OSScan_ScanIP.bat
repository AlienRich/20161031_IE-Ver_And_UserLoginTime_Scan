@echo OFF

SET @Prefix=IPList_ALL

del /f /q .\IPList_x64.txt
del /f /q .\IPList_x86.txt

for /f %%i in (.\%@Prefix%.txt) do (
Echo %%i && dir /b "\\%%i\c$\P*" | find "Program Files (x86)"
if exist "\\%%i\c$\Program Files (x86)" echo %%i>>.\IPList_x64.txt
if not exist "\\%%i\c$\Program Files (x86)" echo %%i>>.\IPList_x86.txt
)
PAUSE

:::::	Echo %%i &&  dir /b "\\%%i\c$\P*" | find "Program Files (x86)" >> .\IPList_x64.txt"