call runcrud
if "%ERRORLEVEL%" == "0" goto open_chrome
echo.
echo runcrud has an error

:open_chrome
start chrome.exe http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo.
echo Opening chrome failed

:end
echo.
echo Website open