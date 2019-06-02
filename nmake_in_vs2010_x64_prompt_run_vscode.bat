@echo off
setlocal enableDelayedExpansion

call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x64

set _call_loc=%cd%
set _script_loc=%~dp0

cd %_script_loc%

if exist build\nmake10x64 (
    set /p is_rmdir_before=%_call_loc%\build\nmake10x64 exists. Delete this direcotory?[y/n]
    @rem echo !is_rmdir_before!
    @rem set /p t=lll
    if "%is_rmdir_before%" == "y" (
        rmdir /s/q build\nmake10x64
        @rem @echo rm
    )
)

if not exist build (
    mkdir build
)

if not exist build\nmake10x64 (
    mkdir build\nmake10x64
)

cd build\nmake10x64

if not exist Makefile (
    cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Debug ..\..
    REM nmake
)

cd ..\..\

rem visual studio code hold cmd prompt.
start "" cmd /b /c code . && exit 0

exit 0
endlocal
goto:eof 

