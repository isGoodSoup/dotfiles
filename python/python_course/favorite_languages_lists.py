#!/usr/bin/python

favorite_languages = {
    'jen': ['python', 'java'],
    'michael': ['c'],
    'edward': ['rust', 'go'],
    'phil': ['python', 'haskell']
}

for name, languages, in favorite_languages.items():
    if len(languages) == 1:
        print(f"\n{name.title()}'s favorite language is:")
    else:
        print(f"\n{name.title()}'s favorite languages are:")    
    for language in languages:
        print(f'\t{language.title()}')
