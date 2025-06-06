#!/usr/bin/python

favorite_languages = {
    'jen': 'java',
    'michael': 'c',
    'jake': 'c++',
    'edward': 'rust',
    'phil': 'python'
}

for person in favorite_languages:
    print(f"{person.title()}'s favorite language is {favorite_languages[f'{person}'].title()}")
