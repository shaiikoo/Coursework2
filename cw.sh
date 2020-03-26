#!/bin/bash

# read -p "Chose the name for the programme: " program


# banner() {
# printf """
#   ____                                             _        ___ ___ 
#  / ___|___  _   _ _ __ ___  _____      _____  _ __| | __   |_ _|_ _|
# | |   / _ \| | | | '__/ __|/ _ \ \ /\ / / _ \| '__| |/ /____| | | | 
# | |__| (_) | |_| | |  \__ \  __/\ V  V / (_) | |  |   <_____| | | | 
#  \____\___/ \__,_|_|  |___/\___| \_/\_/ \___/|_|  |_|\_\   |___|___|
                                                                                  
#                                 @Developed By --> Prabesh Thapa (Shaiikoo)
#     """
# }

# inputs()  #This functions just takes the input from the user.
# {
# 	echo "
#     +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#     + Hello Friend. Maybe I should give you a name.         +
#     + But that's a slippery slope, you're only in my head.  +
#     + I'm talking to an imaginary person.                   +
#     +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#     "

#     #Just random unicode characters.

# 	echo "\e[1;31m--------------------------------------------------------------------\e[00m"
# 	echo "\e[1;31m********************************************************************\e[00m"
# 	read -p "Enter your First Name: " name
# 	read -p "Enter your ID: " id
#     #Displaying Name and ID entered by User
# 	echo "
# 		\e[01;32m[+]\e[00m Your Name: $name
# 		\e[01;32m[+]\e[00m Your ID: $id
# 	"
# 	echo "\e[1;31m--------------------------------------------------------------------\e[00m"
# 	echo "\e[1;31m********************************************************************\e[00m"
# }

# secretKeyPrompt() #This function checks if user entered right secret key.
# {
#     secretKey="Mr.Robot"
#     echo "Hope you remember the Secret Key!"
#     read -p "Enter the Secret Key: " secret
#     for i in 1 2 3 4 5
#     do
#         if [ "$secret" != "$secretKey" ]
#         then
#             echo "Incorrect Key. Enter the correct Secret Key."
#             read -p "Enter the Secret Key: " secret            
            
#         else
#             echo "
#             _____________________________________________

#                     Welcome to The Program. :)
                    
#                     \e[01;32m[+]\e[00m Your Name: $name
#                     \e[01;32m[+]\e[00m Your ID: $id
#                     \e[01;32m[+]\e[00m Time: $time
#                     \e[01;32m[+]\e[00m Date: $date
#             ______________________________________________
#             "
#         break
#         fi
#         done
# }

# prompt()  #This function prompts the user if the inputs are correct.
# {
#     time=$(date +%r)
#     date=$(date +%d-%b-%Y)
    
#     read -p "Are you sure above data are correct [(y)es/(n)o]? " confirm
#     #If the input is wrong, the input and prompt function are re-run.
# 	if [ $confirm = n -o $confirm = no ]
# 	then
#         inputs
#         prompt
    
#     #If user confirms input to be correct, remaining functions run.
# 	elif [ $confirm = y -o $confirm = yes ]
# 	then
#         secretKeyPrompt
#         cricketCountry
#         cricketPlayer
#         displayCode
#         repeat
#     else
#         echo "\e[01;32m[-]\e[00m \e[1;31m Wrong Input. Type 'y' for Yes and 'n' for No.\e[00m"
#         prompt
# 	fi
# }

# cricketCountry() #This function displays country playing cricket and their codes.
# {
#     echo "\e[1;31m-------------------------------------------------------\e[00m"
#     echo "I hope you watch cricket $name. Welcome to the Programme mate.\n"
# 	echo "\e[1;31m*******************************************************\e[00m"
#     echo "
#         ______________________________
#           Code        |    Country 
#         ______________|_______________
#           AUS         |    Australia
#           BAN         |    Bangladesh
#           NEP         |     Nepal
#           IND         |     India
#           ENG         |    England
#         ______________|_______________
        
#         "

