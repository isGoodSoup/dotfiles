#!/usr/bin/python

# Exercise 3.6
guests = ['descartes', 'freud', 'grandpa', 'napoleon', 'jimmy']
# print(guests)

less_guests = 'Only two guests places are available.'
print(less_guests)

popped_guests = guests.pop()
apology_message = f"I'm afraid your invite was revoked, {popped_guests.title()}"
print(apology_message)

popped_guests = guests.pop()
apology_message = f"i'm afraid your invite was revoked, {popped_guests.title()}"
print(apology_message)

popped_guests = guests.pop()
apology_message = f"i'm afraid your invite was revoked, {popped_guests.title()}"
print(apology_message)

remaining_guests = f'Your invite still stands, {guests[0].title()}'
print(remaining_guests)

remaining_guests = f'Your invite still stands, {guests[1].title()}'
print(remaining_guests)

# print(guests)
