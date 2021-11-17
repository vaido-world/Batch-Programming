Accessing Path variable from Windows Registry    

## Current user, user-wide PATH variable.  
Note: Does not require administrator privilegies while using `reg.exe`  

```
HKEY_CURRENT_USER\Environment
```

Note: Setx can be used to trigger WM_SETTINGCHANGE without administrator privilegies.
```
SETX DUMMY ""
REG DELETE "HKEY_CURRENT_USER\Environment" /F /V DUMMY
```

## System-Wide PATH variable  
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
```

Note: Setx can be used to trigger WM_SETTINGCHANGE with administrator privilegies.
```
SETX /m DUMMY ""
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /F /V DUMMY
```

---
Reference:
http://www.dowdandassociates.com/blog/content/howto-set-an-environment-variable-in-windows-command-line-and-registry/
