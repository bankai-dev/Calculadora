unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    txtresult: TEdit;
    BtnBS: TButton;
    BtnCE: TButton;
    BtnC: TButton;
    BtnPM: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn2: TButton;
    BtnPLUS: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    BtnSbt: TButton;
    Btn1: TButton;
    Btn9: TButton;
    Btn3: TButton;
    BtnMTPL: TButton;
    Btn0: TButton;
    BtnPnt: TButton;
    BtnIgl: TButton;
    BtnDvs: TButton;
    procedure Btn7Click(Sender: TObject);
    procedure Btn8Click(Sender: TObject);
    procedure Btn9Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn0Click(Sender: TObject);
    procedure BtnBSClick(Sender: TObject);
    procedure BtnCEClick(Sender: TObject);
    procedure BtnCClick(Sender: TObject);
    procedure BtnPMClick(Sender: TObject);
    procedure BtnPLUSClick(Sender: TObject);
    procedure BtnSbtClick(Sender: TObject);
    procedure BtnMTPLClick(Sender: TObject);
    procedure BtnDvsClick(Sender: TObject);
    procedure BtnPntClick(Sender: TObject);
    procedure BtnIglClick(Sender: TObject);
  private
    { Private declarations }
    num1, num2, result: String;
    oper: Char;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Btn0Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='0'
   else
   txtresult.Text :=txtresult.Text + '0';
end;

procedure TForm1.Btn1Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='1'
   else
   txtresult.Text :=txtresult.Text + '1';
end;

procedure TForm1.Btn2Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='2'
   else
   txtresult.Text :=txtresult.Text + '2';
end;

procedure TForm1.Btn3Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='3'
   else
   txtresult.Text :=txtresult.Text + '3';
end;

procedure TForm1.Btn4Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='4'
   else
   txtresult.Text :=txtresult.Text + '4';
end;

procedure TForm1.Btn5Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='5'
   else
   txtresult.Text :=txtresult.Text + '5';
end;

procedure TForm1.Btn6Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='6'
   else
   txtresult.Text :=txtresult.Text + '6';
end;

procedure TForm1.Btn7Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='7'
   else
   txtresult.Text :=txtresult.Text + '7';

end;

procedure TForm1.Btn8Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='8'
   else
   txtresult.Text :=txtresult.Text + '8';
end;

procedure TForm1.Btn9Click(Sender: TObject);
begin
if txtresult.Text ='0' then
   txtresult.Text :='9'
   else
   txtresult.Text :=txtresult.Text + '9';
end;

procedure TForm1.BtnBSClick(Sender: TObject);
begin
      txtresult.Text:= copy(txtresult.text,1,length(txtresult.text)-1);
      if txtresult.text = '' then
      txtresult.text := '0';

end;

procedure TForm1.BtnCClick(Sender: TObject);
begin
     txtresult.text :='0';
end;

procedure TForm1.BtnCEClick(Sender: TObject);
var f, s: String;
begin
      txtresult.text :='0';
f := num1;
s := num2;
f := '';
s := '';
end;

procedure TForm1.BtnDvsClick(Sender: TObject);
begin
num1 := txtresult.text;
  oper := '/';
  txtresult.text :='';
end;

procedure TForm1.BtnIglClick(Sender: TObject);
begin
      num2 := txtresult.text;
      if oper = '+' then
      result := FloatToStr(StrToFloat(num1) + StrToFloat(num2));
      txtResult.Text :=result;

      if oper = '-' then
      result := FloatToStr(StrToFloat(num1) - StrToFloat(num2));
      txtResult.Text :=result;

      if oper = '*' then
      result := FloatToStr(StrToFloat(num1) * StrToFloat(num2));
      txtResult.Text :=result;

      if oper = '/' then
      result := FloatToStr(StrToFloat(num1) / StrToFloat(num2));
      txtResult.Text :=result;

end;

procedure TForm1.BtnMTPLClick(Sender: TObject);
begin
num1 := txtresult.text;
  oper := '*';
  txtresult.text :='';
end;

procedure TForm1.BtnPLUSClick(Sender: TObject);
begin
  num1 := txtresult.text;
  oper := '+';
  txtresult.text :='';
end;

procedure TForm1.BtnPMClick(Sender: TObject);
var pm: real;

begin

  pm:=StrToFloat(txtResult.text);
  txtresult.text := FloatToStr(-1 * pm);

end;

procedure TForm1.BtnPntClick(Sender: TObject);
begin
      if (POS('.',txtresult.text)<>0) then
      exit
      else
      txtresult.text:=txtresult.text + BtnPnt.Caption;

end;

procedure TForm1.BtnSbtClick(Sender: TObject);
begin
num1 := txtresult.text;
  oper := '-';
  txtresult.text :='';
end;

end.
