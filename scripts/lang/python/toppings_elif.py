#!/usr/bin/python

requested_toppings = ['mushrooms', 'extra cheese']

if 'mushrooms' in requested_toppings:
    topping = 'mushrooms'
elif 'pepperoni' in requested_toppings:
    topping = 'pepperoni'
elif 'extra cheese' in requested_toppings:
    topping = 'extra cheese'

for topping in requested_toppings:
    print(f'Adding {topping}.')
