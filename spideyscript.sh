#!/bin/bash
RED=`tput setaf 1`
BLUE=`tput setaf 4`
PURPLE=`tput setaf 5`
LGREEN=`tput setaf 2`
NC=`tput sgr0`

clear
while [ 1 ];
do
    echo "${NC}[${RED}Cinema${BLUE}Ticket${PURPLE}Checker${NC}] - Checking if tickets are available"
    count=`curl -s "PUT CINEMA PAGE HERE" | grep -c "PUT STRING HERE"`

    if [ "$count" != "0" ]
    then
       echo "${BLUE}Cinema ${LGREEN}updated! | ${PURPLE} Ticket Checker made by: ${BLUE}Timtendo12"
       xdg-open PUT CINEMA PAGE HERE
       # 
       echo "${LGREEN}If this ${BLUE}script ${LGREEN}helped you please star the github rep ${RED}<3"
       xdg-open https://www.github.com/Timtendo12/Cinema-Ticket-Checker
       exit 0
    else
    	echo "${NC}[${RED}Cinema${BLUE}Ticket${PURPLE}Checker${NC}] Ticket availability: ${RED}false"      
    fi
    sleep 10s   
done
