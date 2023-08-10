@echo off
set /p "id=Enter Video URL: "
set title="downloads\misc\%%(upload_date>%%Y-%%m-%%d)s_%%(title).50s-%%(id)s.%%(ext)s"
pushd %~dp0
if not exist .\downloads mkdir downloads
echo %title%
".\binaries\yt-dlp.exe" -S "vext, vcodec, aext"  --cookies-from-browser firefox --embed-metadata --embed-thumbnail -o %title% %id%  --restrict-filenames
pause
