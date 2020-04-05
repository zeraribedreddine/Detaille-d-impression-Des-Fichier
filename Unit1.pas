unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DateUtils, Vcl.ExtCtrls, frxClass,
  Vcl.Mask;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Labe_nom_utilissateur: TLabel;
    Pane_all: TPanel;
    btn_imp_eleve: TButton;
    btn_imp_clien: TButton;
    Labe_time: TLabel;
    Label5: TLabel;
    Labe_date: TLabel;
    Label8: TLabel;
    Labe_nbr_clic_elev: TLabel;
    Label7: TLabel;
    Labe_nbr_clic_clien: TLabel;
    Timer1: TTimer;
    Button1: TButton;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_imp_eleveClick(Sender: TObject);
    procedure btn_imp_clienClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DataModule, Unit2, Unit3;

procedure TForm1.btn_imp_clienClick(Sender: TObject);
begin
     btn_imp_clien.Tag :=  btn_imp_clien.Tag + 1;
     Labe_nbr_clic_clien.Caption := IntToStr(btn_imp_clien.Tag);
     //--------------------
     while DM.tbl_Detaille_Impression.Eof do
    Begin
      DM.tbl_Detaille_Impression.Insert; //préparation de la insertion
      DM.tbl_Detaille_Impression.FieldByName('nom_fichier').AsString :=  btn_imp_clien.Caption ;
      DM.tbl_Detaille_Impression.FieldByName('nom_utilisateur').AsString :=  Labe_nom_utilissateur.Caption ;
      DM.tbl_Detaille_Impression.FieldByName('nbr_impression').AsInteger :=  1;
      DM.tbl_Detaille_Impression.FieldByName('date_impression').AsDateTime := (Now) ;
      DM.tbl_Detaille_Impression.Post;  //préparation de save
    End;
     DM.tbl_Detaille_Impression.Next;
end;

procedure TForm1.btn_imp_eleveClick(Sender: TObject);
begin
     btn_imp_eleve.Tag :=  btn_imp_eleve.Tag + 1;
     Labe_nbr_clic_elev.Caption := IntToStr(btn_imp_eleve.Tag);
     //--------------------
     while DM.tbl_Detaille_Impression.Eof do
    Begin
      DM.tbl_Detaille_Impression.Insert; //préparation de la insertion
      DM.tbl_Detaille_Impression.FieldByName('nom_fichier').AsString :=  btn_imp_eleve.Caption ;
      DM.tbl_Detaille_Impression.FieldByName('nom_utilisateur').AsString :=  Labe_nom_utilissateur.Caption ;
      DM.tbl_Detaille_Impression.FieldByName('nbr_impression').AsInteger :=  1;
      DM.tbl_Detaille_Impression.FieldByName('date_impression').AsDateTime := (Now) ;
      DM.tbl_Detaille_Impression.Post;  //préparation de save
    End;

     DM.tbl_Detaille_Impression.Next;

end;

procedure TForm1.Button1Click(Sender: TObject);
var nbr_client, nbr_eleve : TfrxMemoView ;
begin
     nbr_client := TfrxMemoView(DM.frxReport1.FindObject('memo5'));
     nbr_client.Memo.Text := Labe_nbr_clic_clien.Caption ;
    //--------
     nbr_eleve := TfrxMemoView(DM.frxReport1.FindObject('memo6'));
     nbr_eleve.Memo.Text := Labe_nbr_clic_elev.Caption ;
     //--------

    DM.frxReport1.showreport;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 Timer1.Enabled := true ;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Labe_time.Caption := FormatDateTime(' hh : mm : ss ' ,Now) ;
   Labe_date.Caption := FormatDateTime ('dd - mm - yyyy',Now) ;
end;

end.
