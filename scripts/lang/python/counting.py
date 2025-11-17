#!/usr/bin/python

prompt = 'Input the number: '
number = input(prompt)

number = int(number)

current_number = number
while current_number <= 20:
    print(current_number)
    current_number += 1
