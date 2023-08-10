@echo off
set /p "id=Enter Video URL: "
set /p "t=# of threads (press enter for default): " || SET "t=1"
set title="downloads\%%(channel)s\%%(channel).4s-%%(upload_date>%%Y%%m%%d)s_%%(title).50s-%%(id)s.%%(ext)s"
pushd %~dp0
if not exist .\downloads mkdir downloads
echo %title%
".\binaries\yt-dlp.exe" -S "res:1080" -f "bv*+ba/b" -N %t% --retry-sleep fragment:exp=10:20 --live-from-start --wait-for-video 60 --cookies ".\binaries\cookies.txt" --embed-metadata --embed-thumbnail -o %title% %id%  --restrict-filenames
pause