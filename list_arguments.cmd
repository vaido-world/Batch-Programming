@ECHO OFF
SETLOCAL EnableDelayedExpansion

REM ECHO List of arguments passed: %*

SET argCount=0
FOR %%x IN (%*) DO (
   SET /A argCount+=1
   SET "argVec[!argCount!]=%%~x"
)

REM ECHO Number of processed arguments: %argCount%

FOR /L %%i IN (1,1,%argCount%) DO (
	ECHO %%i - "!argVec[%%i]!"
)

