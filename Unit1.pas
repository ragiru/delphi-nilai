unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects;

type
  TForm1 = class(TForm)
    Line1: TLine;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    eAbsen: TEdit;
    eTugas: TEdit;
    eMid: TEdit;
    eUas: TEdit;
    eAkhir: TEdit;
    eGrade: TEdit;
    hitung: TButton;
    hapus: TButton;
    keluar: TButton;
    procedure hitungClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}



procedure TForm1.hitungClick(Sender: TObject);
var nA, nT, nM, nU, nHit : real;
    nG : string;
begin
//  tampung input ke variabel
    nA := StrToFloat (eAbsen.Text);
    nT := StrToFloat (eTugas.Text);
    nM := StrToFloat (eMid.Text);
    nU := StrToFloat (eUas.Text);

//  Hitung Nilai Akhir sesuai ketentuan persen
    nHit := ((nA/100*10) + (nT/100*25) +
             (nM/100*30) + (nU/100*35));


//  menentukan grade sesuai dengan nilai yg diperoleh

      if nHit >= 85 then begin nG := 'A'; end
      else if nHit >= 70 then begin nG := 'B'; end
      else if nHit >= 55 then begin nG := 'C'; end
      else if nHit >= 45 then begin nG := 'D'; end
      else nG :='E';

//    Cetak nilai pada nilai akhir dan grade
      eAkhir.Text := formatFloat ('0.00', nHit);
      eGrade.Text := (nG);

end;

procedure TForm1.hapusClick(Sender: TObject);
begin
eAbsen.Text := '';
eTugas.Text := '';
eMid.Text := '';
eUas.Text := '';
eAkhir.Text := '';
eGrade.Text := '';
end;

procedure TForm1.keluarClick(Sender: TObject);
begin
close;
end;

end.