#     read -p "Q. Which is the best cricket team (Enter the Code)? " guess
#     #The loop will run 5 times until the user guesses the best country to be Australia (AUS)
#     #and will terminate the program if the user cannot guess.
#     for i in 1 2 3 4 5
#     do
#         if [ "$guess" = AUS ]
#             then
#                 echo "\n"
#                 echo "You guessed it right $name."
#                 echo"
#                 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#                 + Australia is the best team in world with 5 world cups          +
#                 + to their name and hundreds of records associated to the team.  +
#                 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#                 "
#             break

#             else
#                 echo "I am sorry but you are wrong $name."
#                 read -p "Q. Which is the best cricket team (Enter the Code)? " guess
#         fi
#         done
# }

cricketPlayer()
{
    	echo "\e[1;31m****************************************************************\e[00m"
        echo "Here are some of the best cricket players around the globe."
        echo "
        +++++++++++++++++++++++++++++++
            Code     |      Player   
        +++++++++++++++++++++++++++++++
            PK       |  Paras Khadka
            VK       |   Virat Kohli
            DW       |  David Warner
            BS       |    Ben Stokes
            RT       |   Ross Taylor
        +++++++++++++++++++++++++++++++"
        echo "\e[1;31m****************************************************************\e[00m"

        echo "\n"
        echo "The program invites you to chose three players of your choice."

        #Users are required to input codes of three different player seperated by spaces.

        read -p "Enter the code (seperated by Spaces) of your chosen players : " -a playerArr

        if [ ${#playerArr[@]} -gt 3 ]
        then
            echo "You can only enter three codes mate."
        else
            echo "$name has chosen: "
            echo "
            +++++++++++++++++++++++++++++
                S.N |    Player Code
                  1.|    ${playerArr[0]}
                  2.|    ${playerArr[1]}
                  3.|    ${playerArr[2]}
            +++++++++++++++++++++++++++++"
            read -p "Chose the best player from these three (S.N): " best

            #The loop will run infinitely until user choses one of these three player.
            while :
            do
                if [ $best = 1 -o $best = 2 -o $best = 3 ]
                then
                    echo "$name has chosen $best"
                break
                else
                    echo "Wrong Choice. Select from 1, 2 and 3."
                    #The user then ultimately choses one of the player from 3 selected player.
                    read -p "Chose the best player from these three(code): " best
                fi
            done
        fi
}

# displayCode()       #This function displays the players code along with some comment o players.
# {
#     echo "
#     *****************************************************
#         Code      |     Comment
#     *****************************************************
#         PK        | Ex-Captain of Nepal Cricket Team
#         VK        | Captain of Indian Cricket Team
#         DW        | Opener of Australian Cricket Team
#         BS        | All-Rounder of England Cricket Team
#         RT        | Batsman of New Zealand Cricket Team
#     *****************************************************"

#     #The user can then enter the code of a player whom they want to read about.
#     #The files about these players are already developed and stored in the same directory.

#     read -p "Enter the code of a player you want to know more: " playCode
#     if [ $playCode = PK ]
#     then
#         PARAS="paras.txt"
#         cat $PARAS
#     elif [ $playCode = VK ]
#     then
#         VIRAT="virat.txt"
#         cat $VIRAT
#     elif [ $playCode = DW ]
#     then
#         DAVID="warner.txt"
#         cat $DAVID
#     elif [ $playCode = BS ]
#     then
#         BEN="stokes.txt"
#         cat $BEN
#     elif [ $playCode = RT ]
#     then
#         ROSS="taylor.txt"
#         cat $ROSS
#     else
#         echo "The file code you are requesting is either absent or not readable."
#         cricketCountry
#     fi
# }


# repeat()  #This function will run the loop until the user types y/yes to get back to countryCode function.
# {
#     echo "\nHope you knew more about this player."
#     while :
#     do
#         echo "\n"
#         read -p "Do you want to get back to chosing country [(y)es/(n)o? " rep
#         if [ $rep = y -o $rep = yes ] 
#         then
#                 cricketCountry
#                 cricketPlayer
#                 displayCode   
#         else
#             echo "
#             *********************************************************************
#             * Thank you for using the program. Stay Safe. Nobody is Unhackable. *
#             * A bug is never just a mistake. It represents something bigger.    *
#             * An error of thinking that makes who you are.                      *
#             *********************************************************************
#             "
#             exit 0
#         fi
#     done
# }

# banner
# inputs
# prompt

cricketPlayer