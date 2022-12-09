#!/bin/bash
# Run chmod +x UbuntuScript.sh to make the file executable

if [[ $EUID -ne 0 ]]
then
  echo This script must be run as root
  exit
fi
echo "Script is being run as root."


echo Type all user account names (everyone but you), with a space in between
read -a users

usersLength=${#users[@]}

for (( i=0;i<$usersLength;i++))
do
	
	echo ${users[${i}]}
	echo Delete ${users[${i}]}? yes or no
	read yn1
	if [ $yn1 == yes ]
	then
		userdel -r ${users[${i}]}
		echo "${users[${i}]} has been deleted."
	else	
		echo Make ${users[${i}]} administrator? yes or no
		read yn2								
		if [ $yn2 == yes ]
		then
			gpasswd -a ${users[${i}]} sudo
			gpasswd -a ${users[${i}]} adm
			gpasswd -a ${users[${i}]} lpadmin
			gpasswd -a ${users[${i}]} sambashare
			echo "${users[${i}]} has been made an administrator."
		else
			gpasswd -d ${users[${i}]} sudo
			gpasswd -d ${users[${i}]} adm
			gpasswd -d ${users[${i}]} lpadmin
			gpasswd -d ${users[${i}]} sambashare
			gpasswd -d ${users[${i}]} root
			echo "${users[${i}]} has been made a standard user."
		fi
			
		echo -e "CyberPatriotIsCool123!\nCyberPatriotIsCool123!" | passwd ${users[${i}]}
		echo "${users[${i}]} has been given the password 'CyberPatriotIsCool123!'."
		
		passwd -x90 -n10 -w7 ${users[${i}]}
		usermod -L ${users[${i}]}
		echo "${users[${i}]}'s password has been given a maximum age of 90 days, minimum of 10 days, and warning of 7 days. ${users[${i}]}'s account has been locked."
	fi
done


echo Type user account names of users you want to add, with a space in between
read -a usersNew

usersNewLength=${#usersNew[@]}	

for (( i=0;i<$usersNewLength;i++))
do
	echo ${usersNew[${i}]}
	adduser ${usersNew[${i}]}
	echo "A user account for ${usersNew[${i}]} has been created."
	echo Make ${usersNew[${i}]} administrator? yes or no
	read ynNew								
	if [ $ynNew == yes ]
	then
		gpasswd -a ${usersNew[${i}]} sudo
		gpasswd -a ${usersNew[${i}]} adm
		gpasswd -a ${usersNew[${i}]} lpadmin
		gpasswd -a ${usersNew[${i}]} sambashare
		echo "${usersNew[${i}]} has been made an administrator."
	else
		echo "${usersNew[${i}]} has been made a standard user."
	fi
	
	echo -e "CyberPatriot123!\nCyberPatriot123!" | passwd ${usersNew[${i}]}
	echo "${usersNew[${i}]} has been given the password 'CyberPatriot123!'."

	passwd -x90 -n10 -w7 ${usersNew[${i}]}
	usermod -L ${usersNew[${i}]}
	echo "${usersNew[${i}]}'s password has been given a maximum age of 30 days, minimum of 3 days, and warning of 7 days. ${users[${i}]}'s account has been locked."
done

# -----------------------------------------------------------------------------------------