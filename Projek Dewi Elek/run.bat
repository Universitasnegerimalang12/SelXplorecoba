@echo off
REM Biology Learning Platform - Run Script
REM This script starts the Flask backend and opens the HTML frontend

echo.
echo ╔═════════════════════════════════════════════════════════╗
echo ║   Biology Learning Platform - Biologi Pintar            ║
echo ║   Starting Application...                               ║
echo ╚═════════════════════════════════════════════════════════╝
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Error: Python is not installed or not in PATH
    echo Please install Python from https://www.python.org
    pause
    exit /b 1
)

REM Check if requirements are installed
pip show flask >nul 2>&1
if errorlevel 1 (
    echo 📦 Installing required packages...
    pip install -r requirements.txt
)

REM Start Flask backend in a new window
echo 🚀 Starting Flask backend server...
start "Biology Platform Backend" python app.py

REM Wait a moment for the server to start
timeout /t 3 /nobreak

REM Open the HTML file in default browser
echo 🌐 Opening platform in browser...
start Projek.html

echo.
echo ✅ Platform is now running!
echo.
echo 📌 Frontend: Open browser to the HTML file
echo 📌 Backend API: http://localhost:5000
echo.
echo 💡 Tips:
echo    - Close the command window to stop the server
echo    - Refresh browser if images don't load
echo    - Check console (F12) for errors
echo.
pause
