banner() {
clear
printf "\n"
printf "\e[0m\e[1;36m -------------------------------------\n"
printf "\e[0m\e[1;33m        Termux Extra Keys\n"
printf "\n"
printf "\e[0m\e[1;32m  Created By @ʀɪᴅᴡᴀɴᴢ \e[0m\e[1;36m( \e[0m\e[1;33mRidwanz Saputra\e[0m\e[1;36m )\n"
printf "\e[0m\e[1;36m -------------------------------------\n"
}
menu() {
sleep 1
printf "\n"
printf "\e[0m\e[1;36m [\e[0m\e[1;37m01\e[0m\e[1;36m]\e[0m\e[1;33m Add Extra Keys\n"
printf "\e[0m\e[1;36m [\e[0m\e[1;37m02\e[0m\e[1;36m]\e[0m\e[1;33m More Tools from Us\n"
printf "\e[0m\e[1;36m [\e[0m\e[1;37m03\e[0m\e[1;36m]\e[0m\e[1;33m Exit \n"
printf "\e[0m\n"
read -p $'\e[1;31m [\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' option
if [[ $option == 1 || $option == 01 ]]; then
addkey
elif [[ $option == 2 || $option == 02 ]]; then
sleep 2
termux-open-url https://github.com/RidwanzAnphelibelll/
printf "\e[0m\n"
elif [[ $option == 3 || $option == 03 ]]; then
printf "\e[0m\n"
exit 1
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
addkey() {
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;32m  Starting...\n"
printf "\e[0m\n"
sleep 2
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;32m  Setting up Environment ...\n"
printf "\e[0m\n"
mkdir -p /data/data/com.termux/files/home/.termux
touch /data/data/com.termux/files/home/.termux/termux.properties
cd ~/.termux
keys="extra-keys = [['ESC','CTRL','-','HOME','UP','END','BKSP'],['TAB','ALT','/','LEFT','DOWN','RIGHT','ENTER']]"
echo $keys > termux.properties
sleep 3
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;32m  Refreshing ...\n"
printf "\e[0m\n"
termux-reload-settings
sleep 1
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;32m  Done !!\n"
}
banner
menu
