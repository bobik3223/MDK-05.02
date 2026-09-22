coordinate = input('Введите координаты точки: ')

letter = coordinate[0]
digit = coordinate[1]

letter_num = ord(letter)
digit_num = ord(digit)

sum = letter_num + digit_num

if sum % 2 == 0:
    print('BLACK')
else:
    print('WHITE')