@echo off
chcp 65001 >nul
cd /d "%~dp0"
set "PATH=C:\Program Files\nodejs;%PATH%"
title منهاج - منصة ترجمة وتلخيص محاضرات طب الأسنان
echo ============================================================
echo   منهاج - منصة ترجمة وتلخيص وترتيب محاضرات طب الأسنان
echo   المطور: د. عبدالله فاضل (https://t.me/FordeReter)
echo   برعاية: شركة FRD وقناة الأسهل بطب الأسنان
echo ============================================================
echo.
echo [1/2] جاري تجهيز الخادم المحلي...
echo [2/2] جاري فتح المنصة على المتصفح: http://localhost:5173 ...
echo.
start "" "http://localhost:5173"
call npm run dev
pause
