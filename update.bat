@echo off

echo Stage all changes in whitelisted folders
git add .

echo Commit with a timestamped message
set msg=Update: %date% %time%
git commit -m "%msg%"

echo Push to GitHub
git push origin main

echo Writing Date/Time stamp
echo %date% - %time% >lastupdate.txt

echo.
echo Repository updated successfully at %time%
pause