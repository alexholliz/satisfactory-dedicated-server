@echo off

set install_dir=%cd%

IF NOT EXIST install.txt (
  goto END
) ELSE (
  goto SERVERSTART
)

IF %errlevel% EQU 1 goto END
:SERVERSTART
cd %install_dir%\steamapps\common\SatisfactoryDedicatedServer
FactoryServer.exe -log -unattended

:END
echo Server not started, check install.
pause