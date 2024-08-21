@echo off

set DRMEMORY_PATH=D:\faks\master\verifikacija\projekat\alati\dr_memory\bin\drmemory.exe

set TEST_EXECUTABLE=..\calculator\src\x64\Debug\Calculator\CalculatorApp.exe

set OUTPUT_PATH=.\drmemory_report
if not exist %OUTPUT_PATH% mkdir %OUTPUT_PATH%

%DRMEMORY_PATH% -logdir "%OUTPUT_PATH%" -visual_studio -coverage  -- %TEST_EXECUTABLE%
