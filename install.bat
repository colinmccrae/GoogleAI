@echo off
setlocal

:: Step 1: Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python 3.x.
    exit /b 1
)

:: Step 2: Create a virtual environment
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
    if %errorlevel% neq 0 (
        echo Failed to create virtual environment.
        exit /b 1
    )
)

:: Step 3: Activate the virtual environment
call venv\Scripts\activate
if %errorlevel% neq 0 (
    echo Failed to activate virtual environment.
    exit /b 1
)

:: Step 4: Install or update dependencies from requirements.txt
pip install -r requirements.txt -U
if errorlevel 1 (
    echo Error installing or updating dependencies. Check requirements.txt for errors.
)

:: Step 5: Check for the existence of .env file and set environment variables
if not exist ".env" (
    echo .env file not found. Creating a sample .env file.
    (
        echo # Google API Key
        echo GEMINI_API_KEY = "your-googleai-api-key"
    ) > .env
    echo Please edit the .env file and add your API key.
) else (
    :: Loop through each line in the .env file
    for /f "tokens=1,* delims==" %%x in (.env) do (
        :: Skip comments and blank lines
        if not "%%x"=="" if not "%%x"=="#" (
            :: Set environment variable using the key-value pair
            set %%x=%%y
        )
    )
)

:: Deactivate the virtual environment
deactivate

echo Setup complete. To activate the virtual environment, run: venv\Scripts\activate