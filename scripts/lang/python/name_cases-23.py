#!/usr/bin/python

# Exercise 2.3
name = 'eric'
print(f"Hello, {name.title()}, would you like to learn some Python today?")

# Exercise 2.4
print(f"{name.title()}, {name.lower()}, {name.upper()}")

# Exercise 2.5
quote = "'One day, I am going to grow wings, a chemical reaction, hysterical and useless.'"
first_name = 'thom'
last_name = 'york'
author = f"{first_name.title()} {last_name.title()}"
full_quote = f"{author} once said, {quote}"
print(full_quote)

# Exercise 2.6
famous_person = f"{first_name.title()} {last_name.title()}"
message = f"{famous_person} once said, {quote}"
print(message)

# Exercise 2.7
full_name = '\tjohnny greenwood '
message, message_alt, message_alt2 = f"{full_name.rstrip()}", f"{full_name.lstrip()}", f"{full_name.strip()}"
print(f"{message}, {message_alt}, {message_alt2}")

# Exercise 2.8
filename = 'python_notes.txt'
filename_filter = f"{filename.removesuffix(.txt)}"
print('filename_filter')
