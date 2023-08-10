@echo off
set /p "preset=Choose a preset(1-10, default 7): " || SET "preset=7"
set /p "crf=Set the quality (CRF, 1-63, lower = better quality but bigger filesize, default 45): " || SET "crf=45"

pushd %~dp0

for %%f in (%*) do ffmpeg -n -i %%f -c:v libsvtav1 -g 240 -svtav1-params "preset=%preset%:crf=%crf%:tune=0:enable-overlays=1:scd=1" -pix_fmt yuv420p10le -c:a copy ".\%%~nf-av1.mkv"
pause
