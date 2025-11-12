@echo off
REM Quick Setup Script untuk Billing TUS Network (Windows)
REM Double-click file ini atau jalankan di Command Prompt/PowerShell

echo ==================================
echo Billing TUS Network - Quick Setup
echo ==================================
echo.

REM Check Node.js
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [FAILED] Node.js tidak terinstall
    echo [INFO] Download dari https://nodejs.org/
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('node -v') do set NODE_VERSION=%%i
echo [OK] Node.js terinstall: %NODE_VERSION%

for /f "tokens=*" %%i in ('npm -v') do set NPM_VERSION=%%i
echo [OK] NPM terinstall: %NPM_VERSION%
echo.

REM Check Git
where git >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    for /f "tokens=*" %%i in ('git --version') do set GIT_VERSION=%%i
    echo [OK] Git terinstall: %GIT_VERSION%
) else (
    echo [WARNING] Git tidak terinstall
    echo [INFO] Download dari https://git-scm.com/
)

echo.
echo Installing dependencies...
call npm install

echo.
echo ==================================
echo [SUCCESS] Setup Complete!
echo ==================================
echo.
echo Start server dengan:
echo   - npm start
echo   - atau buka http://localhost:8888
echo.
echo Dokumentasi:
echo   - README.md
echo   - GITHUB_DEPLOY_GUIDE.md
echo.
pause
