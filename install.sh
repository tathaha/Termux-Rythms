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
echo "Enter Yor Ip"
read a
echo "Enter Yor Port Pair"
read b
echo you connect to $a:b
adb connect $a:b


