#!/usr/bin/python

# Exercise 7.5-7.6

age_prompt = "\nIf under 3, you get to get a free ticket!"
age_prompt += "\nHow old are you? "

while True:
    age = input(age_prompt)
    age = int(age)
    if age < 3:
        print("\nYour ticket is free")
    elif age >= 3 and age < 12:
        print("\nYour ticket will be $8")
    elif age >= 12:
        print("\nYour ticket will be $12")
    elif age_prompt == "quit":
        break