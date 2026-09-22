arr = []
print('Введите 20 чисел')

for i in range(20):
    num = int(input(f"Введите элемент {i + 1}: "))
    arr.append(num)

print(f"Начальный массив: {arr}")

count = 0
for num in arr:
    if num % 2 == 0:
        count += 1

print(f"Количество четных элементов: {count}")

first_index = -1
for i in range(20):
    if arr[i] % 2 == 0:
        first_index = i
        break

if first_index != -1:
    arr.insert(first_index + 1, count)
    print(f"Конечный массив : {arr}")
else:
    print("В массиве нет четных чисел")