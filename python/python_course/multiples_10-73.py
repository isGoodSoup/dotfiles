#!/usr/bin/python

# Exercise 7.3
number = input('Input your number: ')
number = int(number)

if number % 10 == 0:
    print(f'\n{number} is a multiple of 10')
else:
    print(f'\n{number} is NOT a multiple of 10')

print('')
