@echo off

pushd %~dp0

for %%f in (%*) do ffmpeg -i %%f -vn -c:a copy ./%%~nf.m4a
pause
