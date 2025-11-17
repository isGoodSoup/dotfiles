#!/usr/bin/python

prompt = 'Prime numbers are generally the ones divided by 1 and itself, with that in mind,'
prompt+= '\nInput your number: '

number = input(prompt)
number = int(number)

if number >  1:
    is_prime = True
    for i in range(2, number):
        if number % i == 0:
            is_prime = False
            break
    if is_prime:
        print(f'\n{number} is a prime number.')
    else:
        print(f'\n{number} is not a prime number.')
else:
    print(f'\n{number} is not a prime number.')


#if number % 1 == 0:
    #print(f'\n{number} is a prime number')
#elif number % 1 != 0:
    #print(f'\n{number} is NOT a prime number')

print('')
