@echo off
title LifeOS - Create Routing Structure

echo.
echo ========================================
echo     Creating LifeOS Routing Structure
echo ========================================
echo.

REM Repository root (parent of this script's folder)
set ROOT=%~dp0..\frontend\src

REM -------------------------------------------------
REM Create folders
REM -------------------------------------------------

call :CreateFolder "%ROOT%\pages\public"
call :CreateFolder "%ROOT%\pages\app"

REM -------------------------------------------------
REM Create routing files
REM -------------------------------------------------

call :CreateAppRoutes
call :CreateProtectedRoute

REM -------------------------------------------------
REM Create layouts
REM -------------------------------------------------

call :CreatePublicLayout
call :CreateAppLayout

REM -------------------------------------------------
REM Create pages
REM -------------------------------------------------

call :CreatePage "%ROOT%\pages\public\HomePage.tsx" HomePage Home
call :CreatePage "%ROOT%\pages\public\LoginPage.tsx" LoginPage Login
call :CreatePage "%ROOT%\pages\public\RegisterPage.tsx" RegisterPage Register

call :CreatePage "%ROOT%\pages\app\DashboardPage.tsx" DashboardPage Dashboard
call :CreatePage "%ROOT%\pages\app\SettingsPage.tsx" SettingsPage Settings

echo.
echo ========================================
echo Routing structure complete.
echo ========================================
echo.

pause
exit /b

REM =================================================
REM Functions
REM =================================================

:CreateFolder
if exist %~1 (
    echo [EXISTS ] %~1
) else (
    mkdir %~1
    echo [CREATED] %~1
)
exit /b

:CreatePage
if exist %~1 (
    echo [EXISTS ] %~1
) else (
    (
        echo function %2^(^) {
        echo^    return ^(
        echo^        ^<div^>
        echo^            ^<h1^>%3^</h1^>
        echo^        ^</div^>
        echo^    ^);
        echo }
        echo.
        echo export default %2;
    )>%~1

    echo [CREATED] %~1
)
exit /b

:CreateAppLayout
if exist "%ROOT%\layouts\AppLayout.tsx" (
    echo [EXISTS ] %ROOT%\layouts\AppLayout.tsx
) else (
    (
        echo import { Outlet } from 'react-router-dom';
        echo.
        echo function AppLayout^(^) {
        echo^    return ^(
        echo^        ^<div^>
        echo^            ^<Outlet /^>
        echo^        ^</div^>
        echo^    ^);
        echo }
        echo.
        echo export default AppLayout;
    )>"%ROOT%\layouts\AppLayout.tsx"

    echo [CREATED] %ROOT%\layouts\AppLayout.tsx
)
exit /b

:CreatePublicLayout
if exist "%ROOT%\layouts\PublicLayout.tsx" (
    echo [EXISTS ] %ROOT%\layouts\PublicLayout.tsx
) else (
    (
        echo import { Outlet } from 'react-router-dom';
        echo.
        echo function PublicLayout^(^) {
        echo^    return ^(
        echo^        ^<div^>
        echo^            ^<Outlet /^>
        echo^        ^</div^>
        echo^    ^);
        echo }
        echo.
        echo export default PublicLayout;
    )>"%ROOT%\layouts\PublicLayout.tsx"

    echo [CREATED] %ROOT%\layouts\PublicLayout.tsx
)
exit /b

:CreateProtectedRoute
if exist "%ROOT%\app\ProtectedRoute.tsx" (
    echo [EXISTS ] %ROOT%\app\ProtectedRoute.tsx
) else (
    (
        echo import { ReactNode } from 'react';
        echo.
        echo interface ProtectedRouteProps {
        echo^    children: ReactNode;
        echo }
        echo.
        echo function ProtectedRoute^({ children }: ProtectedRouteProps^) {
        echo^    return children;
        echo }
        echo.
        echo export default ProtectedRoute;
    )>"%ROOT%\app\ProtectedRoute.tsx"

    echo [CREATED] %ROOT%\app\ProtectedRoute.tsx
)
exit /b

:CreateAppRoutes
if exist "%ROOT%\app\AppRoutes.tsx" (
    echo [EXISTS ] %ROOT%\app\AppRoutes.tsx
) else (
    (
        echo function AppRoutes^(^) {
        echo^    return ^<^>App Routes^</^>;
        echo }
        echo.
        echo export default AppRoutes;
    )>"%ROOT%\app\AppRoutes.tsx"

    echo [CREATED] %ROOT%\app\AppRoutes.tsx
)
exit /b