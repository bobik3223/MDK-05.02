uses graphABC;
var i, j, x1, x2, y1, y2, N: integer;
   hx, hy, x, y: real;
begin
  SetWindowSize(500, 400);
  x1 := 50; y1 := 50;
  x2 := 450; y2 := 350;
  N := 8;
  SetPenColor(clBlack);
  SetPenWidth(2);
  Rectangle(x1, y1, x2, y2);
  hx := (x2 - x1) / N;
  hy := (y2 - y1) / N;
  for i := 0 to N - 1 do
  begin
    for j := 0 to N - 1 do
    begin
      if (i + j) mod 2 = 0 then
        SetBrushColor(clWhite)
      else
        SetBrushColor(clLightGray);
      FillRectangle(round(x1 + i * hx), 
                   round(y1 + j * hy), 
                   round(x1 + (i + 1) * hx), 
                   round(y1 + (j + 1) * hy));
    end;
  end;
  SetPenColor(clBlack); 
  SetPenWidth(1);
  SetBrushStyle(bsClear);
  for i := 1 to N - 1 do
  begin
    x := x1 + i * hx;
    Line(round(x), y1, round(x), y2);
  end;
  for j := 1 to N - 1 do
  begin
    y := y1 + j * hy;
    Line(x1, round(y), x2, round(y));
  end;
end.