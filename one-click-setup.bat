@echo off
SET UI_URL=https://github.com/PJWSTK-Data-Science-Dojo/hackyeah2023-ui
SET API_URL=https://github.com/PJWSTK-Data-Science-Dojo/hackyeah2023-api
SET ML_URL=https://github.com/PJWSTK-Data-Science-Dojo/hackyeah2023-ml

SET FOLDER1=hackyeah2023-ui
SET FOLDER2=hackyeah2023-api
SET FOLDER3=hackyeah2023-ml

SET ANOTHER_BATCH_FILE=.\complete-setup-from-local-repos-windows.bat

git clone %UI_URL% %FOLDER1%
git clone %API_URL% %FOLDER2%
git clone %ML_URL% %FOLDER3%
cd %FOLDER1%
git pull
cd ../%FOLDER2% 
git pull
cd ../%FOLDER3%
git pull
cd ../src

call %ANOTHER_BATCH_FILE%