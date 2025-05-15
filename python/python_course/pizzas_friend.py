#!/usr/bin/python

# Exercise 4.11
my_pizzas = ['bbq', 'pepperoni', 'pineapple', 'cheese']
friend_pizzas = my_pizzas [:]

my_pizzas.append('mozarella')
friend_pizzas.append('4-cheese')

print('My favorite pizzas are:')
print(my_pizzas[0].upper())
for pizza in my_pizzas[1:]:
    print(pizza.title())

print('\nMy friends favorite pizzas are:')
print(my_pizzas[0].upper())
for friend_pizza in friend_pizzas[1:]:
    print(friend_pizza.title())
