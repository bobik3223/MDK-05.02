uses GraphABC;
var x1,y1,x2,y2:integer;
begin
  SetWindowSize(550, 500);
  x1:=50;
  y1:=450;
  x2:=70;
  y2:=470;
  repeat 
    ClearWindow(clWhite);
    SetBrushColor(clBlack); 
    Rectangle(x1, y1, x2, y2);
    x1:=x1+2;
    y1:=y1-5;
    x2:=x2+2;
    y2:=y2-5;
    Sleep(5);
  until y1 < 10;
  repeat 
    ClearWindow(clWhite);
    SetBrushColor(clBlack);
    Rectangle(x1, y1, x2, y2);
    x1:=x1+2;
    y1:=y1+3;
    x2:=x2+2;
    y2:=y2+3;
    Sleep(5);
  until y1 > 450;
end.