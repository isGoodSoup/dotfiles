#!/usr/bin/python

alien_0 = {'color': 'green', 'points': 5}
#print(alien_0['color'])
#print(alien_0['points'])

alien_0['x_position'] = 0
alien_0['y_position'] = 25
#print(alien_0)

alien_0['color'] = 'yellow'
#print(alien_0)

original_x = f"{alien_0['x_position']}"

#alien_0['speed'] = 'slow'
alien_0['speed'] = 'medium'
#alien_0['speed'] = 'fast'

if alien_0['speed'] == 'slow':
    x_increment = 1
elif alien_0['speed'] == 'medium':
    x_increment = 2
else:
    x_increment = 3

new_x = alien_0['x_position'] + x_increment
print(f'Old X Position: {original_x}')
print(f'New X Position: {new_x}')

print('')

alien_0['hitpoints'] = 20
for value in alien_0:
    print(value, alien_0[f'{value}'])

print('')

del alien_0['hitpoints']
for value in alien_0:
    print(value, alien_0[f'{value}'])
