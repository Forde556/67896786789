@echo off
chcp 65001 >nul
cd /d "%~dp0"
set "PATH=C:\Program Files\nodejs;%PATH%"
title منصة لبلبي - منصة ترجمة وتلخيص وترتيب محاضرات طب الأسنان
cls
echo ====================================================================
echo   🦷 منصة لَبلَبِي (Lablabi Platform)
echo   المنصة الطبية الذكية لترجمة وتلخيص وترتيب محاضرات طب الأسنان
echo   إشراف وتطوير: د. عبدالله فاضل (https://t.me/FordeReter)
echo ====================================================================
echo.
echo [1/2] جاري فحص بيئة العمل وتشغيل المنصة...
echo.
echo [2/2] جاري فتح المنصة في المتصفح على الرابط http://localhost:5173 ...
start "" "http://localhost:5173"
call npm run dev -- --port 5173
pause
