object Form3: TForm3
  Left = 255
  Top = 150
  Width = 1122
  Height = 563
  Caption = #1059#1076#1072#1083#1080#1090#1100
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
    Width = 1106
    Height = 525
    ActivePage = ts2
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = #1042#1080#1076' '#1088#1077#1084#1086#1085#1090#1072
      object lbl1: TLabel
        Left = 64
        Top = 344
        Width = 104
        Height = 19
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 248
        Top = 344
        Width = 85
        Height = 19
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 408
        Top = 344
        Width = 153
        Height = 19
        Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
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
        Width = 1098
        Height = 289
        Align = alTop
        AutoFitColWidths = True
        DataSource = repairs_ds2
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_vid'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ctoim'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'prod'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object cbbname: TDBComboBoxEh
        Left = 56
        Top = 384
        Width = 137
        Height = 21
        DataField = 'name'
        DataSource = repairs_ds2
        DynProps = <>
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
      object cbbctoim: TDBComboBoxEh
        Left = 232
        Top = 384
        Width = 121
        Height = 21
        DataField = 'ctoim'
        DataSource = repairs_ds2
        DynProps = <>
        EditButtons = <>
        TabOrder = 2
        Visible = True
      end
      object cbbprod: TDBComboBoxEh
        Left = 408
        Top = 384
        Width = 121
        Height = 21
        DataField = 'prod'
        DataSource = repairs_ds2
        DynProps = <>
        EditButtons = <>
        TabOrder = 3
        Visible = True
      end
      object btn1: TButton
        Left = 616
        Top = 384
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 4
        OnClick = btn1Click
      end
      object cbbid_vid: TDBComboBoxEh
        Left = 56
        Top = 424
        Width = 121
        Height = 21
        DataField = 'id_vid'
        DataSource = repairs_ds2
        DynProps = <>
        EditButtons = <>
        TabOrder = 5
        Visible = False
      end
      object btn4: TButton
        Left = 616
        Top = 432
        Width = 75
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 6
        OnClick = btn4Click
      end
    end
    object ts2: TTabSheet
      Caption = #1057#1090#1072#1085#1082#1080
      ImageIndex = 1
      object lbl4: TLabel
        Left = 56
        Top = 344
        Width = 127
        Height = 19
        Caption = #1052#1077#1089#1090#1086#1087#1086#1083#1086#1078#1077#1085#1080#1077
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 272
        Top = 344
        Width = 45
        Height = 19
        Caption = #1052#1072#1088#1082#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 424
        Top = 344
        Width = 86
        Height = 19
        Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
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
        Width = 1098
        Height = 289
        Align = alTop
        AutoFitColWidths = True
        DataSource = machines_ds1
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_st'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'mesto'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'marca'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'god'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object cbbmesto: TDBComboBoxEh
        Left = 56
        Top = 384
        Width = 121
        Height = 21
        DataField = 'mesto'
        DataSource = machines_ds1
        DynProps = <>
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
      object cbbmarca: TDBComboBoxEh
        Left = 232
        Top = 384
        Width = 121
        Height = 21
        DataField = 'marca'
        DataSource = machines_ds1
        DynProps = <>
        EditButtons = <>
        TabOrder = 2
        Visible = True
      end
      object cbbgod: TDBComboBoxEh
        Left = 408
        Top = 384
        Width = 121
        Height = 21
        DataField = 'god'
        DataSource = machines_ds1
        DynProps = <>
        EditButtons = <>
        TabOrder = 3
        Visible = True
      end
      object cbbid_st: TDBComboBoxEh
        Left = 56
        Top = 432
        Width = 121
        Height = 21
        DataField = 'id_st'
        DataSource = machines_ds1
        DynProps = <>
        EditButtons = <>
        TabOrder = 4
        Visible = False
      end
      object btn2: TButton
        Left = 616
        Top = 384
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 5
        OnClick = btn2Click
      end
      object btn3: TButton
        Left = 616
        Top = 432
        Width = 75
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 6
        OnClick = btn3Click
      end
    end
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=machine;Data Source=USER\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 1044
    Top = 368
  end
  object machines_qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from machines')
    Left = 972
    Top = 416
  end
  object repairs_qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from repairs')
    Left = 1044
    Top = 416
  end
  object machines_ds1: TDataSource
    DataSet = machines_qry1
    Left = 972
    Top = 464
  end
  object repairs_ds2: TDataSource
    DataSet = repairs_qry2
    Left = 1044
    Top = 464
  end
  object Helpqry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from repairs')
    Left = 916
    Top = 416
  end
  object Helpqry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from machines')
    Left = 916
    Top = 472
  end
  object prntdbgrdh1: TPrintDBGridEh
    DBGridEh = dbgrdh1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 916
    Top = 360
  end
  object prntdbgrdh2: TPrintDBGridEh
    DBGridEh = dbgrdh2
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 980
    Top = 360
  end
end
