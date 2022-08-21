#!/bin/bash
FILE=./phigros.ab
FILESS=./musedash.ab
FILES=./orzmic.ab
echo please install phigros from taptap to work
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    echo delete old file
    rm -r $FILE
else 
    echo "$FILE does not exist."
fi
if [ -f "$FILES" ]; then
    echo "$FILES exists."
    echo delete old file
    rm -r $FILES
else 
    echo "$FILES does not exist."
fi
if [ -f "$FILESS" ]; then
    echo "$FILESS exists."
    echo delete old file
    rm -r $FILESS
else 
    echo "$FILESS does not exist."
fi
echo update termux 
pkg update -y && pkg upgrade -y
echo install wget
pkg install wget -y
echo install adb
curl -s https://raw.githubusercontent.com/rendiix/termux-adb-fastboot/master/install.sh | bash
clear
echo "What game you want to to get data"
echo "You Can Choose At Least 1 Option Otherwise The script will broken"
echo "Phigros (y/n)"
read phigros
if [ $phigros ==  "y"]; then
    echo "you choose this option right, so don't choose orther option"
    wget https://github.com/tathaha/Termux-phigros/raw/main/phigros.ab
    d="phigros.ab"
esle
    echo "choose an orther option"
fi
echo "Muse Dash (y/n)"
echo "This allow for musedash from Google Play"
read musedash
if [ $musedash ==  "y"]; then
    echo "you choose this option right, so don't choose orther option"
    wget https://github.com/tathaha/Termux-phigros/raw/main/musedash.ab
    d="musedash.ab"
esle
    echo "choose an orther option"
fi
echo "Orzmic (y/n)"
read orzmic
if [ $orzmic ==  "y"]; then
    echo "you choose this option right, so don't choose orther option"
    wget https://github.com/tathaha/Termux-phigros/raw/main/orzmic.ab
    d="orzmic.ab"
esle
    echo "this is end of option backup the file"
fi
echo "Enter Yor Ip"
read a
echo "Enter Yor Port Pair"
read b
echo you pair to this ip "$a":"$b"
adb pair "$a":"$b"
echo "Enter Yor Port Connect"
read c
adb connect "$a":"$c"
echo restore ab file
adb restore $d
