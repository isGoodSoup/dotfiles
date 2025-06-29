#!/usr/bin/python

shopping_list = {}

intro = "\nWelcome to Another Simple Shopping Script (A3S)"
print(intro)

isListActive = True

while isListActive:
    item = input("Item: ").strip().upper()
    
    if item == "QUIT":
        isListActive = False
        break
    
    try:
        amount = int(input("Count: "))
    except ValueError:
        print("Please enter a valid number for count!")
        continue
    
    shopping_list[item] = amount

print("\nYour Shopping List:")

for item, amount in shopping_list.items():
    print(f"{amount}    {item}")

print("-------------------")