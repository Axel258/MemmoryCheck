unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, StrUtils, JPEG, ToolWin, ComCtrls,
  Menus, Unit1;
   const A=24; // Кол-во карт
         N=16; // Виды карт

   var Level: byte=2;
   var Img: array [1..A] of TImage;
       q: array [1..50] of char;
   var F:Text;
       Tex:String;
       i0:integer;
       Pushed: byte=0;
       GameEnd:integer=A div 2;
       k,l,T1,T2,y,xScore,Ex:integer;
       Score:integer=2147483646;
       leng:string;
type
  TForm2 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    MainMenu1: TMainMenu;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Timer2: TTimer;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    N12: TMenuItem;
    N13: TMenuItem;
    Label3: TLabel;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;

    procedure FormCreate(Sender: TObject);
    procedure ImageClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);


   // procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public

end;

var
  Form2: TForm2;
  M: array [1..A] of integer;
  Name1: array [1..N] of string;
  implementation


{$R *.dfm}


{procedure TForm2.ImageClick(Sender: TObject);
begin
    Image1.Visible := True;
    Image2.Visible := False;
end; }

procedure TForm2.FormCreate(Sender: TObject);
var
    i,Lv,Lv1 : integer;

begin
  Lv1:=0;
  Form2.AutoSize:=False;
  Form2.Height:=602;
  Form2.Width:=945;
  Menu:=MainMenu1;
  Form2.Label1.Visible:=True;
  Form2.Label2.Visible:=True;
  Form2.Edit1.Visible:=False;
  Form2.Edit2.Visible:=False;
  Form2.Button1.Visible:=False;
  Pushed:=0;
  Ex:=1;
  xScore:=1;
  if (Level=1) then begin Lv:=3; xScore:=5 end else Lv:=1;
  if (Level=2) then begin xScore:=3; Lv:=2; Lv1:=4; end;

  GameEnd:=(GameEnd div Lv)+(Lv1 div 2);

  for i:=1 to N do
    Name1[i]:=IntToStr(i)+'.jpg';
     T1:=0;
     T2:=0;
    randomize;

   for i:=1 to (((A div 2) div Lv)+Lv1) do     // Задаются начальные изображения
    begin
      repeat
      M[i]:=random(N)+1;
      until M[i]>1;
      M[((A div Lv)+Lv1)-i+1]:=M[i];

    end;

   Img[1]:=  Image1;
   Img[2]:=  Image2;
   Img[3]:=  Image3;
   Img[4]:=  Image4;
   Img[5]:=  Image5;
   Img[6]:=  Image6;
   Img[7]:=  Image7;
   Img[8]:=  Image8;
   Img[9]:=  Image9;
   Img[10]:=  Image10;
   Img[11]:=  Image11;
   Img[12]:=  Image12;
   Img[13]:=  Image13;
   Img[14]:=  Image14;
   Img[15]:=  Image15;
   Img[16]:=  Image16;
   Img[17]:=  Image17;
   Img[18]:=  Image18;
   Img[19]:=  Image19;
   Img[20]:=  Image20;
   Img[21]:=  Image21;
   Img[22]:=  Image22;
   Img[23]:=  Image23;
   Img[24]:=  Image24;
   for i:=1 to ((A div Lv)+Lv1) do
   begin
      Img[i].Picture.LoadFromFile(Name1[1]);
      Img[i].Visible:=True;
   end;
end;


procedure TForm2.ImageClick(Sender: TObject);
var Click:string;
begin
    leng:='';
    if Sender is TComponent then
    begin
     Click:=(Sender as TComponent).Name;
     if Click[length(Click)-1]<>'e' then
        leng:=Click[length(Click)-1]+Click[length(Click)]
     else
        leng:=Click[length(Click)];

    end;
     case  Pushed   of
     0: begin k:=StrToInt(leng);
              Pushed:=Pushed+1;
              Img[k].Picture.LoadFromFile(Name1[M[k]]);
              Timer1.Enabled:=True;
        end;
     1: begin l:=StrToInt(leng);
              T2:=0;
              Pushed:=Pushed+1;
              Img[l].Picture.LoadFromFile(Name1[M[l]]);
              Timer1.Enabled:=True;
        end;
    end;
end;



     // l:=k;
 {
      if Pushed < 2 then
      begin
       Img[k].Picture.LoadFromFile(Name1[M[k]]);
       l:=k;
       Pushed:=Pushed+1;
       end
      else}




procedure TForm2.Timer1Timer(Sender: TObject);
begin
   T2:=0;
   while(T2<2) do T2:=T2+1;
   if (Pushed=2) then
        if (M[l]=M[k]) and (l<>k) then
         begin
           Pushed:=0;
          Img[k].Visible:=False;
          Img[l].Visible:=False;
          GameEnd:=GameEnd-1;
         end
        else
          begin
            Pushed:=0;
            Img[k].Picture.LoadFromFile(Name1[1]);
            Img[l].Picture.LoadFromFile(Name1[1]);
          end;
          Timer1.Enabled:=False;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
   T1:=T1+1;
   Label1.Caption:=IntToStr(T1 div 5);
   Label2.Caption:=IntToStr(GameEnd);
   if (GameEnd=0) and (Pushed=0) then
     begin
     Pushed:=8;
     Score:=Score div (T1*T1*T1) div xScore;
     Showmessage('Вы победили!');
     Form2.Label1.Visible:=False;
     Form2.Label2.Visible:=False;
     Menu:=nil;
     Form2.Edit1.Visible:=True;
     Form2.Edit2.Visible:=True;
     Form2.Button1.Visible:=True;
     Form2.AutoSize:=True;
     end;
end;


procedure TForm2.N4Click(Sender: TObject);
begin
    for y:=1 to A  do
     Img[y].Visible:=False;
    Level:=1;
    GameEnd:=A div 2;
    FormCreate(self);
end;

procedure TForm2.N5Click(Sender: TObject);
begin
    for y:=1 to A  do
    Img[y].Visible:=False;
    Level:=2;
    GameEnd:=A div 2;
    FormCreate(self);
end;

procedure TForm2.N6Click(Sender: TObject);
begin
    for y:=1 to A  do
     Img[y].Visible:=False;
    Level:=3;
    GameEnd:=A div 2;
    FormCreate(self);
end;


procedure TForm2.N2Click(Sender: TObject);
begin
   Form2.Close;
end;

procedure TForm2.N13Click(Sender: TObject);
begin
    Form1.ShowModal;
end;

procedure TForm2.Button1Click(Sender: TObject);
var i:integer;
    Name3: array [1..22] of string;
begin
   AssignFile(f,'Score2.txt');
   Reset(f);
   for i:=1 to 20 do
   readln(f,Name3[i]);
   If(Edit2.Text='') then
   Name3[21]:='Безымянный'
   else
   Name3[21]:=Edit2.Text;
   Name3[22]:=IntToStr(Score);
   Rewrite(f);
   for i:=1 to 22 do
   writeln(f,Name3[i]);
   CloseFile(f);
   Form2.Close;
end;

end.
