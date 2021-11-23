@echo off

set install_dir=%cd%

IF EXIST install.txt (
  goto END
) ELSE (
  goto ASKINSTALL
)

IF %errlevel% EQU 1 goto END
:ASKINSTALL
echo Do you want to install steamcmd in %install_dir%?
set /p CMDDIR=[y/n]
IF /I "%CMDDIR%" NEQ "y" GOTO END
echo/ 
echo Installing steamcmd in %install_dir%.
echo curl --output steamcmd.zip --url https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
echo tar -xf steamcmd.zip
echo del steamcmd.zip
echo/
curl --output steamcmd.zip --url https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
tar -xf steamcmd.zip
del steamcmd.zip

echo/
echo Do you want to install the Satisfactory dedicated server in %install_dir%?
set /p DIR=[y/n]
IF /I "%DIR%" NEQ "y" GOTO END
echo/
echo Installing Satisfactory dedicated server in %install_dir%.
echo steamcmd +force_install_dir %install_dir% +login anonymous +app_update 1690800 validate +quit
steamcmd +force_install_dir %install_dir% +login anonymous +app_update 1690800 validate +quit
echo install=true>install.txt
:END
echo Gotta blast!
pause