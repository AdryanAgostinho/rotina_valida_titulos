object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    515
    441)
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 44
    Height = 15
    Caption = 'Recnum'
  end
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 115
    Height = 15
    Caption = 'Dt vencimento Inicial:'
  end
  object Label3: TLabel
    Left = 168
    Top = 88
    Width = 109
    Height = 15
    Caption = 'Dt vencimento Final:'
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 200
    Width = 509
    Height = 238
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 388
    Top = 20
    Width = 121
    Height = 41
    Anchors = [akTop, akRight]
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 480
  end
  object Edit1: TEdit
    Left = 8
    Top = 109
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 168
    Top = 109
    Width = 121
    Height = 23
    TabOrder = 3
    Text = 'Edit1'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 29
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object Button2: TButton
    Left = 419
    Top = 144
    Width = 88
    Height = 50
    Anchors = [akTop, akRight]
    Caption = 'Marcar tudo'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 328
    Top = 144
    Width = 85
    Height = 50
    Caption = 'Processar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = '192.168.100.10'
    Port = 1521
    Database = '192.168.100.10:1521/wint'
    User = 'se'
    Password = 'wse01'
    Protocol = 'oracle'
    LibraryLocation = 
      'C:\Users\PC\Downloads\instantclient-basic-nt-21.13.0.0.0dbru\ins' +
      'tantclient_21_13\oci.dll'
    Left = 240
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    FetchRow = 10000
    Left = 312
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 352
    Top = 80
  end
end
