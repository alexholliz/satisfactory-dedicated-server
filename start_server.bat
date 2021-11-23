@echo off

IF NOT EXIST install.txt (
  goto END
) ELSE (
  goto SERVERSTART
)

IF %errlevel% EQU 1 goto END
:SERVERSTART
cd %cd%\steamapps\common\SatisfactoryDedicatedServer
FactoryServer.exe -log -unattended

:END
echo Server not started, check install.
pause