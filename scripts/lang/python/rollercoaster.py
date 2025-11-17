#!/usr/bin/python

height = input("How tall are you (cm)? ")
height = int(height)

if height >= 150:
    print(f"You're tall enough to ride!")
else:
    print(f"Sorry, you're not tall enough.")
