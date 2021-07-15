object ftiket: Tftiket
  Left = 47
  Top = 117
  Width = 1286
  Height = 500
  Caption = 'Pembelian Tiket'
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
  object Label3: TLabel
    Left = 456
    Top = 16
    Width = 353
    Height = 33
    Caption = 'TIKET BUKA BERSAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'abeatbyKai'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 72
    Width = 505
    Height = 313
    Caption = 'Form Pembelian Tiket'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'abeatbyKai'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 72
      Width = 48
      Height = 11
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'abeatbyKai'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 168
      Width = 73
      Height = 11
      Caption = 'Kelas (Dulu)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'abeatbyKai'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 328
      Top = 72
      Width = 65
      Height = 11
      Caption = 'Biaya (Rp)'
    end
    object Label8: TLabel
      Left = 328
      Top = 120
      Width = 66
      Height = 11
      Caption = 'Bayar (Rp)'
    end
    object Label9: TLabel
      Left = 328
      Top = 168
      Width = 94
      Height = 11
      Caption = 'Kembalian (Rp)'
    end
    object Label10: TLabel
      Left = 24
      Top = 120
      Width = 95
      Height = 11
      Caption = 'Nama Lengkap'
    end
    object notiket: TLabeledEdit
      Left = 216
      Top = 40
      Width = 89
      Height = 23
      Hint = 'Tulis Nomor Tiket'
      EditLabel.Width = 75
      EditLabel.Height = 11
      EditLabel.Caption = 'Nomor Tiket'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'abeatbyKai'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = notiketKeyPress
    end
    object tanggal: TDateTimePicker
      Left = 24
      Top = 88
      Width = 161
      Height = 23
      Hint = 'Pilih Tanggal Pembelian'
      Date = 42531.672290821770000000
      Time = 42531.672290821770000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyPress = tanggalKeyPress
    end
    object kelas: TComboBox
      Left = 24
      Top = 184
      Width = 153
      Height = 22
      Hint = 'Pilih Kelas'
      Style = csOwnerDrawFixed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnChange = kelasChange
      Items.Strings = (
        'Tidak Diketahui'
        '9-1'
        '9-2'
        '9-3'
        '9-4'
        '9-5'
        '9-6')
    end
    object biaya: TEdit
      Left = 328
      Top = 88
      Width = 153
      Height = 19
      Color = cl3DLight
      TabOrder = 3
    end
    object bayar: TEdit
      Left = 328
      Top = 136
      Width = 153
      Height = 19
      MaxLength = 10
      TabOrder = 4
      OnKeyPress = bayarKeyPress
    end
    object kembalian: TEdit
      Left = 328
      Top = 184
      Width = 153
      Height = 19
      Color = cl3DLight
      TabOrder = 5
    end
    object nama: TEdit
      Left = 24
      Top = 136
      Width = 257
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 6
      OnKeyPress = namaKeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 544
    Top = 168
    Width = 697
    Height = 217
    Caption = 'Database'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'abeatbyKai'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 168
      Width = 656
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 544
    Top = 72
    Width = 481
    Height = 81
    Caption = 'Pencarian Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'abeatbyKai'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 24
      Top = 24
      Width = 106
      Height = 11
      Caption = 'Cari Berdasarkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'abeatbyKai'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 176
      Top = 24
      Width = 29
      Height = 11
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'abeatbyKai'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tanggal2: TDateTimePicker
      Left = 176
      Top = 40
      Width = 121
      Height = 23
      Hint = 'Pilih Tanggal Pembelian'
      Date = 42532.859670347220000000
      Time = 42532.859670347220000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyPress = tanggal2KeyPress
    end
    object berdasarkan: TComboBox
      Left = 24
      Top = 40
      Width = 145
      Height = 23
      Hint = 'Pilih Pencarian Berdasarkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = berdasarkanChange
      OnKeyPress = berdasarkanKeyPress
      Items.Strings = (
        'Nomor Tiket'
        'Tanggal'
        'Nama Lengkap'
        'Kelas')
    end
    object cari2: TButton
      Left = 310
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Cari'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'abeatbyKai'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = cari2Click
      OnExit = cari2Exit
    end
    object hapus: TButton
      Left = 392
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Hapus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'abeatbyKai'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = hapusClick
    end
    object data: TEdit
      Left = 176
      Top = 40
      Width = 121
      Height = 23
      Hint = 'Tulis Data yang ingin dicari'
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnChange = dataChange
      OnClick = dataClick
      OnKeyPress = dataKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 568
    Top = 200
    Width = 657
    Height = 129
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Book Antiqua'
    Font.Style = [fsItalic]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Book Antiqua'
    TitleFont.Style = [fsBold]
  end
  object bersihkan: TButton
    Left = 352
    Top = 304
    Width = 105
    Height = 33
    Caption = 'Bersihkan Form'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'abeatbyKai'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = bersihkanClick
  end
  object edit: TButton
    Left = 216
    Top = 304
    Width = 105
    Height = 33
    Caption = 'Simpan Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'abeatbyKai'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = editClick
    OnExit = editExit
  end
  object baru: TButton
    Left = 80
    Top = 304
    Width = 105
    Height = 33
    Caption = 'Simpan Baru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'abeatbyKai'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = baruClick
    OnExit = baruExit
  end
  object GroupBox4: TGroupBox
    Left = 1048
    Top = 72
    Width = 193
    Height = 81
    Caption = 'Jumlah Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'abeatbyKai'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Label11: TLabel
      Left = 10
      Top = 24
      Width = 26
      Height = 53
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'abeatbyKai'
      Font.Style = []
      ParentFont = False
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 64
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'bukber'
    TableName = 'bukber'
    Left = 32
  end
  object XPManifest1: TXPManifest
    Left = 96
  end
  object MainMenu1: TMainMenu
    Left = 128
    object K1: TMenuItem
      Caption = 'Keluar'
      OnClick = K1Click
    end
  end
  object Database1: TDatabase
    AliasName = 'bukbermtsn'
    Connected = True
    DatabaseName = 'bukber'
    LoginPrompt = False
    SessionName = 'Default'
  end
end
