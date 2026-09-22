var result:integer;
procedure printGCD(a, b: integer); // Параметризация
{Рекурсивная процедура для нахождения НОД методом Евклида}
begin
  // База рекурсии
  if b = 0 then
    result:= a
  else 
    // Рекурсивный вызов
    // Вычисление остатка a mod b
    printGCD(b, a mod b);
end;
begin
  println('Числа: 3430 и 1365');
  printGCD(3430, 1365);
  println('НОД = ', result);
end.
