unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DB,
  ADODB, StdCtrls, Mask, DBCtrlsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, ComCtrls, PrnDbgeh;

type
  TForm3 = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbgrdh1: TDBGridEh;
    cbbname: TDBComboBoxEh;
    cbbctoim: TDBComboBoxEh;
    cbbprod: TDBComboBoxEh;
    dbgrdh2: TDBGridEh;
    cbbmesto: TDBComboBoxEh;
    cbbmarca: TDBComboBoxEh;
    cbbgod: TDBComboBoxEh;
    con1: TADOConnection;
    machines_qry1: TADOQuery;
    repairs_qry2: TADOQuery;
    machines_ds1: TDataSource;
    repairs_ds2: TDataSource;
    btn1: TButton;
    cbbid_vid: TDBComboBoxEh;
    cbbid_st: TDBComboBoxEh;
    btn2: TButton;
    Helpqry1: TADOQuery;
    Helpqry2: TADOQuery;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    btn3: TButton;
    btn4: TButton;
    prntdbgrdh1: TPrintDBGridEh;
    prntdbgrdh2: TPrintDBGridEh;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
var
  id_vid: string;
begin
     id_vid:= QuotedStr(unit3.Form3.cbbid_vid.Text);
      with Helpqry1 do
     begin
     Close;
     SQL.Clear;
     SQL.Add('exec deleteRepairs '+id_vid);
     ExecSQL;
      repairs_qry2.Active:=False;
      repairs_qry2.Active:=True;
      end;
end;

procedure TForm3.btn2Click(Sender: TObject);
var
  id_st: string;
begin
     id_st:= QuotedStr(unit3.Form3.cbbid_st.Text);
      with Helpqry2 do
     begin
     Close;
     SQL.Clear;
     SQL.Add('exec deleteMachines '+id_st);
     ExecSQL;
      machines_qry1.Active:=False;
      machines_qry1.Active:=True;
      end;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
    prntdbgrdh1.SetSubstitutes(['%[Today]', DateToStr(Now)]);
    prntdbgrdh1.Preview;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
    prntdbgrdh2.SetSubstitutes(['%[Today]', DateToStr(Now)]);
    prntdbgrdh2.Preview;
end;

end.
