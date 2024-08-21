@echo off
setlocal


set VCTargetsPath=C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Microsoft\VC\v170\

set TEST_PATH=D:\faks\master\verifikacija\projekat\git\2023_Analysis_calculator\calculator\src\CalculatorUnitTests
set COVERAGE_FILE=coverage.xml
set REPORT_DIR=%~dp0report
set ASSEMBLY_FILTER=MyTestedAssembly.dll

if not exist "%REPORT_DIR%" mkdir "%REPORT_DIR%"


cd /d %TEST_PATH%


dotnet test --collect:"XPlat Code Coverage"


dotnet-coverage collect -f xml -o %COVERAGE_FILE% dotnet test


reportgenerator -reports:%COVERAGE_FILE% -targetdir:%REPORT_DIR% -assemblyfilters:+%ASSEMBLY_FILTER%


pause

endlocal
