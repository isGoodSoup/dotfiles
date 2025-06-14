#!/usr/bin/python

# Exercise 4.1

pizzas = ['bbq', 'pepperoni', 'pineapple', 'cheese']
print(pizzas[0].upper())
for pizza in pizzas[1:]:
    print(f'I like {pizza.title()} pizza.')

love_pizza = f'But I must remark that, my favorite one is {pizzas[0].upper()}.'
print(love_pizza)
