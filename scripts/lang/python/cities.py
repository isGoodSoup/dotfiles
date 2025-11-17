#!/usr/bin/python

prompt = "\nPlease enter the name of a city you have visited: "
prompt += "\n(Enter 'quit' when you are finished): "

while True:
    city = input(prompt)

    if city == 'quit':
        break
    else:
        print(f'\nI would love to go to {city.title()}')
