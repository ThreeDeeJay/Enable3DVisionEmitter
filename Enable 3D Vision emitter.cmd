@Echo Off
Echo Updating registry...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\NVIDIA Corporation\Global\Stereo3D" /V "StereoViewerType" /T "REG_DWORD" /D "00000001" /F <NUL
IF %ERRORLEVEL% EQU 0 (
	Echo Success.
	) else (
	Echo Failed to update registry key. 
	Echo Right-click "%~nx0" script then Run as administrator.
	)
Echo.
Echo Enabling 3D Vision
"C:\Program Files (x86)\NVIDIA Corporation\3D Vision\nvstlink.exe" /enable
IF %ERRORLEVEL% EQU 0 (
	Echo Success.
	) else (
	Echo Failed to enable 3D Vision.
	Echo Error code: %ERRORLEVEL%
	)
pause