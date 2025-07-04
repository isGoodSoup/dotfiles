#!/usr/bin/python

responses = {}

polling_active = True

while polling_active:
    name = input("\nWhat is your name? ")
    response = input("Which mountain would you like to climb someday? ")

    responses[name] = response
    repeat = input("Would you like to let another person respond? Y/N: ")

    if repeat == "N":
        polling_active = False
    elif repeat == "Y":
        continue

    print ("\n---- Poll Results ----")
    for name, response in responses.items():
        print(f"{name} would like to climb {response}.")
