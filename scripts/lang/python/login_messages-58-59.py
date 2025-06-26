#!/usr/bin/python

# Exercise 5.8-5.9

users = ['joshhere01', 'deb42_', 'admin', 'michel_eiffel', 'gabri3l']

for user in users:
    if user == 'admin':
        print(f"Hello, admin! Do you want to see this month' reports?")
    else:
        print(f'Hey! Nice to see you back, {user}')

users = []

if users:
    for user in users:
        print(f'Welcome, {user}. Nice to see you again!')
else:
    print(f'The userbase is empty')
