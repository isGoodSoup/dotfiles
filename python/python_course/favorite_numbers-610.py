#!/usr/bin/python

# Exercise 6.10

favorite_numbers = {
    'jen': ['6', '48'],
    'michael': ['12'],
    'edward': ['18', '360'],
    'phil': ['64', '16']
}

for name, numbers, in favorite_numbers.items():
    if len(numbers) == 1:
        print(f"\n{name.title()}'s favorite number is:")
    else:
        print(f"\n{name.title()}'s favorite numbers are:")    
    for number in numbers:
        print(f'\t{number.title()}')
