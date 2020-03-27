#!/bin/bash

read -p "Enter the name of the program: " program

read -p "Enter your name: " name
read -p "Enter your ID: " id

echo "Your name is $name and you entered your id as $id."

secretKeys() {
    secretKey="123"
    time=$(date +%r)
    date=$(date +%d-%b-%Y)
    read -p "Enter the secret key: " key
    for i in 1 2 3 4 5
    do
        if [ "$key" = "$secretKey" ]
        then
            echo "Welcome 
            $name
            Your ID: $id
            Current Time: $time
            Current Date: $date
            "
            country
            player
            comment
            stepFour
            break
        else
            echo "You entered the key wrong. Try again"
            read -p "Enter the secret key: " key
        fi
        done
}

country() {
    echo "Here are some country which play cricket."
    echo "
    Code |  Country
    AUS --> Australia
    BAN --> Bangladesh
    NEP --> Nepal
    IND --> India
    ENG --> England
    "

    echo "Time for a game. Guess the best country from these."
    read -p "Enter the code of best country: " guessCode
    for i in 1 2 3 4 5
    do
        if [ "$guessCode" = NEP ]
        then
            echo "You are right. Nepal is one of the best country playing cricket."
        break
        else
            echo "Wrong Guess."
            read -p "Enter the code of best country: " guessCode 
        fi
        done          
}

player()
{
    echo "Time to see best cricket players."
    echo "
    Code |  Player
    PK -->  Paras Khadka
    VK -->  Virat Kohli
    DW -->  David Warner
    BS -->  Ben Stokes
    RT -->  Ross Taylor
    "
    read -p "Chose 3 best players by entering their codes seperated by spaces: " -a Array

    if [ ${#Array[@]} -gt 3 ]
    then
        echo "Enter only three players code."
    else
        echo "You have chosed: "
        echo "
        Number |  Code
           1. --> ${Array[0]}
           2. --> ${Array[1]}
           3. --> ${Array[2]}
        "
        read -p "Chose one player from these by entering number: " one

        while :
        do
            if [ $one = 1 -o $one = 2 -o $one = 3 ]
            then
                echo "You have chosen $one"
            break
            else   
                echo "Incorrect input. Input 1 2 or 3."
                read -p "Chose one player from these by entering number: " one
            fi
        done
    fi            
}

comment()
{
    echo "
    Code  |  Player Comment
     PK --> Player of Nepal Team
     VK --> Player of Indian Team
     DW --> Player of Australia Team
     BS --> Player of England Team
     RT --> Player of New Zealand Team
    "
    read -p "Enter a code of one player: " display
    if [ $display = PK ]
    then
        PARAS="paras.txt"
        cat $PARAS
    elif [ $display = VK ]
    then
        VIRAT="virat.txt"
        cat $VIRAT
    elif [ $display = DW ]
    then
        DAVID="warner.txt"
        cat $DAVID
    else
        echo "The file is not present."
        country
        player
        comment
        stepFour
    fi
}

stepFour() 
{
    while :
    do
        read -p "Would you like to restart again? Enter yes or no. " start
        if [ $start = yes ]
        then
            country
            player
            comment
        elif [ $start = no ];
        then
            printf "Thank you for using the program.Hope you liked it. Gracias."
            echo "Au revoir, prends soin de toi"
            exit 0
        else
            echo "Incorrect Input. Enter yes or no."
            stepFour
        fi
    done
}

secretKeys