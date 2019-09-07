set /p tdrive=what is the letter of the target drive, aka where files are being conducted or removed from? 
set /p drive=what is the letter of the portable drive which you are using?
set /p machine=what machine are you using for this operation?
set /p user=what is the name of your user account? hint, Inc for comp, Nak for laptop 

cd %tdrive%:\Users\%user%\Documents 
echo "---------------------------------------------------------------------"
dir /s
set /p wait="----------------------------files present-----------------------------------------"
xcopy /E /Y %tdrive%:\Users\%user%\Documents %drive%:\%machine%\Documents
set /p wait="file safety check"


cd %tdrive%:\Users\%user%\Downloads
echo "---------------------------------------------------------------------"
dir /s
set /p wait="----------------------------files present-----------------------------------------"
xcopy /E /Y %tdrive%:\Users\%user%\Downloads %drive%:\%machine%\Downloads
set /p wait="file safety check"

cd %tdrive%:\Users\%user%\Desktop
echo "---------------------------------------------------------------------"
dir /s
set /p wait="----------------------------files present-----------------------------------------"
xcopy /E /Y %tdrive%:\Users\%user%\Desktop   %drive%:\%machine%\Desktop
set /p wait="file safety check"


cd %tdrive%:\Users\%user%\Pictures
echo "---------------------------------------------------------------------"
dir /s
set /p wait="----------------------------files present-----------------------------------------"
xcopy /E /Y %tdrive%:\Users\%user%\Pictures  %drive%:\%machine%\Pictures
set /p wait="file safety check"


set /p wait = operation complete 