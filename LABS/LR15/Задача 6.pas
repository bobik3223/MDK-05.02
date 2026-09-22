procedure fib (i,n: integer); // Параметризация
  begin
  print(i+n,'');
  if i + n < 89 then  // База рекурсии
    fib(n, i + n);    // Декомпозиция: следующий вызов с новыми параметрами
  end;
begin
  fib(0,1);
end.
