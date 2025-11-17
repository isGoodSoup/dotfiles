#!/usr/bin/python

users = {
    'aeinstein': {
        'first': 'albert',
        'last': 'einstein',
        'location': 'princeton',
    },

    'mcurie': {
        'first': 'marie',
        'last': 'curie',
        'location': 'paris',
    },

}

for username, user_info in users.items():
    print(f"\nUsername: {username}")
    full_name = f"{user_info['last']}, {user_info['first']}"
    location = user_info['location']

    print(full_name.title()); print(location.title())
