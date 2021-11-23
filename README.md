# Satisfactory Dedicated Server Installer / Launcher

Super simple installer and launcher for a Satisfactory Dedicated Server. Designed to be run from a desktop running Windows 10 or Linux (with wget and bash).

This is not a robust server installer designed to be run in production. This is a "I'll start up the server" for your friends in your discord call. 24/7 servers will require some additional configuration to [run as a service](https://satisfactory.fandom.com/wiki/Dedicated_servers/Running_as_a_Service).

# Info

install_server will download [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) and unzip it locally, then download and install the Satisfactory Dedicated Server app ID from Steam as an anonymous user.

start_server will launch the [Satisfactory Dedicated Server](https://satisfactory.fandom.com/wiki/Dedicated_servers) with default port, logging to the console window, and no dialogue prompts so it can run headlessly.

# Instructions

Clone this project to your target directory for running your server. Example:

```
C:\SatisfactoryServer
D:\GamesServers\Satisfactorycoolserver
/usr/local/gameservers/satisfactorydedicated
```
Once it's cloned, run the install_server script, and then run the start_server script. Scripts are designed to run from that Working Directory.