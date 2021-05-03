@echo off
rem Compile and link a BASIC program using Quick Basic 4.5
rem The .BAS program name must be %1
rem RBK 7/9/95
rem
rem Check input file.
CLS
IF NOT "%1"=="" GOTO ERROR2
ECHO.
ECHO No .BAS filename specified.
ECHO.
goto END
rem
:ERROR2
IF EXIST %1.BAS GOTO DO_IT
ECHO.
ECHO %1.BAS does not exist in current directory.
ECHO.
goto END
rem
:DO_IT
ECHO.
ECHO   %1
ECHO.
rem
rem Set up environment
SET LIB=F:\QB45
SET INCLUDE=F:\QB45
rem
rem Compile
F:\QB45\BC %1.BAS, %1.OBJ, %1.LST /T /C:512 /A
rem
rem Link - use overlay option to reduce .EXE code size.
F:\QB45\LINK %1.OBJ, %1.EXE, %1.MAP, BRUN45.LIB /E
rem
rem Clean up files and environment
DEL %1.OBJ
DEL %1.LST
DEL %1.MAP
SET LIB=
SET INCLUDE=
:END
