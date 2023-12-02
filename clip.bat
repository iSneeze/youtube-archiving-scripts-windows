@echo off
set /p "start=Choose a start timestamp (seconds, or 1:23:45.123 format): "
set /p "end=Choose an end timestamp  (seconds, or 1:23:45.123 format): "
set /p "filename=Choose a filename for the clip: "
if [%filename%]==[] set filename="output"

pushd %~dp0

ffmpeg -ss %start% -to %end% -i "%~1" -c:v libx264 -preset slower -crf 23 ".\%filename%.mp4"
pause
