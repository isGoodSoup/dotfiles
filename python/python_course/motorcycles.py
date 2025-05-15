#!/usr/bin/python

motorcycles = ['honda', 'suzuki', 'yamaha', 'ducati']
print(motorcycles)

# motorcycles[0] = 'ducati'

# motorcycles.append('ducati')

# motorcycles = []
# motorcycles.append('honda')
# motorcycles.append('suzuki')
# motorcycles.append('yamaha')

# motorcycles.insert(2, 'ducati')

# del motorcycles[0]

# popped_motorcycle = motorcycles.pop()

# print(popped_motorcycle)

# last_owned = motorcycles.pop()
# print(f'The last motorcycle I owned was a {last_owned.title()}')

too_expensive = 'ducati'
motorcycles.remove(too_expensive)
print(motorcycles)
print(f"\nA {too_expensive.title()} is way above my budget.")

# Final print of the list
# print(motorcycles)
