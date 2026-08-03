@echo off
title LifeOS - Create Frontend Structure

echo.
echo ========================================
echo    Creating LifeOS Frontend Structure
echo ========================================
echo.

set ROOT=%~dp0..\frontend\src

call :CreateFolder "%ROOT%\app"
call :CreateFolder "%ROOT%\assets"
call :CreateFolder "%ROOT%\components"
call :CreateFolder "%ROOT%\contexts"
call :CreateFolder "%ROOT%\features"
call :CreateFolder "%ROOT%\hooks"
call :CreateFolder "%ROOT%\layouts"
call :CreateFolder "%ROOT%\pages"
call :CreateFolder "%ROOT%\services"
call :CreateFolder "%ROOT%\styles"
call :CreateFolder "%ROOT%\types"
call :CreateFolder "%ROOT%\utils"

echo.
echo ========================================
echo Frontend folder structure complete.
echo ========================================
echo.

pause
exit /b

:CreateFolder
if exist %1 (
    echo [EXISTS ] %1
) else (
    mkdir %1
    echo [CREATED] %1
)
exit /b