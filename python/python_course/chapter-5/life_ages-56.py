#!/usr/bin/python

# Exercise 5.6

age = 67

if age < 2:
    print("You're a baby")
elif age < 4:
    print("You're a toddler")
elif age == 4 or age < 13:
    print("You're a child")
elif age == 13 or age < 20:
    print("You are a teenager")
elif age == 20 or age < 65:
    print("You are an adult!")
else:
    print("You are over 65 years old")
