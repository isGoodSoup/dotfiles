#!/usr/bin/python

# Exercise 6.1

person_file = {
    'name': 'keanu',
    'last_name': 'reeves',
    'age': '60',
    'height': '1.86',
    'city': 'beiruut'
}

for value in person_file:
    info = f"{value}, {person_file[f'{value}'].title()}"
    print(info)
