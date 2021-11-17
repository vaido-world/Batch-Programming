@ECHO OFF
FOR /F %%u IN (%appdata%\dmd_handlers.txt) DO DEL %%u
pause
