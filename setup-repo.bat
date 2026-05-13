@echo off
REM ============================================================
REM CrowdGatherGo - local git repo bootstrap
REM Run this from inside E:\Claude-Work\Outputs\CrowdGatherGo\
REM ============================================================

setlocal

echo.
echo [1/5] Copying index.html from parent Outputs folder...
if not exist "..\index.html" (
    echo   ERROR: ..\index.html not found.
    echo   Make sure this script is inside E:\Claude-Work\Outputs\CrowdGatherGo\
    echo   and that index.html exists in E:\Claude-Work\Outputs\
    pause
    exit /b 1
)
copy /Y "..\index.html" "index.html" >nul

echo [2/5] Initializing git repository (branch: main)...
git init -b main >nul 2>&1
if errorlevel 1 (
    echo   git init -b main failed - falling back to legacy init + rename
    git init >nul
    git checkout -b main >nul 2>&1
)

echo [3/5] Setting local git identity...
git config user.name  "Atif Hussain"
git config user.email "atif.hussain@gmail.com"

echo [4/5] Staging and committing...
git add index.html README.md .gitignore
git commit -m "Initial commit: CrowdGatherGo website" >nul

echo [5/5] Adding GitHub remote (HTTPS)...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/atif-hussain/CrowdGatherGo.git

echo.
echo ============================================================
echo  Local repo ready. Two more steps:
echo ============================================================
echo.
echo  STEP A - Create the empty repo on GitHub (browser):
echo    https://github.com/new
echo      Owner:        atif-hussain
echo      Name:         CrowdGatherGo
echo      Visibility:   Public (or Private)
echo      DO NOT tick:  Add README, .gitignore, or license
echo      Click:        Create repository
echo.
echo  STEP B - Push from this folder:
echo    git push -u origin main
echo.
echo  After push, enable GitHub Pages:
echo    Settings -^> Pages -^> Source: main / root
echo    Live URL: https://atif-hussain.github.io/CrowdGatherGo/
echo.
pause
endlocal
