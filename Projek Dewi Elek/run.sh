#!/bin/bash

# Biology Learning Platform - Run Script for Mac/Linux
# This script starts the Flask backend

echo ""
echo "╔═════════════════════════════════════════════════════════╗"
echo "║   Biology Learning Platform - Biologi Pintar            ║"
echo "║   Starting Application...                               ║"
echo "╚═════════════════════════════════════════════════════════╝"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: Python3 is not installed"
    echo "Please install Python3 from https://www.python.org"
    exit 1
fi

# Check Python version
python3 --version

# Install requirements if needed
if ! python3 -c "import flask" 2>/dev/null; then
    echo "📦 Installing required packages..."
    pip3 install -r requirements.txt
fi

# Start Flask backend
echo "🚀 Starting Flask backend server..."
echo "📌 Backend API: http://localhost:5000"
echo ""
echo "💡 Tips:"
echo "   - Press Ctrl+C to stop the server"
echo "   - Open http://localhost:5000 or open Projek.html in browser"
echo ""

python3 app.py
