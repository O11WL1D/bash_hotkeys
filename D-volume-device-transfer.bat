
set /p tdrive=what is the letter of the target drive, aka where files are being conducted or removed from? 
set /p drive=what is the letter of the portable drive which you are using?
set /p machine=enter machine catagory for this operation

%drive%:

cd %drive%:\%machine%\Documents & dir /s
echo "---------------------------------------------------------------------"

set /p wait="----------------------------files present-----------------------------------------"
xcopy /E  %drive%:\%machine%\Documents %tdrive%:\%machine%\Documents
set /p wait="file safety check"



cd %drive%:\%machine%\Downloads
echo "---------------------------------------------------------------------"
dir /s
set /p wait="----------------------------files present-----------------------------------------"
xcopy /E  %drive%:\%machine%\Downloads %tdrive%:\%machine%\Downloads
set /p wait="file safety check"

cd %drive%:\%machine%\Desktop
echo "---------------------------------------------------------------------"
dir /s
set /p wait="----------------------------files present-----------------------------------------"
xcopy /E  %drive%:\%machine%\Desktop  %tdrive%:\%machine%\Desktop
set /p wait="file safety check"


cd %drive%:\%machine%\Pictures
echo "---------------------------------------------------------------------"
dir /s
set /p wait="----------------------------files present-----------------------------------------"
xcopy /E  %drive%:\%machine%\Pictures %tdrive%:\%machine%\Pictures
set /p wait="file safety check"


set /p wait = operation complete