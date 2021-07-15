unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls, XPMan, DB, DBTables, ComCtrls;

type
  Tfpencarian = class(TForm)
    Database1: TDatabase;
    Table1: TTable;
    DataSource1: TDataSource;
    XPManifest1: TXPManifest;
    berdasarkan: TComboBox;
    data: TEdit;
    cari: TButton;
    DBGrid1: TDBGrid;
    hapus: TButton;
    MainMenu1: TMainMenu;
    M1: TMenuItem;
    K1: TMenuItem;
    T1: TMenuItem;
    datatanggal: TDateTimePicker;
    procedure T1Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure berdasarkanChange(Sender: TObject);
    procedure datatanggalKeyPress(Sender: TObject; var Key: Char);
    procedure dataKeyPress(Sender: TObject; var Key: Char);
    procedure cariExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpencarian: Tfpencarian;

implementation

uses Unit1;

{$R *.dfm}

procedure Tfpencarian.T1Click(Sender: TObject);
begin
ftiket.Show;
fpencarian.hide;
end;

procedure Tfpencarian.K1Click(Sender: TObject);
begin
if messagedlg('Apakah yakin ingin keluar?',mtconfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    application.terminate;
  end;
end;

procedure Tfpencarian.FormActivate(Sender: TObject);
begin
berdasarkan.Text:='';
data.text:='';
data.enabled:=false;
cari.enabled:=false;
berdasarkan.setfocus;
hapus.enabled:=false;
datatanggal.visible:=false;
end;

procedure Tfpencarian.FormShow(Sender: TObject);
begin
berdasarkan.Text:='';
data.text:='';
data.enabled:=false;
cari.enabled:=false;
berdasarkan.setfocus;
hapus.enabled:=false;
datatanggal.visible:=false;
end;

procedure Tfpencarian.FormHide(Sender: TObject);
begin
berdasarkan.Text:='';
data.text:='';
data.enabled:=false;
cari.enabled:=false;
hapus.enabled:=false;
datatanggal.visible:=false;
end;

procedure Tfpencarian.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
resize:=false;
end;


procedure Tfpencarian.berdasarkanChange(Sender: TObject);
begin
if berdasarkan.text='Tanggal' then
  begin
    data.visible:=false;
    datatanggal.visible:=true;
    datatanggal.SetFocus;
  end
else if berdasarkan.text='Nomor Tiket' then
  begin
    datatanggal.Visible:=false;
    data.visible:=true;
    data.enabled:=true;
    data.setfocus;
  end
else if berdasarkan.text='Nama Lengkap' then
  begin
    datatanggal.Visible:=false;
    data.visible:=true;
    data.enabled:=true;
    data.setfocus;
  end
else if berdasarkan.text='Kelas' then
  begin
    datatanggal.Visible:=false;
    data.visible:=true;
    data.enabled:=true;
    data.setfocus;
  end;
end;

procedure Tfpencarian.datatanggalKeyPress(Sender: TObject; var Key: Char);
begin
cari.enabled:=true;
cari.setfocus;
end;

procedure Tfpencarian.dataKeyPress(Sender: TObject; var Key: Char);
begin
if not(key=chr(13)) then exit;
if trim(data.text)='' then
  begin
    messagedlg('Data tidak boleh kosong!',mtWarning,[mbOK],0);
    data.text:='';
    data.SetFocus;
  end
else
  begin
    cari.Enabled:=true;
    cari.setfocus;
  end;
end;

procedure Tfpencarian.cariExit(Sender: TObject);
begin
cari.enabled:=false;
end;

end.
