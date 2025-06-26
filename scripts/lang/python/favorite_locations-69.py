#!/usr/bin/python

# Exercise 6.9

favorite_locations = {
    'tim': {
        'top1': 'los angeles',
        'top2': 'new york',
        'top3': 'san diego'
    },

    'mickey': {
        'top1': 'helsinki',
        'top2': 'chicago',
        'top3': 'york'
    },

    'sheila': {
        'top1': 'london',
        'top2': 'paris',
        'top3': 'madrid'
    },

    'nolan': {
        'top1': 'los angeles',
        'top2': 'berlin',
        'top3': 'milan'
    }
}

for name, locations in favorite_locations.items():
    print(f"\nName: {name.title()}")
    print(
        f"Locations: {locations['top1'].title()}, {locations['top2'].title()}, {locations['top3'].title()}"
    )
