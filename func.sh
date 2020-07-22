#!/usr/bin/env bash

#there are two ways to define function

function Hello(){

	echo "Hello"

}

Bye(){

	echo "bye"
}

echo "calling hello function"
Hello #dont use Hello() , its intepreted as function defination and error occures

echo "calling bye function"
Bye #dont use Bye()


# output
# :~/pypractice/bash/shell scripting$ ./func.sh
# calling hello function
# Hello
# calling bye function
# bye


