#!/bin/bash

# Run chmod +x UbuntuScript.sh to make the file executable

startTime=$(date +"%s")
printTime()
{
	endTime=$(date +"%s")
	diffTime=$(($endTime-$startTime))
	if [ $(($diffTime / 60)) -lt 10 ]
	then
		if [ $(($diffTime % 60)) -lt 10 ]
		then
			echo -e "0$(($diffTime / 60)):0$(($diffTime % 60)) -- $1" >> ~/Desktop/Script.log
		else
			echo -e "0$(($diffTime / 60)):$(($diffTime % 60)) -- $1" >> ~/Desktop/Script.log
		fi
	else
		if [ $(($diffTime % 60)) -lt 10 ]
		then
			echo -e "$(($diffTime / 60)):0$(($diffTime % 60)) -- $1" >> ~/Desktop/Script.log
		else
			echo -e "$(($diffTime / 60)):$(($diffTime % 60)) -- $1" >> ~/Desktop/Script.log
		fi
	fi
}

touch ~/Desktop/Script.log
echo > ~/Desktop/Script.log
chmod 777 ~/Desktop/Script.log

if [[ $EUID -ne 0 ]]
then
  echo This script must be run as root
  exit
fi
printTime "Script is being run as root."

# Backups
mkdir -p ~/Desktop/backups
chmod 777 ~/Desktop/backups
printTime "Backups folder created on the Desktop."

cp /etc/group ~/Desktop/backups/
cp /etc/passwd ~/Desktop/backups/

printTime "/etc/group and /etc/passwd files backed up."

#install firewall
ufw enable
printTime "Firewall enabled."

# find / -name "*.midi" -type f >> ~/Desktop/Script.log
# find / -name "*.mid" -type f >> ~/Desktop/Script.log
# find / -name "*.mod" -type f >> ~/Desktop/Script.log
# find / -name "*.mp3" -type f >> ~/Desktop/Script.log
# find / -name "*.mp2" -type f >> ~/Desktop/Script.log
# find / -name "*.mpa" -type f >> ~/Desktop/Script.log
# find / -name "*.abs" -type f >> ~/Desktop/Script.log
# find / -name "*.mpega" -type f >> ~/Desktop/Script.log
# find / -name "*.au" -type f >> ~/Desktop/Script.log
# find / -name "*.snd" -type f >> ~/Desktop/Script.log
# find / -name "*.wav" -type f >> ~/Desktop/Script.log
# find / -name "*.aiff" -type f >> ~/Desktop/Script.log
# find / -name "*.aif" -type f >> ~/Desktop/Script.log
# find / -name "*.sid" -type f >> ~/Desktop/Script.log
# find / -name "*.flac" -type f >> ~/Desktop/Script.log
# find / -name "*.ogg" -type f >> ~/Desktop/Script.log
# printTime "All audio files has been listed."

# find / -name "*.mpeg" -type f >> ~/Desktop/Script.log
# find / -name "*.mpg" -type f >> ~/Desktop/Script.log
# find / -name "*.mpe" -type f >> ~/Desktop/Script.log
# find / -name "*.dl" -type f >> ~/Desktop/Script.log
# find / -name "*.movie" -type f >> ~/Desktop/Script.log
# find / -name "*.movi" -type f >> ~/Desktop/Script.log
# find / -name "*.mv" -type f >> ~/Desktop/Script.log
# find / -name "*.iff" -type f >> ~/Desktop/Script.log
# find / -name "*.anim5" -type f >> ~/Desktop/Script.log
# find / -name "*.anim3" -type f >> ~/Desktop/Script.log
# find / -name "*.anim7" -type f >> ~/Desktop/Script.log
# find / -name "*.avi" -type f >> ~/Desktop/Script.log
# find / -name "*.vfw" -type f >> ~/Desktop/Script.log
# find / -name "*.avx" -type f >> ~/Desktop/Script.log
# find / -name "*.fli" -type f >> ~/Desktop/Script.log
# find / -name "*.flc" -type f >> ~/Desktop/Script.log
# find / -name "*.mov" -type f >> ~/Desktop/Script.log
# find / -name "*.qt" -type f >> ~/Desktop/Script.log
# find / -name "*.spl" -type f >> ~/Desktop/Script.log
# find / -name "*.swf" -type f >> ~/Desktop/Script.log
# find / -name "*.dcr" -type f >> ~/Desktop/Script.log
# find / -name "*.dir" -type f >> ~/Desktop/Script.log
# find / -name "*.dxr" -type f >> ~/Desktop/Script.log
# find / -name "*.rpm" -type f >> ~/Desktop/Script.log
# find / -name "*.rm" -type f >> ~/Desktop/Script.log
# find / -name "*.smi" -type f >> ~/Desktop/Script.log
# find / -name "*.ra" -type f >> ~/Desktop/Script.log
# find / -name "*.ram" -type f >> ~/Desktop/Script.log
# find / -name "*.rv" -type f >> ~/Desktop/Script.log
# find / -name "*.wmv" -type f >> ~/Desktop/Script.log
# find / -name "*.asf" -type f >> ~/Desktop/Script.log
# find / -name "*.asx" -type f >> ~/Desktop/Script.log
# find / -name "*.wma" -type f >> ~/Desktop/Script.log
# find / -name "*.wax" -type f >> ~/Desktop/Script.log
# find / -name "*.wmv" -type f >> ~/Desktop/Script.log
# find / -name "*.wmx" -type f >> ~/Desktop/Script.log
# find / -name "*.3gp" -type f >> ~/Desktop/Script.log
# find / -name "*.mov" -type f >> ~/Desktop/Script.log
# find / -name "*.mp4" -type f >> ~/Desktop/Script.log
# find / -name "*.avi" -type f >> ~/Desktop/Script.log
# find / -name "*.swf" -type f >> ~/Desktop/Script.log
# find / -name "*.flv" -type f >> ~/Desktop/Script.log
# find / -name "*.m4v" -type f >> ~/Desktop/Script.log
# printTime "All video files have been listed in /Desktop/Script.log."

