#!/bin/bash
echo please install phigros from taptap to work
echo update termux 
pkg update -y && pkg upgrade -y
echo install wget
pkg install wget -y
echo install adb
pkg install android-tools -y
echo get backup file
wget https://github.com/tathaha/Termux-phigros/raw/main/phigros.ab
clear
echo "Enter Yor Ip:Port Pair"
read a
echo you pair to this ip $a
adb pair $a
echo "Enter Yor IP:Port Connect"
read b
adb connect $b
