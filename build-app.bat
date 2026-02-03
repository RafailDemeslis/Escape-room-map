@echo off
echo ========================================
echo   ESCAPE ROOMS APP - BUILD SCRIPT
echo ========================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Node.js is not installed!
    echo Please download and install from: https://nodejs.org/
    pause
    exit /b 1
)

echo [1/5] Node.js found: 
node --version
echo.

echo [2/5] Installing dependencies...
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Failed to install dependencies
    pause
    exit /b 1
)
echo.

echo [3/5] Initializing Capacitor...
call npx cap init "Escape Rooms" com.escaperooms.app --web-dir=.
echo.

echo [4/5] Adding Android platform...
call npx cap add android
if %ERRORLEVEL% NEQ 0 (
    echo [WARNING] Android platform might already exist or failed to add
)
echo.

echo [5/5] Syncing files...
call npx cap sync
echo.

echo ========================================
echo   BUILD COMPLETE!
echo ========================================
echo.
echo Next steps:
echo 1. Generate app icons: Open generate-icons.html in browser
echo 2. Open Android Studio: npm run cap:open:android
echo 3. Build APK in Android Studio
echo.
echo For detailed instructions, see BUILD-INSTRUCTIONS.md
echo.
pause
