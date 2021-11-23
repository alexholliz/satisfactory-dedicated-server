#!/bin/bash

declare install_dir=$(pwd)

declare install_txt=$install_dir/install.txt

if [ ! -f $install_txt ]; then
  echo "Server not installed or you need to clean the directory and start fresh\."
  exit 6
fi

function startserver () {
  cd $install_dir/steamapps/common/SatisfactoryDedicatedServer
  chmod +x FactoryServer.sh
  ./FactoryServer.sh
}

startserver
exit