# find / -name "*.tiff" -type f >> ~/Desktop/Script.log
# find / -name "*.tif" -type f >> ~/Desktop/Script.log
# find / -name "*.rs" -type f >> ~/Desktop/Script.log
# find / -name "*.im1" -type f >> ~/Desktop/Script.log
# find / -name "*.gif" -type f >> ~/Desktop/Script.log
# find / -name "*.jpeg" -type f >> ~/Desktop/Script.log
# find / -name "*.jpg" -type f >> ~/Desktop/Script.log
# find / -name "*.jpe" -type f >> ~/Desktop/Script.log
# find / -name "*.png" -type f >> ~/Desktop/Script.log
# find / -name "*.rgb" -type f >> ~/Desktop/Script.log
# find / -name "*.xwd" -type f >> ~/Desktop/Script.log
# find / -name "*.xpm" -type f >> ~/Desktop/Script.log
# find / -name "*.ppm" -type f >> ~/Desktop/Script.log
# find / -name "*.pbm" -type f >> ~/Desktop/Script.log
# find / -name "*.pgm" -type f >> ~/Desktop/Script.log
# find / -name "*.pcx" -type f >> ~/Desktop/Script.log
# find / -name "*.ico" -type f >> ~/Desktop/Script.log
# find / -name "*.svg" -type f >> ~/Desktop/Script.log
# find / -name "*.svgz" -type f >> ~/Desktop/Script.log
# printTime "All image files have been listed in /Desktop/Script.log."

# find / -name "*.php" -type f >> ~/Desktop/Script.log
# printTime "All PHP files have been listed in /Desktop/Script.log. ('/var/cache/dictionaries-common/sqspell.php' is a system PHP file)"

apt-get purge netcat -y -qq
apt-get purge netcat-openbsd -y -qq
apt-get purge netcat-traditional -y -qq
apt-get purge ncat -y -qq
apt-get purge pnetcat -y -qq
apt-get purge socat -y -qq
apt-get purge sock -y -qq
apt-get purge socket -y -qq
apt-get purge sbd -y -qq
rm /usr/bin/nc
printTime "Netcat and all other instances have been removed."

apt-get purge john -y -qq
apt-get purge john-data -y -qq
printTime "John the Ripper has been removed."

apt-get purge hydra -y -qq
apt-get purge hydra-gtk -y -qq
printTime "Hydra has been removed."

apt-get purge aircrack-ng -y -qq
printTime "Aircrack-NG has been removed."

apt-get purge fcrackzip -y -qq
printTime "FCrackZIP has been removed."

apt-get purge lcrack -y -qq
printTime "LCrack has been removed."

apt-get purge ophcrack -y -qq
apt-get purge ophcrack-cli -y -qq
printTime "OphCrack has been removed."

apt-get purge pdfcrack -y -qq
printTime "PDFCrack has been removed."

apt-get purge pyrit -y -qq
printTime "Pyrit has been removed."

apt-get purge rarcrack -y -qq
printTime "RARCrack has been removed."

apt-get purge sipcrack -y -qq
printTime "SipCrack has been removed."

apt-get purge irpas -y -qq
printTime "IRPAS has been removed."

printTime 'Are there any hacking tools shown? (not counting libcrack2:amd64 or cracklib-runtime)'
dpkg -l | egrep "crack|hack" >> ~/Desktop/Script.log

