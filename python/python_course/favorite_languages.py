#!/usr/bin/python

favorite_languages = {
    'jen': 'java',
    'michael': 'c++',
    'edward': 'rust',
    'phil': 'python'
}

for name, language in favorite_languages.items():
    print(f"{name.title()}'s favorite language is {language.title()}")

print('')

for name in sorted(favorite_languages.keys()):
    print(f"{name.title()}, thank you for taking the poll")
