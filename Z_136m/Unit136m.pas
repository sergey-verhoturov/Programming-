unit Unit136m;
       
interface
uses SysUtils,Dialogs;
type
  DinMas = array of integer;   //��� ������������� �������
  Tipfile = file of integer;   //��� ��������������� �����
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
     k: string[10];    //����� �������� � �������
   begin
     n:= StrToInt(InputBox('���������� ��������� � ������� ',' ',' '));
     SetLength(a,n);   //��������� ������ ���  ������������� �������
     { ���������� �������}
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
  n:= StrToInt(InputBox('���������� ��������� � ������� ',' ',' '));
  setlength(a, n);        // ������������� ������ �������,������ ��������� n
  for i := 0 to n - 1 do      // ���� ���������� � 0 �� n-1 (������ ��� � ������������ ������� ��������� ��� � 0)
  begin
    a[i] := random(10);      // ��������� ���������� �������( � ������ ������ �� 0 �� 9)
  end;
end;
 
   
  procedure WriteMassText(var a: array of integer; var f: text);
    var
      n,i: integer; //n- ���������� ��������� � ������
    begin
      n:= StrToInt(InputBox('�������  ���. ��������� � ������ ',' ',' '));
            writeln(f, '�������� ������');
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
    n:= StrToInt(InputBox('������� ���������� ��������� � ������ ',' ',' '));
    write(f, '�������� ������');
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
    n:= StrToInt(InputBox('���������� ��������� � ������� ',' ',' '));
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
    writeln(f, '���������:');
    write(f, r);
    writeln(f,' ');
  end;


end.
