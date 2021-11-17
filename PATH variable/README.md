Accessing Path variable from Windows Registry    

Current user, user-wide PATH variable.  
Note: Does not require administrator privilegies while using `reg.exe`  
```
HKEY_CURRENT_USER\Environment
```

System-Wide PATH variable  
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
```

Reference:
http://www.dowdandassociates.com/blog/content/howto-set-an-environment-variable-in-windows-command-line-and-registry/
