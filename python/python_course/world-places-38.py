#!/usr/bin/python

# Exercise 3.8

places = ['berlin', 'la habana', 'río de janeiro', 'coppenhagen']
# Original list
print(places)
# Sorted (copy) of original list.
print(sorted(places))
# Reverse sorted (copy) of original list.
places.reverse()
print(places)
# Reverse the reverse (copy) list.
places.reverse()
print(places)
# Permanently sort the original list alphabetically.
places.sort()
print(places)
# Permanently sort (reverse) the original list alphabetically.
places.sort(reverse=True)
print(places)
