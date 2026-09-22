 function stepen (a,b: integer):integer; // Параметризация
begin
  // База рекурсии  
  if b = 0 then
    stepen := 1
  // Декомпозиция    
  else
    stepen := a * stepen(a, b - 1);
end;
begin
  var x: integer := readinteger('Введите основание: ');
  var y: integer := readinteger('Введите степень: ');
  println('Результат: ', stepen(x, y));
end.
