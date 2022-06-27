#!/bin/bash
RED=`tput setaf 1`
BLUE=`tput setaf 4`
PURPLE=`tput setaf 5`
LGREEN=`tput setaf 2`
NC=`tput sgr0`

clear
while [ 1 ];
do
# message: [PREFIX] Checking if tickets are available.
    echo "${NC}[${RED}Cinema${BLUE}Ticket${PURPLE}Checker${NC}] - Checking if tickets are available..."
    # PUT CINEMA PAGE HERE = the page it should check  ~  PUT STRING HERE = The string it should check and trigger the script. More info in readme.md
    count=`curl -s "PUT CINEMA PAGE HERE" | grep -c "PUT STRING HERE"`

    if [ "$count" != "0" ]
    then
# Update message, The message it sends out when it found the string on the website.
       echo "${BLUE}Cinema ${LGREEN}updated! | ${PURPLE} Ticket Checker made by: ${BLUE}Timtendo12"
       xdg-open PUT CINEMA PAGE HERE
       # You can remove these 2 lines if you dont want the script to open my github page, Its just a notification. If the script worked for you please don't forget to star this rep. <3
       echo "${LGREEN}If this ${BLUE}script ${LGREEN}helped you please star the github rep ${RED}<3"
       xdg-open https://www.github.com/Timtendo12/Cinema-Ticket-Checker
       exit 0
    else
    # Tickets not available (yet) message.
    	echo "${NC}[${RED}Cinema${BLUE}Ticket${PURPLE}Checker${NC}] Ticket availability: ${RED}false ${NC} :("      
    fi
    # The script timeout. 10s = The script check every 10 second. Change this at your own risk. You might get timed-out by the webserver... or worse. banned. 
    # If it thinks you are a ddoser (IKR weird, most likely wont happen but the chance is never 0 ;) ).
    sleep 10s   
done
