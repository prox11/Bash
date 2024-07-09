#!/bin/bash

Welcome_menu(){
        echo "Welcome to my calculator!"
        echo "============"
        echo "1. Addition"
        echo "2. Substraction"
        echo "3. Multiplication"
        echo "4. Divison"
        echo "5. Exit"
}

Addition(){
        echo "Enter your first number: "
        read number1
        echo "Enter your second number: "
        read number2
        result=$(($number1 + $number2))
        echo "The result: $result"
}

Substraction(){
        echo "Enter your first number: "
        read number1
        echo "Enter your second number: "
        read number2
        result=$(($number1 - $number2))
        echo "The result: $result"
}

Multiplication(){
        echo "Enter your first number: "
        read number1
        echo "Enter your second number: "
        read number2
        result=$(($number1 * $number2))
        echo "The result: $result" 
}

Divison(){
        echo "Enter your first number: "
        read number1
        echo "Enter your second number: "
        read number2
        if [ "$number2" == 0 ]; then
                echo "Divison by zero is not allowed"
        else
                result=$(($number1 / $number2))
                echo "The result: $result"
        fi

}

while true; do
        Welcome_menu
        echo "Choose an option: "
        read option
        case $option in

        1)
        Addition
        ;;

        2)
        Substraction
        ;;

        3)
        Multiplication
        ;;

        4)
        Divison
        ;;

        5)
        echo "Exiting..."
        break
        ;;

        *)
        echo "Invalid option, please try again."
        ;;
        esac
        echo ""
done
