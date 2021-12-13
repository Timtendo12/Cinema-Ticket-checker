#!/bin/bash
RED=`tput setaf 1`
BLUE=`tput setaf 4`
PURPLE=`tput setaf 5`
LGREEN=`tput setaf 2`
NC=`tput sgr0`

clear
while [ 1 ];
do
# message: [PREFIX] Checking if tickets are available
    echo "${NC}[${RED}Cinema${BLUE}Ticket${PURPLE}Checker${NC}] - Checking if tickets are available"
    # PUT CINEMA PAGE HERE = the page it should check  ~  PUT STRING HERE = The string it should check and trigger the script. More info in readme.md
    count=`curl -s "PUT CINEMA PAGE HERE" | grep -c "PUT STRING HERE"`

    if [ "$count" != "0" ]
    then
# Update message, The message it sends out when it found the string in the website.
       echo "${BLUE}Cinema ${LGREEN}updated! | ${PURPLE} Ticket Checker made by: ${BLUE}Timtendo12"
       xdg-open PUT CINEMA PAGE HERE
       # You can remove this 2 lines if you dont want the script to open my github page, Its just a notification. If the script worked for you please star this rep. <3
       echo "${LGREEN}If this ${BLUE}script ${LGREEN}helped you please star the github rep ${RED}<3"
       xdg-open https://www.github.com/Timtendo12/Cinema-Ticket-Checker
       exit 0
    else
    # The hasnt found a change yet
    	echo "${NC}[${RED}Cinema${BLUE}Ticket${PURPLE}Checker${NC}] Ticket availability: ${RED}false"      
    fi
    # The script timeout. 10s = The script check every 10 second.
    sleep 10s   
done
