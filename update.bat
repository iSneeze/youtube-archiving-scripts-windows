@echo off
pushd "%~dp0\binaries"
del *.exe
mkdir temp
curl -L https://github.com/Kethsar/ytarchive/releases/download/latest/ytarchive_windows_amd64.zip > .\temp\ytarchive.zip
curl -L https://github.com/yt-dlp/yt-dlp/releases/download/2023.07.06/yt-dlp.exe > yt-dlp.exe

tar -xvzf ".\temp\ytarchive.zip"
rmdir /Q /S "temp"
winget install ffmpeg
pause
