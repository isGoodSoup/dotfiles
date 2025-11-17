#!/usr/bin/python

# Exercise 6.8

pets = {
    'rudy': {
        'owner': 'jake',
        'type': 'golden retriever'
    },

    'cooper': {
        'owner': 'tim',
        'type': 'american stanford'
    },

    'merlin': {
        'owner': 'eric',
        'type': 'domestic cat'
    },

    'max': {
        'owner': 'justin',
        'type': 'german sheppard'
    },
}

for pet, info in pets.items():
    print(f"\nPet: {pet.title()}")
    print(f"\towner: {info['owner']}")
    print(f"\ttype: {info['type']}")
