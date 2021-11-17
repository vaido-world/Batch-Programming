Accessing Path variable from Windows Registry    

Current user, user-wide PATH variable.  
Note: Does not require administrator privilegies while using `reg.exe`  
Note: Setx can be used to trigger WM_SETTINGCHANGE 
```
SETX DUMMY ""
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /F /V DUMMY
```
```
HKEY_CURRENT_USER\Environment
```

System-Wide PATH variable  
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
```

Reference:
http://www.dowdandassociates.com/blog/content/howto-set-an-environment-variable-in-windows-command-line-and-registry/
