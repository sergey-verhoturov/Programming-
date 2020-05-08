unit Unit136m;
       
interface
uses SysUtils,Dialogs;
type
  DinMas = array of integer;   //Тип динамического массива
  Tipfile = file of integer;   //Тип типизированного файла
  procedure ZapMassHand(var a: DinMas);
  procedure WriteMassText(var a: array of integer; var f: text);
  procedure ZapMassRandom(var a: DinMas);
  procedure WriteMassTipFile(var a: DinMas; var f: text);
  procedure ResultText(var a: DinMas; var r: string);  overload;
   procedure WriteResText(var r: string; var f: text);


implementation
   procedure ZapMassHand(var a: DinMas);
   var
     n,i : word;
     k: string[10];    //Номер элемента в массиве
   begin
     n:= StrToInt(InputBox('Количество элементов в массиве ',' ',' '));
     SetLength(a,n);   //Выделение памяти для  динамического массива
     { Заполнение массива}
     for i:=0 to n-1 do
      begin
       k:= IntToStr(i);
       a[i]:= StrToInt(Inputbox('input' + k + 'element',' ',' '));
      end;
   end;

 procedure ZapMassRandom(var a: DinMas);
 var
  i, n: word;
   k: string[10];
begin
  n:= StrToInt(InputBox('Количество элементов в массиве ',' ',' '));
  setlength(a, n);        // устанавливаем размер массива,равный введённому n
  for i := 0 to n - 1 do      // цикл заполнения с 0 до n-1 (потому что в динамическом массиве нумерация идёт с 0)
  begin
    a[i] := random(10);      // заполняем случайными числами( в данном случае от 0 до 9)
  end;
end;
 
   
  procedure WriteMassText(var a: array of integer; var f: text);
    var
      n,i: integer; //n- количество элементов в строке
    begin
      n:= StrToInt(InputBox('введите  кол. элементов в строке ',' ',' '));
            writeln(f, 'Заданный массив');
      write(f, a[0]:5,'  ');
      for i:=1 to High(a) do
        if (i mod n = 0) then writeln(f, a[i]:5)
         else write(f, a[i]:5,'  ');
      writeln(f,' ');
    end;

procedure WriteMassTipFile(var a: DinMas; var f: text);
  var
    n,i: integer;
  begin
    n:= StrToInt(InputBox('Введите количество элементов в строке ',' ',' '));
    write(f, 'Заданный массив');
    write(f, a[0]:5,'  ');
    for i:=1 to High(a) do
      if (i mod n = 0) then write(f, a[i]:5)
      else write(f, a[i]:5,'  ');
    write(f,' ');
  end;

procedure ResultText(var a: DinMas; var r: string); overload;
  var
  s:real ;
  n, i:integer;
  f: text;
    sum: string;
  begin
    s:=0;
    n:= StrToInt(InputBox('Количество элементов в массиве ',' ',' '));
    SetLength(a,n);
    for i:= 0 to n-1 do
      begin
        s:= s + sin(abs(a[i]));
      end;
    r:=FloatToStr(s);
  end;

  procedure WriteResText(var r: string; var f: text);
  var
    i: integer;
  begin
    writeln(f, 'Результат:');
    write(f, r);
    writeln(f,' ');
  end;


end.
