#!/usr/bin/python

legal_age = 18

data = {}

prompt = "\nDigital Voting Script (DVS)"
prompt += "\nHow old are you? "

isPollActive = True

while isPollActive:
    age = input(prompt)
    age = int(age)
    
    if age < 18:
        print("\nYou must be 18 to vote")
        break
    
    name_prompt = input("What is your name? ")

    new_prompt = "\nWhom are you polling for?"
    new_prompt += "\nBlue (B) | Red (R) | Yellow (Y) | "
    
    response = input(new_prompt)
    data[name_prompt] = response
    
    if response == "B" or response == "R" or response == "Y":
        print(f"\nThank you for your vote, {name_prompt}!")
        break
    else:
        print("Invalid response.")
        break

    continue_poll = input("Do you want to let someone else take the poll? y/n: ")
    if continue_poll == "y":
        continue
    elif continue_poll == "n":
        isPollActive = False
