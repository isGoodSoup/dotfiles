#!/usr/bin/python

# Exercise 7.2
clients = input('How many are they coming to dinner? ')
clients = int(clients)

if clients > 8:
    print(f"\nI'm sorry. You will have to wait for a new table to free up.")
else: 
    print(f"\nYour table is ready! Follow me.")

print('')
