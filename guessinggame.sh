#!/bin/bash

function game(){
    nb_files=$(find . ! -name . -prune -print | grep -c /)
    while true;
    do
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        echo "Guess how many files are in the current directory ?"
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        read guess
        if [ $guess -lt $nb_files ]
        then
            echo "You are missing some files. Try again"
            echo -e "\n"
        elif [ $guess -gt $nb_files ]
        then
            echo "You've seen things (too) big. Try again"
            echo -e "\n"
        else
            echo -e "\n"
            echo "Indeed there are $guess files"
            echo "~~~~~~~~~~~~~~~~~~~"
            echo "You win, congratz !"
            echo "~~~~~~~~~~~~~~~~~~~"
        break;
        fi
    done
}
game