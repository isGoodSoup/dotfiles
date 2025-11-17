#!/usr/bin/python

# Exercise 4.10

pizzas = ['BBQ', 'pepperoni', 'pineapple', 'cheese']
for pizza in pizzas:
    print(f'I like {pizza.title()} pizza.')

love_pizza = f'But I must remark that, my favorite one is {pizzas[0].upper()}.'
print(love_pizza)

print(f'\nAnd these are the top three:')
for pizza in pizzas[:3]:
    print(pizza.upper())

print(f'\nThe main ones being:')
for pizza in pizzas[1:3]:
    print(pizza.title())

print(f'\nThe last ones being:')
print(pizzas[1:])
