#!/usr/bin/python

# Exercise 3.5
guests = ['descartes', 'freud', 'grandpa']
print(guests)

del guests[2]

guests_new = 'macron'
guests.append(guests_new)

print(guests)

message = f'You are a guest to my dinner, {guests[0].title()}, I bid you welcome.'
print(message)

message = f'You are a guest to my dinner, {guests[1].title()}, I bid you welcome.'
print(message)

message = f'You are a guest to my dinner, {guests[2].title()}, I bid you welcome.'
print(message)
