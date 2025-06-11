@echo off
call "C:\t7compiler\DebugCompiler.exe" "compiled.gscc" "T7" "scripts/shared/duplicaterender_mgr.gsc" "--inject" "--noupdate"
pause
@echo off