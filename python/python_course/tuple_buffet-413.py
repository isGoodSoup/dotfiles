#!/usr/bin/python

# Exercise 4.13

buffet = ['penne', 'spaguetti', 'bacon', 'angus meat', 'salad', 'fried eggs']
print('== Lunch Menu ==')
for dish in buffet:
    print(dish.title())

new_buffet = buffet[:]
new_buffet[2] = 'rotini'
new_buffet[0] = 'lumaconi'
print('== New Menu == ')
for dish in new_buffet:
    print(dish.title())
