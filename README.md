# Cinema-Ticket-checker
Simple bash script to check changes on websites. Very useful to get to notified when tickets are on sale when you dont know the exact time. Used it to get tickets for SM:NWH.


# How to use:

Using this script is really simple.

1. Create a bash script file. Lets say

```bash
touch CinemaTicketChecker.sh
```
2. Edit the script
```bash
nano CinemaTicketchecker.sh
```
- When editing the script you just have to change the following sections:
Cinema website: Do not put the homepage of your cinema in there. Only when you are super sure the script is able to get information you need.
If you need information wether tickets are available, its really recommended to put the movie page from your cinema's website there.

Next to the website you need to put the string. What string exactly? The script check wether there are any specific changes. Which means when the tickets are availabe there should be new text appearing like: "Get tickets now", Or the date when you want to go. Put that information in a string to let the script check on the specific changes. If you are not sure on what to put in there. Check other movie pages on your cinema websites and check the differences. Its easier and by most websites the only way to let the script know on what to check. For any other question feel free to open a issue!


3. Edit permissions
```
chmod +c CinemaTicketChecker.sh
```
- Do not skip this step! Without this step you might not be able to run it in your (linux) terminal.

4. Run the script
```bash
./CinemaTicketChecker.sh
```

Voila. If you've set it all correctly it should be running. 


!!note: The script complete depends on your research. The script does not know if any information you put in there is wrong.!!
