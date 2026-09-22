A = int(input()) # Длина 
B = int(input()) # Ширина
C = int(input()) # Размер коврика

count_A = 0
t = A
while t > 0:
    count_A += 1
    t -= C

count_B = 0
t = B
while t > 0:
    count_B += 1
    t = t - C

total = 0
t = count_B
while t > 0:
    total += count_A #Умножаем count_A на count_B сложением, каждый шаг добавляет один ряд ковриков
    t -= 1

print(total)