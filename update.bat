@echo off

echo Writing Date/Time stamp
echo %date% - %time% >lastupdate.txt

echo Ensure we are on the 'main' branch
git branch -M main

echo Sync with GitHub first
git pull origin main --rebase

echo Stage changes based on your .gitignore 
git add .

echo Only commit if there are actually changes to avoid errors
git diff-index --quiet HEAD -- || git commit -m "Update: %date% %time%"

echo Push to the remote repository 
git push origin main

echo.
echo Update process finished at %date% - %time%

pause