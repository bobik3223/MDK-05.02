procedure row(n:integer); // Параматеризация
begin
  if n >=1 then begin // База рекурсии
    print(n, ' ');
      row(n-2) // Декомпозиция
  end;
end;
begin
    row(25);
end.
