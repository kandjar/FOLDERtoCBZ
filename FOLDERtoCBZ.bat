@Echo Off
@Echo Off
echo ******************
echo      FOLDERtoCBZ     
echo ******************
FOR /D /r "folder" %%G in (*) DO (
	echo %%G in process, please wait...
	"C:\Program Files\7-Zip\7z.exe" a -tzip "%~dp0\cbz\%%~nxG.cbz" "%~dp0\folder\%%~nxG\*.*" >nul
	MKDIR "%~dp0\Folder done\%%~nxG" >nul
	MOVE "%~dp0\folder\%%~nxG\*" "%~dp0\Folder done\%%~nxG\" >nul
	RMDIR /S /Q "%~dp0\folder\%%~nxG\" >nul
	echo Done
	echo __________
	)
pause