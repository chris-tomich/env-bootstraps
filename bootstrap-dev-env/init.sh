#!/bin/sh

UNAME_LOCATION=$(command -v uname)

if [ $UNAME_LOCATION = "" ]
then
    echo "This script is made for *nix systems that have uname. uname couldn't be found so the script will end."
    exit
fi

KERNEL_NAME=$(uname)

case $KERNEL_NAME in
    "Darwin") echo "Detected a MacOS environment."
        source ../bootstrap-macos-dev-env/init.sh
    ;;
    "Linux") echo "Detected a Linux environment."
        source ../bootstrap-linux-dev-env/init.sh
    ;;
    *) echo "The kernel type '$KERNEL_NAME' is not supported by this script."
        exit
    ;;
esac
