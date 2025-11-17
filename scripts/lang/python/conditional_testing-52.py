#!/usr/bin/python

# Exercise 5.2

food = 'pizza'
boolean = f'{food == 'pizza'}'
print(boolean.lower())

bolean = f'{food == 'burger'}'
print(boolean.lower())

pizzas = ['bbq', 'pepperoni', 'pineapple', 'cheese']

number = 64
boolean_list = [f'{number == 64}', f'{number == 32}', f'{number != 16}',
                f'{number > 32}', f'{number < 32}', f'{number >= 32}', f'{number
                <= 32}', f'{number == 64 and number >= 16}', f'{number != 64 or
                number <= 128}', f'{'bbq' in pizzas}', f'{'bbq' not in pizzas}']

for boolean in boolean_list:
    print(boolean.lower())
