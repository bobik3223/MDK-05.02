function sumTo(a: integer): integer; // Параметризация
begin
  // База рекурсии
  if a <= 1 then
    result := 1
  // Декомпозиция
  else
    result := a + sumTo(a - 1);
end;
begin
  println('Введите число: ');  
  var input: integer := readinteger();  
  var resultval: integer := sumTo(input);
  println('Сумма чисел от 1 до ', input, ' равна: ', resultval);
end.
