@ECHO OFF
cd "%~dp0"
REM Requires Administrator Privilegies
call ".\command_prompt_handler.cmd"
REM Deletes itself after restart of operating system.
copy ".\command_prompt_handler_remove.cmd" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup\"
pause