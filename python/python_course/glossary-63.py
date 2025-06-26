#!/usr/bin/python

# Exercise 6.3

glossary = {
    'string': 'It is the content in quotes that the interpreter of python spells out.',
    'list': 'A series of values that fall under the same term. e.g. subaru, audi, volswaggen, nissan all in the "cars" list.',
    'dictionary': 'A set of definitions of values that are linked to their respective parent keys.',
    'key': 'The term or variable that parents the value.',
    'value': 'Said to be content from which variables, keys, strings are born from.'
}

for word in glossary:
    definition = f"{word.upper()}: {glossary[f'{word}']}"
    print(definition)

print('')

print("\nAnd that's it, that's all")
