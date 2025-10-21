@echo off

cls

echo.
echo Sync Script files with development folder
echo.

pause

del C:\Thrustmaster\ED_TargetScript_T16000\SupportFiles\Output\TTSQueue\*.*
del C:\Thrustmaster\ED_TargetScript_T16000\SupportFiles\Output\TTSQueue\Archive\*.*


robocopy C:\thrustmaster\ed_targetscript_t16000\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\ /s /xf C:\thrustmaster\ed_targetscript_t16000\scriptfiles\ED_Usersettings.tmh /xd C:\thrustmaster\ed_targetscript_t16000\supportfiles\edmc /L 

rem robocopy C:\thrustmaster\ed_targetscript_t16000\scriptfiles\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\ScriptFiles /xf C:\thrustmaster\ed_targetscript_t16000\scriptfiles\ED_Usersettings.tmh /L 
rem robocopy C:\thrustmaster\ed_targetscript_t16000\SupportFiles\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\SupportFiles\ /s /xd C:\thrustmaster\ed_targetscript_t16000\supportfiles\edmc\edmc_plugins\edmc-ClickersFolly\__pycache__ /L  

rem robocopy C:\thrustmaster\ed_targetscript_t16000\scriptfiles\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\ScriptFiles /L 
rem robocopy C:\thrustmaster\ed_targetscript_t16000\SupportFiles\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\SupportFiles\ /s /L  

echo.
echo if output above is expected, press any key, otherwise press ctrl+c to quit
echo.

pause 

robocopy C:\thrustmaster\ed_targetscript_t16000\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\ /s /xf C:\thrustmaster\ed_targetscript_t16000\scriptfiles\ED_Usersettings.tmh /xd C:\thrustmaster\ed_targetscript_t16000\supportfiles\edmc

rem DONT COPY ED_UserSettings.tmh 
rem robocopy C:\thrustmaster\ed_targetscript_t16000\scriptfiles\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\ScriptFiles /xf C:\thrustmaster\ed_targetscript_t16000\scriptfiles\ED_Usersettings.tmh

rem DONT COPY EDMC files if present
rem robocopy C:\thrustmaster\ed_targetscript_t16000\SupportFiles\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\SupportFiles\ /s /xd C:\thrustmaster\ed_targetscript_t16000\supportfiles\edmc\edmc_plugins\edmc-ClickersFolly\__pycache__

rem robocopy C:\thrustmaster\ed_targetscript_t16000\scriptfiles\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\ScriptFiles
rem robocopy C:\thrustmaster\ed_targetscript_t16000\SupportFiles\ D:\Users\Den\OneDrive\Personal\Thrustmaster\TARGET\Clicker\Development\ED_Enhanced_t16000\SupportFiles\ /s

pause

exit
