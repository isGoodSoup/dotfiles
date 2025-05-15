#!/usr/bin/python

# Exercise 4.3-4.9
digits21 = list(range(0,21))
print(digits21)

one_million = list(range(0,10000001))
print(f'{min(one_million)}, {max(one_million)}, {sum(one_million)}')

odd_numbers = range(1,20,3)
for value in odd_numbers:
    print(value)

threes = list(value*3 for value in range(1,31))
print(threes)

cubic_first_ten = list(range(1,11))
print(cubic_first_ten)
for value in cubic_first_ten:
    print(value**3)

print(f'Compressed list: {list(value**3 for value in range(1,11))}')
