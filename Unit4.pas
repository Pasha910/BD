unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  StdCtrls, Mask, DBCtrlsEh, DB, ADODB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, ComCtrls;

type
  TForm4 = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbgrdh1: TDBGridEh;
    ds1: TDataSource;
    ds2: TDataSource;
    ds3: TDataSource;
    ds4: TDataSource;
    ds5: TDataSource;
    con1: TADOConnection;
    qry1: TADOQuery;
    qry2: TADOQuery;
    qry3: TADOQuery;
    qry4: TADOQuery;
    qry5: TADOQuery;
    edt1: TDBEditEh;
    lbl1: TLabel;
    edt2: TDBEditEh;
    edt3: TDBEditEh;
    btn1: TButton;
    lbl2: TLabel;
    lbl3: TLabel;
    dbgrdh2: TDBGridEh;
    btn2: TButton;
    lbl4: TLabel;
    ts3: TTabSheet;
    dbgrdh3: TDBGridEh;
    rb1: TRadioButton;
    rb2: TRadioButton;
    btn4: TButton;
    lbl5: TLabel;
    btn3: TButton;
    lbl6: TLabel;
    procedure edt1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.edt1Change(Sender: TObject);
var help1, help2: string;
begin
  help1:='%'+Unit4.Form4.edt1.Text+'%';
  help2:=QuotedStr(help1);
  with qry1 do
  begin
  Close;
  SQL.Clear;
  SQL.Add('select *');
  SQL.Add('from repairs');
  SQL.Add('where name like '+help2);
  Open;
  end;
end;


procedure TForm4.btn1Click(Sender: TObject);
var min_ctoim, max_ctoim: string;
begin
  min_ctoim:=QuotedStr(unit4.Form4.edt2.Text);
  max_ctoim:=QuotedStr(unit4.Form4.edt3.Text);
  with qry1 do
  begin
  Close;
  SQL.Clear;
  SQL.Add('select m.id_st,  m.mesto, m.marca, m.god, re.name, re.ctoim, re.prod');
  SQL.Add('from machines m join repair r on m.id_st=r.st_id  join repairs re on r.vid_id=re.id_vid');
  SQL.Add('where m.id_st = r.st_id and re.ctoim between '+min_ctoim+' and '+max_ctoim);
  Open;
  end;

end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  with qry4 do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT s.surname, s.name, s.patronymic, p.dol, p.oklad, p.oklad*0.13 as NDS');
  SQL.Add('FROM staff s, post p');
  SQL.Add('where s.dol_id= p.id_dol');
  Open;
  end;
end;

procedure TForm4.rb1Click(Sender: TObject);
begin
  with qry3 do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT *');
  SQL.Add('FROM machines');
  SQL.Add('ORDER BY marca DESC');
  Open;
  end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
  with qry4 do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT p.dol, COUNT(*) AS count');
  SQL.Add('FROM staff s, post p');
  SQL.Add('WHERE  s.dol_id = p.id_dol');
  SQL.Add('GROUP BY p.dol');
  Open;
  end;
end;

procedure TForm4.rb2Click(Sender: TObject);
begin
  with qry3 do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT *');
  SQL.Add('FROM machines');
  SQL.Add('ORDER BY marca ASC');
  Open;
  end;
end;



procedure TForm4.btn3Click(Sender: TObject);
begin
  with qry3 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select m.id_st, m.marca, m.god, r.d_nac, re.name, re.ctoim, re.prod');
    SQL.Add('from machines m join repair r on m.id_st=r.st_id  join repairs re on r.vid_id=re.id_vid');
    Open;
    end;
end;

end.

