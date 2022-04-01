unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, StrUtils, JPEG, ToolWin, ComCtrls,
  Menus;
  var f: Text;
      i,j: integer;
      l,k: string;
type
  TForm1 = class(TForm)
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
var
   Name2: array [1..11] of string;
   Score2: array [1..11] of string;
   Score3: array [1..11] of integer;


procedure TForm1.FormCreate(Sender: TObject);
begin
  if ((FileExists('Score.txt')=false) or (FileExists('Score2.txt')=false)) then
  begin
     AssignFile(f,'Score.txt');
     Rewrite(f);
     Append(f);
     for i:=1 to 10 do
     Writeln(f,'Èìÿ 0');
     CloseFile(f);
     AssignFile(f,'Score2.txt');
     Rewrite(f);
     Append(f);
     for i:=1 to 11 do
     begin
     Writeln(f,'Èìÿ');
     Writeln(f,'0');
     end;
     CloseFile(f);
  end;
  AssignFile(f,'Score2.txt');
  Reset(f);
  for i:=1 to 11 do
  begin
  Readln(f,Name2[i]);
  Readln(f,Score2[i]);
  Score3[i]:=StrToInt(Score2[i]);
  end;
  CloseFile(f);

  for i := 1 to 10 do
    for j := 1 to 11-i do
       begin
           Score3[j]:=StrToInt(Score2[j]);
           Score3[j+1]:=StrToInt(Score2[j+1]);
            if Score3[j] < Score3[j+1] then
            begin
                k := Score2[j];
                l:=Name2[j];
                Score2[j] := Score2[j+1];
                Name2[j]:=Name2[j+1];
                Score2[j+1]:= k;
                Name2[j+1]:=l;
            end;
       end;
//  Score2[11]:='';
//  Name2[11]:='';
  AssignFile(f,'Score.txt');
  Rewrite(f);
  for i:=1 to 10 do
  Writeln(f,Name2[i],' ',Score2[i]);
  CloseFile(f);
  AssignFile(f,'Score2.txt');
  Rewrite(f);
  for i:=1 to 11 do
  begin
  Writeln(f,Name2[i]);
  Writeln(f,Score2[i]);
  end;
  CloseFile(f);
  Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

end.
