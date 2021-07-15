unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, XPMan, Menus, Grids,
  DBGrids, DBCtrls;

type
  Tftiket = class(TForm)
    Label3: TLabel;
    DataSource1: TDataSource;
    Table1: TTable;
    XPManifest1: TXPManifest;
    GroupBox1: TGroupBox;
    berdasarkan: TComboBox;
    data: TEdit;
    cari2: TButton;
    hapus: TButton;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    notiket: TLabeledEdit;
    tanggal: TDateTimePicker;
    kelas: TComboBox;
    GroupBox3: TGroupBox;
    bersihkan: TButton;
    edit: TButton;
    baru: TButton;
    biaya: TEdit;
    Label7: TLabel;
    bayar: TEdit;
    Label8: TLabel;
    kembalian: TEdit;
    Label9: TLabel;
    nama: TEdit;
    Label10: TLabel;
    MainMenu1: TMainMenu;
    K1: TMenuItem;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    tanggal2: TDateTimePicker;
    DBNavigator1: TDBNavigator;
    Database1: TDatabase;
    procedure notiketKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure namaKeyPress(Sender: TObject; var Key: Char);
    procedure tanggalKeyPress(Sender: TObject; var Key: Char);
    procedure kelasChange(Sender: TObject);
    procedure bayarKeyPress(Sender: TObject; var Key: Char);
    procedure baruClick(Sender: TObject);
    procedure editClick(Sender: TObject);
    procedure bersihkanClick(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure cariClick(Sender: TObject);
    procedure kembaliClick(Sender: TObject);
    procedure berdasarkanChange(Sender: TObject);
    procedure dataKeyPress(Sender: TObject; var Key: Char);
    procedure datatanggalKeyPress(Sender: TObject; var Key: Char);
    procedure baruExit(Sender: TObject);
    procedure editExit(Sender: TObject);
    procedure refreshClick(Sender: TObject);
    procedure cari2Click(Sender: TObject);
    procedure dataClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure dataChange(Sender: TObject);
    procedure cari2Exit(Sender: TObject);
    procedure berdasarkanKeyPress(Sender: TObject; var Key: Char);
    procedure tanggal2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftiket: Tftiket;

implementation

uses Unit2;

{$R *.dfm}

procedure Tftiket.notiketKeyPress(Sender: TObject; var Key: Char);
var ada :boolean;
begin
if not (key in['0'..'9', #8, #13]) then
  begin
    Messagedlg('Hanya bisa mengetikkan angka.',mtInformation,[mbOK],0);
    key:=#0;
  end;
if not (key=chr(13)) then exit;
if trim(notiket.text)='' then
  begin
    messagedlg('Data tidak boleh kosong!',mtWarning,[mbOK],0);
    notiket.setfocus;
  end
else
  begin
table1.IndexFieldNames:='Nomor Tiket';
ada:=table1.FindKey([notiket.text]);
if ada then
  begin
    if messagedlg('Data sudah ada, ingin diedit?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        notiket.text:=table1['Nomor Tiket'];
        tanggal.Date:=table1['Tanggal'];
        nama.text:=table1['Nama Lengkap'];
        kelas.text:=table1['Kelas'];
        biaya.text:=table1['Biaya'];
        bayar.text:=table1['Bayar'];
        kembalian.text:=table1['Kembalian'];
        tanggal.enabled:=true;
        tanggal.setfocus;
      end;
  end
else
  begin
    messagedlg('Data baru.',mtInformation,[mbOK],0);
    nama.text:='';
    kelas.text:='';
    biaya.text:='';
    bayar.text:='';
    kembalian.text:='';
    bayar.enabled:=false;
    kelas.enabled:=false;
    nama.enabled:=false;
    tanggal.enabled:=true;
    tanggal.setfocus;
  end;
end;
end;

procedure Tftiket.FormShow(Sender: TObject);
begin
tanggal.enabled:=false;
nama.text:='';
nama.enabled:=false;
kelas.Text:='';
kelas.Enabled:=false;
biaya.text:='';
biaya.enabled:=false;
bayar.text:='';
bayar.enabled:=false;
kembalian.text:='';
kembalian.enabled:=false;
baru.enabled:=false;
edit.enabled:=false;
notiket.setfocus;
berdasarkan.text:='';
data.text:='';
data.Enabled:=false;
cari2.enabled:=false;
hapus.Enabled:=false;
label11.caption:=inttostr(table1.RecordCount);
end;

procedure Tftiket.FormHide(Sender: TObject);
begin
tanggal.enabled:=false;
nama.text:='';
nama.enabled:=false;
kelas.Text:='';
kelas.Enabled:=false;
biaya.text:='';
biaya.enabled:=false;
bayar.text:='';
bayar.enabled:=false;
kembalian.text:='';
kembalian.enabled:=false;
baru.enabled:=false;
edit.enabled:=false;
berdasarkan.text:='';
data.text:='';
data.Enabled:=false;
cari2.enabled:=false;
hapus.Enabled:=false;
end;

procedure Tftiket.FormActivate(Sender: TObject);
begin
tanggal.enabled:=false;
nama.text:='';
nama.enabled:=false;
kelas.Text:='';
kelas.Enabled:=false;
biaya.text:='';
biaya.enabled:=false;
bayar.text:='';
bayar.enabled:=false;
kembalian.text:='';
kembalian.enabled:=false;
baru.enabled:=false;
edit.enabled:=false;
notiket.setfocus;
berdasarkan.text:='';
data.text:='';
data.Enabled:=false;
cari2.enabled:=false;
hapus.Enabled:=false;
label11.caption:=inttostr(table1.RecordCount);
tanggal2.visible:=false;
end;



procedure Tftiket.namaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if trim(nama.text)='' then
  begin
    messagedlg('Data tidak boleh kosong!',mtWarning,[mbOK],0);
    nama.setfocus;
  end
else
  begin
    kelas.enabled:=true;
    kelas.setfocus;
  end;
end;

procedure Tftiket.tanggalKeyPress(Sender: TObject; var Key: Char);
begin
if not(key=chr(13)) then exit;
nama.Enabled:=true;
nama.SetFocus;
end;

procedure Tftiket.kelasChange(Sender: TObject);
begin
biaya.Text:='35000';
bayar.Enabled:=true;
bayar.setfocus;
end;

procedure Tftiket.bayarKeyPress(Sender: TObject; var Key: Char);
var ada : boolean;
    a,b,bi,byr,kmb: real;
begin
if not(key in['0'..'9',#8,#13]) then
  begin
    Messagedlg('Hanya bisa mengetikkan angka.',mtInformation,[mbOK],0);
    key:=#0;
  end;
if not(key=chr(13)) then exit;
if trim(bayar.text)='' then
  begin
    messagedlg('Data tidak boleh kosong!',mtWarning,[mbOK],0);
    bayar.setfocus;
  end
else
  begin
  a:=strtoint(biaya.Text);
  b:=strtoint(bayar.text);
        if b<a then
          begin
            messagedlg('Uang tidak cukup.',mtWarning,[mbok],0);
            bayar.setfocus;
          end
        else if b>=a then
          begin
  bi:=strtofloat(biaya.Text);
  byr:=strtofloat(bayar.text);
  kmb:=byr-bi;
  kembalian.text:=floattostr(kmb);
  table1.IndexFieldNames:='Nomor Tiket';
  ada:=table1.FindKey([notiket.Text]);
  if ada then
    begin
      baru.enabled:=false;
      edit.enabled:=true;
      edit.setfocus;
    end
  else
    begin
      edit.enabled:=false;
      baru.Enabled:=true;
      baru.setfocus;
    end;
          end;
  end;
end;

procedure Tftiket.baruClick(Sender: TObject);
begin
if (notiket.text='') or (nama.text='') or (kelas.text='') or (bayar.text='') then
  begin
    messagedlg('Ada data yang belum terisi!',mtWarning,[mbOK],0);
  end
else
  begin
if messagedlg('Apakah data di atas sudah benar?',mtconfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    table1.append;
    table1['Nomor Tiket']:=notiket.Text;
    table1['Tanggal']:=datetostr(tanggal.date);
    table1['Nama Lengkap']:=nama.text;
    table1['Kelas']:=kelas.text;
    table1['Biaya']:=strtocurr(biaya.text);
    table1['Bayar']:=strtocurr(bayar.text);
    table1['Kembalian']:=strtocurr(kembalian.text);
    table1.post;
    notiket.text:='';
    nama.text:='';
    kelas.text:='';
    biaya.text:='';
    bayar.text:='';
    kembalian.text:='';
    bayar.enabled:=false;
    kelas.enabled:=false;
    nama.enabled:=false;
    tanggal.enabled:=false;
    notiket.SetFocus;
    baru.enabled:=false;
    messagedlg('Pembelian Tiket Berhasil.',mtInformation,[mbOK],0);
    label11.caption:=inttostr(table1.RecordCount);
  end;
  end;
end;

procedure Tftiket.editClick(Sender: TObject);
begin
if (notiket.text='') or (nama.text='') or (kelas.text='') or (bayar.text='') then
  begin
    messagedlg('Ada data yang belum terisi!',mtWarning,[mbOK],0);
  end
else
  begin
if messagedlg('Apakah data di atas sudah benar?',mtconfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    table1.edit;
    table1['Nomor Tiket']:=notiket.Text;
    table1['Tanggal']:=datetostr(tanggal.date);
    table1['Nama Lengkap']:=nama.text;
    table1['Kelas']:=kelas.text;
    table1['Biaya']:=strtocurr(biaya.text);
    table1['Bayar']:=strtocurr(bayar.text);
    table1['Kembalian']:=strtocurr(kembalian.text);
    table1.post;
    notiket.text:='';
    nama.text:='';
    kelas.text:='';
    biaya.text:='';
    bayar.text:='';
    kembalian.text:='';
    bayar.enabled:=false;
    kelas.enabled:=false;
    nama.enabled:=false;
    tanggal.enabled:=false;
    notiket.SetFocus;
    baru.enabled:=false;
    messagedlg('Data sudah diedit.',mtInformation,[mbOK],0);
    label11.caption:=inttostr(table1.RecordCount);
  end;
  end;
end;

procedure Tftiket.bersihkanClick(Sender: TObject);
begin
if messagedlg('Apakah yakin ingin membersihkan form?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    notiket.text:='';
    nama.text:='';
    kelas.text:='';
    biaya.text:='';
    bayar.text:='';
    kembalian.text:='';
    bayar.enabled:=false;
    kelas.enabled:=false;
    nama.enabled:=false;
    tanggal.enabled:=false;
    notiket.SetFocus;
    messagedlg('Form sudah dibersihkan.',mtInformation,[mbOK],0);
  end;
end;


procedure Tftiket.P1Click(Sender: TObject);
begin
fpencarian.show;
ftiket.Hide;
end;

procedure Tftiket.K1Click(Sender: TObject);
begin
if messagedlg('Apakah yakin ingin keluar?',mtconfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    application.terminate;
  end;
end;

procedure Tftiket.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
resize:=false;
end;

procedure Tftiket.cariClick(Sender: TObject);
begin
groupbox1.visible:=true;
berdasarkan.SetFocus;
end;

procedure Tftiket.kembaliClick(Sender: TObject);
begin
groupbox1.Visible:=false;
berdasarkan.text:='';
data.Text:='';
data.enabled:=false;
cari2.enabled:=false;
hapus.enabled:=false;
end;

procedure Tftiket.berdasarkanChange(Sender: TObject);
begin
if trim(berdasarkan.text)='' then
  begin
    messagedlg('Pilih data dengan cara tekan tombol panah di samping.', mtInformation, [mbOK],0);
    data.enabled:=false;
  end
else if berdasarkan.text='Tanggal' then
  begin
    tanggal2.Visible:=true;
    data.visible:=false;
    tanggal2.SetFocus;
  end
else
  begin
    data.text:='';
    data.visible:=true;
    data.enabled:=true;
    data.SetFocus;
  end;
end;

procedure Tftiket.dataKeyPress(Sender: TObject; var Key: Char);
begin
if not(key=chr(13)) then exit;
if trim(data.text)='' then
  begin
    messagedlg('Data tidak boleh kosong!',mtWarning,[mbOK],0);
    data.text:='';
    data.SetFocus;
  end
else if berdasarkan.text='Nama Lengkap' then
  begin
    cari2.Enabled:=false;
  end
else
  begin
    cari2.Enabled:=true;
    cari2.setfocus;
  end;

end;

procedure Tftiket.datatanggalKeyPress(Sender: TObject; var Key: Char);
begin
cari2.enabled:=true;
cari2.setfocus;
end;



procedure Tftiket.baruExit(Sender: TObject);
begin
baru.enabled:=false;
end;

procedure Tftiket.editExit(Sender: TObject);
begin
edit.enabled:=false;
end;

procedure Tftiket.refreshClick(Sender: TObject);
begin
label11.caption:=inttostr(table1.RecordCount);
end;



procedure Tftiket.cari2Click(Sender: TObject);
begin
    if berdasarkan.Text='Nomor Tiket' then
      begin
        if data.text='' then
        begin
          messagedlg('Data tidak boleh kosong!',mtWarning,[mbOK],0);
          data.setfocus;
        end
        else
        begin
      table1.IndexFieldNames:='Nomor Tiket';
      table1.findkey([data.text]);
      if not table1.Locate('Nomor Tiket', data.text,[]) then
        begin
          messagedlg('Data tidak ditemukan.',mtError,[mbOK],0);
          data.SetFocus;
          hapus.enabled:=false;
        end
      else
        begin
          messagedlg('Data ditemukan.',mtInformation,[mbOK],0);
          hapus.enabled:=true;
        end;
        end;
      end
    else if berdasarkan.Text='Tanggal' then
      begin
      table1.IndexFieldNames:='Tanggal';
      table1.findkey([datetostr(tanggal2.date)]);
      if not table1.Locate('Tanggal', datetostr(tanggal2.date),[]) then
        begin
          messagedlg('Data tidak ditemukan.',mtError,[mbOK],0);
          tanggal2.SetFocus;
          hapus.enabled:=false;
        end
      else
        begin
          messagedlg('Data ditemukan.',mtInformation,[mbOK],0);
          hapus.enabled:=true;
        end;
      end
    else if berdasarkan.Text='Kelas' then
      begin
      if data.text='' then
        begin
          messagedlg('Data tidak boleh kosong!',mtWarning,[mbOK],0);
          data.setfocus;
        end
      else
      begin
      table1.IndexFieldNames:='Kelas';
      table1.findkey([data.text]);
      if not table1.Locate('Kelas', data.text,[]) then
        begin
          messagedlg('Data tidak ditemukan.',mtError,[mbOK],0);
          data.SetFocus;
          hapus.enabled:=false;
        end
      else
        begin
          messagedlg('Data ditemukan.',mtInformation,[mbOK],0);
          hapus.enabled:=true;
        end;
      end;
    end;
end;



procedure Tftiket.dataClick(Sender: TObject);
begin
if berdasarkan.text='' then
  begin
    messagedlg('Pilih pencarian berdasarkan.',mtWarning,[mbOK],0);
    berdasarkan.setfocus;
    hapus.enabled:=false;
  end;
end;

procedure Tftiket.hapusClick(Sender: TObject);
begin
if table1.IsEmpty then
  begin
    messagedlg('Tidak ada data di database.',mtError,[mbOK],0);
    data.setfocus;
  end
else
  begin
if messagedlg('Hapus data?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    table1.delete;
    hapus.enabled:=false;
    label11.caption:=inttostr(table1.RecordCount);
  end;
  end;
end;


procedure Tftiket.dataChange(Sender: TObject);
begin
if berdasarkan.Text='Nama Lengkap' then
  begin
    with Table1 do
      begin
        table1.IndexFieldNames:='Nama Lengkap';
        table1.findnearest([data.text]);
        hapus.Enabled:=true;
      end;
  end;
end;

procedure Tftiket.cari2Exit(Sender: TObject);
begin
cari2.enabled:=false;
end;

procedure Tftiket.berdasarkanKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['A'..'Z', #8, #13]) then
  begin
    messagedlg('Pilih data dengan cara tekan tombol panah di samping.', mtInformation, [mbOK],0);
    key:=#0;
  end;
if not (key=chr(13)) then exit;
if data.text='' then
  begin
    messagedlg('Data tidak boleh kosong.',mtWarning,[mbOK],0);
    data.setfocus;
  end;
end;

procedure Tftiket.tanggal2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8,#13]) then
  begin
    messagedlg('Pilih Tanggal Pembelian dengan benar.',mtInformation,[mbOK],0);
    key:=#0;
  end;
if not (key=chr(13)) then exit;
cari2.enabled:=true;
cari2.setfocus;
end;

end.
