#!/usr/bin/python

# Exercise 3.10

distros = ['arch', 'ubuntu', 'debian', 'fedora', 'manjora', 'zoriOS', 'slackware', 'red hat']
title = '\n1- Print items formatted.'
print(title)
sentence = f'My favorite distro is {distros[0].title()}'
# sentence = f'My favorite distro is {distros[1].title()}'
# sentence = f'My favorite distro is {distros[2].title()}'
# sentence = f'My favorite distro is {distros[3].title()}'
# sentence = f'My favorite distro is {distros[4].title()}'
# sentence = f'My favorite distro is {distros[5].title()}'
# sentence = f'My favorite distro is {distros[6].title()}'
# sentence = f'My favorite distro is {distros[7].title()}'
# sentence = f'My favorite distro is {distros[8].title()}'
print(f'\t{sentence}')

title = '\n2- Append and insert items to the list.'
print(title)

distros_alt = ['arch', 'debian', 'fedora']

print(f'\tOriginal = {distros_alt}')
distros_alt.append('macOS')
print(f'\tAppend = {distros_alt}')

distros_alt.insert(1, 'black arch')
print(f'\tInsert = {distros_alt}')

title = '\n3- Delete, pop and remove (by value) an item from the list.'
print(title)

distros_alt = ['ubuntu', 'arch', 'debian', 'fedora']

print(f'\tOriginal = {distros_alt}')
del distros_alt[1]
print(f'\n\tItem deleted: {distros_alt[1]}')
print(f'\tDelete = {distros_alt}')

distros_popped = distros_alt.pop()
print(f'\n\tItem popped: {distros_popped}')
print(f'\tPop = {distros_alt}')

distros_ver2 = ['zorianOS', 'ubuntu', 'arch', 'fedora', 'endeavourOS']

distros_ver2.remove('ubuntu')
print(f'\n\tItem removed: {'ubuntu'}')
print(f'\tRemove = {distros_ver2}')

title = '\n4- Sort (all options) the items on the list.'
print(title)

print(f'\tOriginal = {distros}')
distros.sort()
print(f'\n\tSort = {distros}')

distros.sort(reverse=True)
print(f'\n\tSort(R) = {distros}')

distros.sort()
print(f'\n\tSort(S) = {sorted(distros)}')
print(f'\tOriginal = {distros}')

print(f'\n\tOriginal = {distros_ver2}')
distros_ver2.reverse()
print(f'\tReverse = {distros_ver2}')

title = '\n5- Total of items on the list.'
print(title)

total_distros = len(distros)
print(f"\tThere's {total_distros} distros that I would recommend.")
