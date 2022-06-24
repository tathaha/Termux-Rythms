echo please install phigros from taptap to work
echo update termux
pkg upgrade -y && pkg update -y
echo install wget
pkg install wget
echo install adb
curl -s https://raw.githubusercontent.com/rendiix/termux-adb-fastboot/master/install.sh | bash
echo get backup file
wget https://github.com/tathaha/Termux-phigros/raw/main/phigros.ab
clear
echo please do this command
echo follow this link https://pastebin.com/cKBQJ5MJ
