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
Note: Does require administrator privilegies while using `reg.exe`  
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
```

Note: Setx can be used to trigger WM_SETTINGCHANGE with administrator privilegies.
```
SETX /m DUMMY ""
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /F /V DUMMY
```
---

## Execute file without typing file extension

> [^1]The PathExt is an Environment Variable that stores a list of the file extensions for operation system to execute. When running a command line that does not contain an extension, the system uses the value of this environment variable to determine which extensions to look for and in what order, such as .com first, follow by .exe, .bat, .cmd, which happens to be the default value stored in the PathExt by Windows.
>
> To find out what’s in the PathExt, run the following command in the command prompt window.
> 
> echo %pathext%
> .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC


[^1]: https://www.nextofwindows.com/what-is-pathext-environment-variable-in-windows

---
Reference:
http://www.dowdandassociates.com/blog/content/howto-set-an-environment-variable-in-windows-command-line-and-registry/
