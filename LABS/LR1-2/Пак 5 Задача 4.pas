program qq;
var
coordinate:string;
digit, letter:char;
digit_num, letter_num, sum:integer;

begin
  
  writeln('Введите координаты точки: ');
  read(coordinate);
  
  letter := coordinate[1];
  digit := coordinate[2]; 
  
  letter_num := ord(letter);
  digit_num := ord(digit);
  
  sum := letter_num + digit_num;
  
  if sum mod 2 = 0 then
    writeln('BLACK')
  else
    writeln('WHITE');
end.
  