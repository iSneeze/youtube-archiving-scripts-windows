@echo off
set /p "start=Choose a start timestamp (seconds, or 1:23:45.123 format): "
set /p "end=Choose an end timestamp  (seconds, or 1:23:45.123 format): "
set /p "filename=Choose a filename for the clip: "

pushd %~dp0

for %%f in (%*) do ffmpeg -ss %start% -to %end% -i %%f -c:v libx264 -preset slower -crf 23 ".\%filename%.mp4"
pause
