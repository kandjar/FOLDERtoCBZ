@Echo Off 
FOR /D /r %%G in (*) DO 7za.exe a -tzip "%%~nxG.cbz" "%%~nxG\*.*"
::FOR /D /r %%G in (*) DO RMDIR /S /Q "%%~nxG"