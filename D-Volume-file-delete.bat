set /P var=[!--WARNING--! This will delete all base files found on selected volume CONT? y/n]


set /p drive="what is the volume used in this operation?" 
set /p machine="what is the machine used in this operation?"







if "%var%"=="y" (

  

  del /q %drive%:\%machine%\Pictures\* 
  for /d %%x in (%drive%:\%machine%\Pictures\*) do @rd /s /q "%%x" 
   
   
  del /q %drive%:\%machine%\Downloads\* 
  for /d %%x in (%drive%:\%machine%\Downloads\*) do @rd /s /q "%%x" 

  del /q %drive%:\%machine%\Desktop\* 
  for /d %%x in (%drive%:\%machine%\Desktop\*) do @rd /s /q "%%x" 

  del /q %drive%:\%machine%\Documents\* 
  for /d %%x in (%drive%:\%machine%\Documents\*) do @rd /s /q "%%x" 

 ) ELSE (
    set /P var = goodboy, press anything to exit
)













