@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
DEL "%appdata%\dmd_handlers.txt"
FOR %%i IN (%SystemDrive%\D\dmd2\windows\bin\*.exe) DO (
	SET "outputFile=%%~ni.cmd"
	ECHO %SystemRoot%\!outputFile!
	ECHO @ECHO OFF > "%SystemRoot%\!outputFile!"
	ECHO %%SystemDrive%%\D\dmd2\windows\bin\%%~nxi %%* >> "%SystemRoot%\!outputFile!"
	
	IF EXIST "%SystemRoot%\!outputFile!" ECHO %SystemRoot%\!outputFile! >> "%appdata%\dmd_handlers.txt"
	
)
pause