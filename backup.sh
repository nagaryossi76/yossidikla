#!/bin/bash

while true; do
    echo "*********Select an option************:"
    echo "1. Show the date"
    echo "2. Show the time"
    echo "3. Show the user name"
    echo "4. Exit"
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            echo "Current date: $(date +"%Y-%m-%d")"
            ;;
        2)
            echo "Current time: $(date +"%H:%M:%S")"
            ;;
        3)
            echo "User name: $USER"
            ;;
        4)
            echo "Exiting. Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please choose 1-4."
            ;;
    esac
    echo
done

B
B
A
A
A
A
A
A
A
A
A
done 
