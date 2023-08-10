@echo off
set /p "id=Enter stream URL: "
set /p "prefix=Enter short channel name for filename: "
pushd %~dp0
if not exist .\%prefix% mkdir %prefix%
echo %prefix%
".\binaries\ytarchive.exe" -threads 2 -t -v -o .\downloads\%prefix%\%prefix%-%%(upload_date)s-%%(title)s-%%(id)s --vp9 --add-metadata -r 180 --no-frag-files --cookies ".\binaries\cookies.txt" --monitor-channel %id% best
pause