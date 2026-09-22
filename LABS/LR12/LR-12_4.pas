var
  OriginalFile, TempFile: text;
  FileName, Line: string;
  K, CurrentLine: integer;
begin
  write('Введите имя файла: ');
  readln(FileName);
  write('Введите номер строки K: ');
  readln(K);
  assign(OriginalFile, FileName);
  reset(OriginalFile);
  assign(TempFile, 'temp_' + FileName);
  rewrite(TempFile);
  CurrentLine := 1; // счетчик текущей строки
  if K = 1 then
    writeln(TempFile, '');
  while not eof(OriginalFile) do
  begin
    readln(OriginalFile, Line);
    if CurrentLine = K then // если достигли строки K
    begin
      writeln(TempFile, '');  // записываем пустую строку в временный файл
    end;
    writeln(TempFile, Line);  // записываем текущую строку в временный файл
    CurrentLine := CurrentLine + 1;
  end;
  close(OriginalFile);
  close(TempFile);
  if K > CurrentLine then
  begin
    erase(TempFile);
    writeln('Строки с номером ', K, ' нет в файле.');
  end
  else
  begin
    erase(OriginalFile);
    rename(TempFile, FileName);
    writeln('Пустая строка вставлена перед строкой ', K);
  end;
  writeln;
  writeln('Содержимое файла ', FileName, ':');
  assign(OriginalFile, FileName);
  reset(OriginalFile);
  CurrentLine := 1;
  while not eof(OriginalFile) do
  begin
    readln(OriginalFile, Line);
    writeln(CurrentLine, ': ', Line);
    CurrentLine := CurrentLine + 1;
  end;
  close(OriginalFile);
end.