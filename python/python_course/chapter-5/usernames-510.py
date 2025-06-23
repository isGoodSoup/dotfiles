#!/usr/bin/python

# Exercise 5.10

current_users = ['jake1sawesom3', 'ada_lov3lce', '11charlie', 'mik3', 'k4terinn_']
new_users = ['linuxN1', 'ADA_lov3lce', 'brits__vlg', '11charlie', 'quinnn2']

for user in new_users:
    if user.lower() in current_users:
        print(f'Username is taken!: {user}')
    else:
        print(f'Username is available: {user}')
