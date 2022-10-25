set tdrive=C
set drive=F
set machine=laptop
set user=inksd
set label=05122022

echo set key=hahahblabla

echo this is a dummy encryption password, it would be awfully silly to broadcast the
echo keys I use to encrypt my files all over the internet right? 




echo --------LOCATE KEYS IN CONSTANT DESKTOP FILE-----------------------





echo this program will copy all files in a specified folder.
echo tdrive is the directory that you copy from 
echo drive is the directory that you send the encrypted files to, i.e. not ur computer.  





:A 


timeout /t 14400







%drive%:
cd %drive%:\%machine%\Documents
7z u -p%key% %label% %tdrive%:\Users\%user%\Documents






timeout /t 300

cd %drive%:\%machine%\Downloads
7z u -p%key% %label% %tdrive%:\Users\%user%\Downloads  








timeout /t 300

cd %drive%:\%machine%\Desktop
7z u -p%key% %label% %tdrive%:\Users\%user%\Desktop
 






timeout /t 300

cd %drive%:\%machine%\Pictures
7z u -p%key% %label% %tdrive%:\Users\%user%\Pictures











Set count=1
if %count%==1 goto :A



 