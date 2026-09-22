program qq;
var A, B, C, count_A, count_B, total, t:integer;
begin
read(A, B, C); // Ввод длины, ширины, размера коврика

count_A := 0;
t := A;
while t > 0 do begin
  count_A := count_A + 1;
  t := t - C;
  end;
  
count_B := 0;
t := B;
while t > 0 do begin
  count_B := count_B + 1;
  t := t - C;
  end;
  
total := 0;
t := count_B;
while t > 0 do begin
  total := total + count_A; //Умножаем count_A на count_B сложением, каждый шаг добавляет один ряд ковриков
  t := t - 1;
  end;

writeln(total);
end.
