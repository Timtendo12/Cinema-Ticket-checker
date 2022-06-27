#!/bin/bash
RED=`tput setaf 1`
BLUE=`tput setaf 4`
YELLOW=`tput setaf 3`
PURPLE=`tput setaf 5`
LGREEN=`tput setaf 2`
CYAN=`tput setaf 6`
NC=`tput sgr0`

clear
while [ 1 ];
do
    echo "${NC}[${CYAN}THOR${YELLOW}LOVE${LGREEN}AND${YELLOW}THUNDER${NC}] - Checken of tickets beschikbaar zijn."
    # Plaats hier de bioscoop link waar de bot kan checken of er tickets beschikbaar zijn. als de script ZOEKWOORDEN vind dan weet hij dat de tickets beschikbaar zijn.
    count=`curl -s "BIOSCOOP LINK" | grep -c "ZOEKWOORDEN"`

    if [ "$count" != "0" ]
    then
       echo "${CYAN}THOR ${LGREEN}updated! | ${PURPLE} Ticket Checker made by: ${BLUE}Timtendo12"
       xdg-open !!!BIOSCOOP LINK HIER!!!
       # Je kan deze 2 lijnen (niet de exit 0) verwijderen als je niet wilt dat deze github pagina geopend worden.
       # Vergeet natuurlijk niet een sterretje achter laten als dit je geholpen heeft :).
       echo "${LGREEN}If this ${BLUE}script ${LGREEN}helped you please star the github rep ${RED}<3"
       xdg-open https://www.github.com/Timtendo12/Cinema-Ticket-Checker
       exit 0
    else
    	echo "${NC}[${CYAN}THOR${YELLOW}LOVE${LGREEN}AND${YELLOW}THUNDER${NC}] Ticket beschikbaar? > ${RED}nog niet ${NC}:("      
    fi
    # De script timeout. Xs = de script checkt elke X seconde. Ik ben niet verantwoordelijk voor de mogelijke timeouts die de bioscoop pagina je geeft.
    sleep 10s   
done
