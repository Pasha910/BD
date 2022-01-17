unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  ComCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, DB, ADODB,
  StdCtrls, Mask, DBCtrlsEh, PrnDbgeh;

type
  TForm2 = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    machines_ds1: TDataSource;
    con1: TADOConnection;
    machines_qry1: TADOQuery;
    repairs_qry2: TADOQuery;
    repairs_ds2: TDataSource;
    dbgrdh1: TDBGridEh;
    dbgrdh2: TDBGridEh;
    edt1: TDBEditEh;
    edt2: TDBEditEh;
    edt3: TDBEditEh;
    edt4: TDBEditEh;
    edt5: TDBEditEh;
    edt6: TDBEditEh;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    Helpqry1: TADOQuery;
    Helpqry2: TADOQuery;
    btn3: TButton;
    prntdbgrdh1: TPrintDBGridEh;
    prntdbgrdh2: TPrintDBGridEh;
    btn4: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn2Click(Sender: TObject);
var
  repairs_name, ctoim, prod: string;

begin
   repairs_name:= QuotedStr(Unit2.Form2.edt1.Text);
   ctoim:= QuotedStr(Unit2.Form2.edt2.Text);
   prod:= QuotedStr(Unit2.Form2.edt3.Text);

   with Helpqry1 do
   begin
     Close;
     SQL.Clear;
     SQL.Add('exec newRepairs '+repairs_name+','+ctoim+','+prod);
     ExecSQL;
     repairs_qry2.Active:=False;
     repairs_qry2.Active:=True;
   end;
end;

procedure TForm2.btn1Click(Sender: TObject);
var
  mesto, marca, god: string;
begin
   mesto:= QuotedStr(Unit2.Form2.edt4.Text);
   marca:= QuotedStr(Unit2.Form2.edt5.Text);
   god:= QuotedStr(Unit2.Form2.edt6.Text);
   with Helpqry2 do
     begin
     Close;
     SQL.Clear;
     SQL.Add('exec newMachines '+mesto+','+marca+','+god);
     ExecSQL;
     machines_qry1.Active:=False;
     machines_qry1.Active:=True;
   end;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
    prntdbgrdh1.SetSubstitutes(['%[Today]', DateToStr(Now)]);
    prntdbgrdh1.Preview;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
    prntdbgrdh2.SetSubstitutes(['%[Today]', DateToStr(Now)]);
    prntdbgrdh2.Preview;
end;

end.
