@Echo Off 
:: Don't forget to change your drive name if 7zip is not stored at "C:\"
FOR /D /r %%G in (*) DO "C:\Program Files\7-Zip\7z.exe" a -tzip "%%~nxG.cbz" "%%~nxG\*.*"
::FOR /D /r %%G in (*) DO RMDIR /S /Q "%%~nxG"
