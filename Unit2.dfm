object fpencarian: Tfpencarian
  Left = 442
  Top = 203
  Width = 934
  Height = 316
  Caption = 'Pencarian Data'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object berdasarkan: TComboBox
    Left = 160
    Top = 32
    Width = 145
    Height = 19
    Style = csOwnerDrawFixed
    ItemHeight = 13
    TabOrder = 0
    OnChange = berdasarkanChange
    Items.Strings = (
      'Nomor Tiket'
      'Tanggal'
      'Nama Lengkap'
      'Kelas')
  end
  object data: TEdit
    Left = 320
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = dataKeyPress
  end
  object cari: TButton
    Left = 448
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Cari'
    TabOrder = 2
    OnExit = cariExit
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 72
    Width = 889
    Height = 120
    DataSource = ftiket.DataSource1
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object hapus: TButton
    Left = 400
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
  end
  object datatanggal: TDateTimePicker
    Left = 320
    Top = 8
    Width = 121
    Height = 21
    Date = 42531.934957754630000000
    Time = 42531.934957754630000000
    TabOrder = 5
    OnKeyPress = datatanggalKeyPress
  end
  object Database1: TDatabase
    AliasName = 'bukbermtsn'
    Connected = True
    DatabaseName = 'caridata'
    LoginPrompt = False
    SessionName = 'Default'
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'caridata'
    TableName = 'bukber'
    Left = 32
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 64
  end
  object XPManifest1: TXPManifest
    Left = 96
  end
  object MainMenu1: TMainMenu
    Left = 128
    object M1: TMenuItem
      Caption = 'Menu'
      object T1: TMenuItem
        Caption = 'Pembelian Tiket'
        OnClick = T1Click
      end
    end
    object K1: TMenuItem
      Caption = 'Keluar'
      OnClick = K1Click
    end
  end
end
