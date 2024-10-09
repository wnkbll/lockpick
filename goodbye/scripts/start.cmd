@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)

start "" ..\%_arch%\goodbyedpi.exe -9 --fake-gen 22 --fake-from-hex 68910c991c51faecae491981b96e3d9f325ba3f326bd31c65c91201b23556109490f98f7a808faa3b75077191ea3ab0b7b9484d141c3c75d4f13 --blacklist ..\russia-blacklist.txt --blacklist ..\russia-youtube.txt

POPD
POPD
