@ECHO OFF
REM Makes scriptable shortcuts to binaries inside C:/Windows Folder.

REM Creates .cmd script files inside C:/Windows
REM These .cmd script files are simply launching the binaries - act as a shortcut to the binaries.


REM This is assumed to be used in combination with updating PATH variables.
REM Command Prompt is initialy designed to not update the PATH variables on runtime.
REM While updating the PATH variables is a proper way to introduce binaries system-wide, 
REM the PATH variables are only available to the new instances of Command Prompt.
REM To bypass this limitation, this script copies Script Files into c:\Windows\ Folder.
REM The Script Files simply launch the binaries.
REM Since it is assumed that %PATH% paths will be fully updated/refreshed on the next Windows startup:
REM The handlers are removed from the c:\Windows\ Folder, on the next Windows startup.

REM command_prompt_handler.cmd         Gives Immediate Access to the binaries on already opened Command Prompt Windows.
REM command_prompt_handler_remove.cmd  Removes handler files on the next Windows Startup.

cd "%~dp0"
REM Requires Administrator Privilegies
call ".\command_prompt_handler.cmd"
REM Deletes itself after restart of operating system.
copy ".\command_prompt_handler_remove.cmd" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup\"
pause
