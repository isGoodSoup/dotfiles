#!/usr/bin/python

available_toppings = ['mushrooms', 'olives', 'green peppers', 'pepperoni', 'pineapple', 'extra cheese']

requested_toppings= ['mushrooms', 'french fries', 'pepperoni']

for requested_topping in requested_toppings:
    if requested_topping in available_toppings:
        print(f'Adding {requested_topping} to your pizza')
    else:
        print(f"Sorry! We don't have {requested_topping}")

print('\nYour pizza is finished, is there anything else?')
