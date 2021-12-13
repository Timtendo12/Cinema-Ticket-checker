#!/bin/bash
RED=`tput setaf 1`
BLUE=`tput setaf 4`
PURPLE=`tput setaf 5`
LGREEN=`tput setaf 2`
NC=`tput sgr0`

clear
while [ 1 ];
do
    echo "${NC}[${RED}Spidey${BLUE}Ticket${PURPLE}Checker${NC}] - Checking if tickets are available"
    count=`curl -s "https://www.luxor.nl/films/spider-man-no-way-home" | grep -c "Onze bioscopen"`

    if [ "$count" != "0" ]
    then
       echo "${BLUE}Spidey ${LGREEN}updated! | ${PURPLE} Ticket Checker made by: ${BLUE}Timtendo12"
       xdg-open https://www.luxor.nl/films/spider-man-no-way-home
       xdg-open https://www.github.com/Timtendo12
       exit 0
    else
    	echo "${NC}[${RED}Spidey${BLUE}Ticket${PURPLE}Checker${NC}] Ticket availability: ${RED}false"      
    fi
    sleep 10s   
done
