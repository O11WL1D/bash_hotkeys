set /P var=[!--WARNING--!  - THIS WILL DELETE ALL FILES ON SYSTEM, CONT? y/n]
set /p user=What is the username for this machine, hint Inc for computer Nak for laptop 


if "%var%"=="y" (
  del /q C:\Users\%user%\Pictures\* 
  for /d %%x in (C:\Users\%user%\Pictures\*) do @rd /s /q "%%x" 
   
   
  del /q C:\Users\%user%\Downloads\* 
  for /d %%x in (C:\Users\%user%\Downloads\*) do @rd /s /q "%%x" 

  del /q C:\Users\%user%\Documents\* 
  for /d %%x in (C:\Users\%user%\Documents\*) do @rd /s /q "%%x" 

  del /q C:\Users\%user%\Desktop\* 
  for /d %%x in (C:\Users\%user%\Desktop\*) do @rd /s /q "%%x" 

 ) ELSE (
    set /P var = goodboy, press anything to exit
)