apt-get purge logkeys -y -qq
printTime "LogKeys has been removed."

apt-get purge zeitgeist-core -y -qq
apt-get purge zeitgeist-datahub -y -qq
apt-get purge python-zeitgeist -y -qq
apt-get purge rhythmbox-plugin-zeitgeist -y -qq
apt-get purge zeitgeist -y -qq
printTime "Zeitgeist has been removed."

apt-get purge nfs-kernel-server -y -qq
apt-get purge nfs-common -y -qq
apt-get purge portmap -y -qq
apt-get purge rpcbind -y -qq
apt-get purge autofs -y -qq
printTime "NFS has been removed."

apt-get purge nginx -y -qq
apt-get purge nginx-common -y -qq
printTime "NGINX has been removed."

apt-get purge inetd -y -qq
apt-get purge openbsd-inetd -y -qq
apt-get purge xinetd -y -qq
apt-get purge inetutils-ftp -y -qq
apt-get purge inetutils-ftpd -y -qq
apt-get purge inetutils-inetd -y -qq
apt-get purge inetutils-ping -y -qq
apt-get purge inetutils-syslogd -y -qq
apt-get purge inetutils-talk -y -qq
apt-get purge inetutils-talkd -y -qq
apt-get purge inetutils-telnet -y -qq
apt-get purge inetutils-telnetd -y -qq
apt-get purge inetutils-tools -y -qq
apt-get purge inetutils-traceroute -y -qq
printTime "Inetd (super-server) and all inet utilities have been removed."

apt-get purge vnc4server -y -qq
apt-get purge vncsnapshot -y -qq
apt-get purge vtgrab -y -qq
printTime "VNC has been removed."

apt-get purge snmp -y -qq
printTime "SNMP has been removed."

chmod 777 /etc/apt/apt.conf.d/10periodic
cp /etc/apt/apt.conf.d/10periodic ~/Desktop/backups/
echo -e "APT::Periodic::Update-Package-Lists \"1\";\nAPT::Periodic::Download-Upgradeable-Packages \"1\";\nAPT::Periodic::AutocleanInterval \"1\";\nAPT::Periodic::Unattended-Upgrade \"1\";" > /etc/apt/apt.conf.d/10periodic
chmod 644 /etc/apt/apt.conf.d/10periodic
printTime "Daily update checks, download upgradeable packages, autoclean interval, and unattended upgrade enabled."

echo "Check to verify that all update settings are correct."
update-manager

apt-get update -qq
apt-get upgrade -qq
apt-get dist-upgrade -qq
printTime "Ubuntu OS has checked for updates and has been upgraded."

apt-get upgrade openssl libssl-dev
apt-cache policy openssl libssl-dev
printTime "OpenSSL heart bleed bug has been fixed."

touch ~/Desktop/logs/allusers.txt
uidMin=$(grep "^UID_MIN" /etc/login.defs)
uidMax=$(grep "^UID_MAX" /etc/login.defs)
echo -e "User Accounts:" >> ~/Desktop/logs/allusers.txt
awk -F':' -v "min=${uidMin##UID_MIN}" -v "max=${uidMax##UID_MAX}" '{ if ( $3 >= min && $3 <= max  && $7 != "/sbin/nologin" ) print $0 }' /etc/passwd >> ~/Desktop/logs/allusers.txt
echo -e "\nSystem Accounts:" >> ~/Desktop/logs/allusers.txt
awk -F':' -v "min=${uidMin##UID_MIN}" -v "max=${uidMax##UID_MAX}" '{ if ( !($3 >= min && $3 <= max  && $7 != "/sbin/nologin")) print $0 }' /etc/passwd >> ~/Desktop/logs/allusers.txt
printTime "All users have been logged."
cp /etc/services ~/Desktop/logs/allports.log
printTime "All ports log has been created."
dpkg -l > ~/Desktop/logs/packages.log
printTime "All packages log has been created."
apt-mark showmanual > ~/Desktop/logs/manuallyinstalled.log
printTime "All manually instealled packages log has been created."
service --status-all > ~/Desktop/logs/allservices.txt
printTime "All running services log has been created."
ps ax > ~/Desktop/logs/processes.log
printTime "All running processes log has been created."
ss -l > ~/Desktop/logs/socketconnections.log
printTime "All socket connections log has been created."
sudo netstat -tlnp > ~/Desktop/logs/listeningports.log
printTime "All listening ports log has been created."
cp /var/log/auth.log ~/Desktop/logs/auth.log
printTime "Auth log has been created."
cp /var/log/syslog ~/Desktop/logs/syslog.log
printTime "System log has been created."

printTime "Script is complete."