#!/usr/bin/python

# Exercise 7.4
ingredients = []

prompt = "\nWelcome to Joey's Pizza!"
prompt += f"\nYour ingredients, please: "

while True:
    added_ingredients = input(prompt)
    ingredients.append(added_ingredients)

    if added_ingredients == 'quit':
        break

print(f'\nTotal of ingredients: {len(ingredients)}')

for value in ingredients:
    if value != 'quit':
        print(f'{value}')