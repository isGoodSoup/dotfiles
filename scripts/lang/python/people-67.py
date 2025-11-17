#!/usr/bin/python

# Exercise 6.7

person_file = {
    'rkeanu': {
        'first': 'keanu',
        'last': 'reeves',
        'age': '60',
        'height': '1.86',
        'city': 'beiruut'
    },

    'gyllenh': {
        'first': 'jake',
        'last': 'gyllenhaal',
        'age': '44',
        'height': '1.82',
        'city': 'los angeles'
    },

    'nfillion': {
        'first': 'nathan',
        'last': 'fillion',
        'age': '54',
        'height': '1.87',
        'city': 'edmonton'
    },

    'katic': {
        'first': 'stana',
        'last': 'katic',
        'age': '47',
        'height': '1.75',
        'city': 'hamilton'
    },

    #'': {
        #'first': '',
        #'last': '',
        #'age': '',
        #'height': '',
        #'city': ''
    #},
}

for user, info in person_file.items():
    print(f"\nUsername: {user}")
    print(f"\tname: {info['first'].title()}, {info['last'].title()}")
    print(f"\tage: {info['age']}")
    print(f"\theight: {info['height']}")
    print(f"\tcity: {info['city'].title()}")
