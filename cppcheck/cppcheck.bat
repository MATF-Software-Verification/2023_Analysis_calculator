@echo off

set CPPCHECK_SOURCE_DIR=.\cppcheck
set CPPCHECK_BUILD_DIR=.\cppcheck\build
set CPPCHECK_EXE=%CPPCHECK_BUILD_DIR%\bin\Release\cppcheck.exe
set SOURCE_PATH=..\calculator\src\Calculator.sln
set OUTPUT_PATH=.\report.xml


echo Building Cppcheck using CMake...
mkdir "%CPPCHECK_BUILD_DIR%"
cd "%CPPCHECK_BUILD_DIR%"
cmake ..
cmake --build . --config Release
cd ..
cd ..

echo Cppcheck build completed.

echo %cd%


echo Running Cppcheck on the project...

"%CPPCHECK_EXE%" --xml --enable=all --inconclusive --force --platform=win64 --suppress=missingIncludeSystem --output-file=%OUTPUT_PATH% --project="%SOURCE_PATH%"

echo Cppcheck analysis completed

pause


