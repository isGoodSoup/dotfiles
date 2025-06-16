#!/usr/bin/python

prompt = '\nTell me something and I will repeat it back to you'
prompt += "\nEnter 'quit' to exit the program. "

message = ""
while message != 'qq':
    message = input(prompt)
    print(message)
