@echo off
setlocal enabledelayedexpansion

cls
CALL compilar.bat

REM Establece el directorio de pruebas
set "dir=./tests/"

REM Itera sobre los archivos en el directorio
for %%f in (%dir%*.txt) do (
    java -cp bin def.Main !dir!%%~nxf
)

endlocal
