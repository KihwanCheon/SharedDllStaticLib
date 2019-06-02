@echo off


if not exist build (
    mkdir build
)

call:make_solution build\msvc10x64 "Visual Studio 10 2010" x64

:make_solution
setlocal enableDelayedExpansion
@echo %1 %2 %3 %4 %5
set _dir_name=%1
set _generator=%2
set _platform=%3

if not exist %_dir_name% (
    mkdir %_dir_name%
    cd %_dir_name%
    cmake -G %_generator% -A %_platform% --build ..\..\
    cd ..\..\
)

if not exist %_dir_name%\SharedDllStaticLib.sln (
    rmdir /s /q %_dir_name%
    @echo making solution failed! check your visual studio versions.
)

endlocal
goto:eof 