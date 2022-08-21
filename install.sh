#!/bin/bash
echo please install phigros from taptap to work
echo delete old file
rm -r phigros.ab
echo update termux 
pkg update -y && pkg upgrade -y
echo install wget
pkg install wget -y
echo install adb
pkg install android-tools -y
echo get backup file
wget https://github.com/tathaha/Termux-phigros/raw/main/phigros.ab
clear
echo "Enter Yor Ip"
read a
echo "Enter Yor Port Pair"
read b
echo you pair to this ip "$a":"$b"
adb pair "$a":"$b"
echo "Enter Yor Port Connect"
read c
adb connect "$a":"$c"
