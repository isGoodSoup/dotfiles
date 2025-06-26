#!/usr/bin/python

# Exercise 6.2

numbers = {
    'mike': 7,
    'jimmy': 22,
    'gus': 10,
    'nacho': 2,
    'kim': 1
}

for number in numbers:
    info = f"{number.title()}, {numbers[f'{number}']}"
    print(info)
