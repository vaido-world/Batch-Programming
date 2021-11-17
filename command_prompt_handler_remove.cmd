@ECHO OFF
REM Requires Administrator Privilegies

FOR /F %%u IN (%appdata%\dmd_handlers.txt) DO DEL %%u
DEL "%appdata%\dmd_handlers.txt"

REM Deletes itself from startup folder. Requires administrator prompt on Windows startup..
IF "%~DP0" == "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup\" DEL %0
pause
