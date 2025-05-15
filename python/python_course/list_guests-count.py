#!/usr/bin/python

# Exercise 3.9
guests = ['descartes', 'freud', 'grandpa']
# print(guests)

new_table = 'A bigger table was made available'
guests.insert(0, 'macron')
guests.insert(2, 'jimmy')
guests.append('the pope')

message = f'You are invited to my dinner, {guests[0].title()}'
print(message)

message = f'You are invited to my dinner, {guests[1].title()}'
print(message)

message = f'You are invited to my dinner, {guests[2].title()}'
print(message)

message = f'You are invited to my dinner, {guests[3].title()}'
print(message)

message = f'You are invited to my dinner, {guests[4].title()}'
print(message)

message = f'You are invited to my dinner, {guests[5].title()}'
print(message)

print(f'Total Guest Count: {len(guests)}')
