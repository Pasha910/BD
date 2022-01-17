object Form4: TForm4
  Left = 351
  Top = 175
  Width = 1088
  Height = 563
  Caption = #1047#1072#1087#1088#1086#1089#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 1072
    Height = 525
    ActivePage = ts3
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = #1056#1077#1084#1086#1085#1090
      object lbl1: TLabel
        Left = 64
        Top = 328
        Width = 128
        Height = 38
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077#13#10#1088#1077#1084#1086#1085#1090#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 288
        Top = 320
        Width = 184
        Height = 19
        Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 288
        Top = 384
        Width = 188
        Height = 19
        Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object dbgrdh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1064
        Height = 297
        Align = alTop
        AutoFitColWidths = True
        DataSource = ds1
        DynProps = <>
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object edt1: TDBEditEh
        Left = 64
        Top = 392
        Width = 121
        Height = 21
        DynProps = <>
        EditButtons = <>
        TabOrder = 1
        Visible = True
        OnChange = edt1Change
      end
      object edt2: TDBEditEh
        Left = 304
        Top = 352
        Width = 121
        Height = 21
        DynProps = <>
        EditButtons = <>
        TabOrder = 2
        Visible = True
      end
      object edt3: TDBEditEh
        Left = 304
        Top = 424
        Width = 121
        Height = 21
        DynProps = <>
        EditButtons = <>
        TabOrder = 3
        Visible = True
      end
      object btn1: TButton
        Left = 304
        Top = 464
        Width = 75
        Height = 25
        Caption = #1055#1086#1080#1089#1082
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 4
        OnClick = btn1Click
      end
    end
    object ts2: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 1
      object lbl4: TLabel
        Left = 32
        Top = 360
        Width = 87
        Height = 38
        Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100#13#10' '#1053#1044#1057
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 192
        Top = 352
        Width = 132
        Height = 38
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1083#1102#1076#1077#1081#13#10' '#1076#1072#1085#1085#1086#1081' '#1087#1088#1086#1092#1077#1089#1080#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object dbgrdh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1064
        Height = 297
        Align = alTop
        AutoFitColWidths = True
        DataSource = ds4
        DynProps = <>
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object btn2: TButton
        Left = 32
        Top = 416
        Width = 97
        Height = 25
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        OnClick = btn2Click
      end
      object btn4: TButton
        Left = 208
        Top = 416
        Width = 97
        Height = 25
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        OnClick = btn4Click
      end
    end
    object ts3: TTabSheet
      Caption = #1057#1090#1072#1085#1082#1080
      ImageIndex = 2
      object lbl6: TLabel
        Left = 336
        Top = 336
        Width = 203
        Height = 32
        Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1072#1085#1082#1086#1074' '#1089' '#1076#1072#1090#1086#1081' '#1085#1072#1095#1072#1083#1072' '#13#10' '#1080' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100#1102' '#1088#1077#1084#1086#1085#1090#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object dbgrdh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1064
        Height = 297
        Align = alTop
        AutoFitColWidths = True
        DataSource = ds3
        DynProps = <>
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object rb1: TRadioButton
        Left = 24
        Top = 384
        Width = 193
        Height = 17
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1091#1073#1099#1074#1072#1085#1080#1102
        TabOrder = 1
        OnClick = rb1Click
      end
      object rb2: TRadioButton
        Left = 24
        Top = 352
        Width = 225
        Height = 17
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1074#1086#1079#1088#1072#1089#1090#1072#1085#1080#1102
        TabOrder = 2
        OnClick = rb2Click
      end
      object btn3: TButton
        Left = 384
        Top = 400
        Width = 75
        Height = 25
        Caption = #1042#1099#1073#1088#1072#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        OnClick = btn3Click
      end
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 700
    Top = 272
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 732
    Top = 272
  end
  object ds3: TDataSource
    DataSet = qry3
    Left = 764
    Top = 272
  end
  object ds4: TDataSource
    DataSet = qry4
    Left = 796
    Top = 272
  end
  object ds5: TDataSource
    DataSet = qry5
    Left = 828
    Top = 272
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=machine;Data Source=USER\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 652
    Top = 272
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from repairs')
    Left = 868
    Top = 272
  end
  object qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from repair')
    Left = 900
    Top = 272
  end
  object qry3: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from machines')
    Left = 932
    Top = 272
  end
  object qry4: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from staff')
    Left = 964
    Top = 272
  end
  object qry5: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from post')
    Left = 996
    Top = 272
  end
end
