program qq;
var arr:array[1..21] of integer;
cnt, i, n:integer;
first_index:integer;
begin
  writeln('Введите 20 чисел');
  
  for i := 1 to 20 do
  begin
    write('Введите эелемент ', i, ': ');
    read(arr[i]);
  end;
  
  write('Начальный массив: [');
  for i := 1 to 20 do
  begin
    write(arr[i]);
    if i < 20 then write(', ');
  end;
  writeln(']');
  
  cnt := 0;
  for i := 1 to 20 do
  begin
    if arr[i] mod 2 = 0 then
      cnt := cnt + 1;
  end;
  
  writeln('Количество четных эл-ов: ', cnt);
  
  first_index := -1;
  for i := 1 to 20 do
  begin
    if arr[i] mod 2 = 0 then
    begin
      first_index := i;
      break;
    end;
  end;
  
  if first_index <> -1 then
  begin
    for i := 21 downto first_index + 2 do
      arr[i] := arr[i-1];
    
    arr[first_index + 1] := cnt;
    
    
    write('Конечный массив: [');
    for i := 1 to 21 do
    begin
      write(arr[i]);
      if i < 21 then write(', ');
    end;
    writeln(']');
  end
  else
    writeln('В массиве нет четных чисел');
end.