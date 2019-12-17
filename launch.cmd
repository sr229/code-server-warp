@ECHO OFF

SETLOCAL

SET "NODE_DIST=node-v10.17.0"
SET "APP_MAIN_JS=app\out\vs\server\main.js"

SET "NODE_EXE=%~dp0\%NODE_DIST%-win*\node.exe"
SET "NODE_PATH=%~dp0\%NODE_DIST%-win*\node_modules"
SET "APP_MAIN_JS_PATH=%~dp0\%APP_MAIN_JS%"

CALL %NODE_EXE% %APP_MAIN_JS_PATH% %*
EXIT /B %ERRORLEVEL%