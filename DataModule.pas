unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    MyConnection: TFDConnection;
    qry_login: TFDQuery;
    ds_qry_login: TDataSource;
    qry_loginid: TFDAutoIncField;
    qry_loginnom: TWideStringField;
    qry_loginPassWord: TWideStringField;
    qry_logindroit: TWideStringField;
    tbl_Detaille_Impression: TFDTable;
    ds_tbl_Detaille_Impression: TDataSource;
    tbl_Detaille_Impressionid: TFDAutoIncField;
    tbl_Detaille_Impressionnom_fichier: TWideStringField;
    tbl_Detaille_Impressionnbr_impression: TIntegerField;
    tbl_Detaille_Impressionnom_utilisateur: TWideStringField;
    tbl_Detaille_Impressiondate_impression: TSQLTimeStampField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure MyConnectionAfterConnect(Sender: TObject);
    procedure MyConnectionBeforeDisconnect(Sender: TObject);
    procedure tbl_Detaille_ImpressionAfterScroll(DataSet: TDataSet);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit1, Unit2, Unit3;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  MyConnection.Connected := true;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  MyConnection.Connected := false ;
end;

procedure TDM.MyConnectionAfterConnect(Sender: TObject);
begin
  qry_login.Active:= true;
  tbl_Detaille_Impression.Active:= true;
end;



procedure TDM.MyConnectionBeforeDisconnect(Sender: TObject);
begin
 qry_login.Close ;
 tbl_Detaille_Impression.Close ;
end;

procedure TDM.tbl_Detaille_ImpressionAfterScroll(DataSet: TDataSet);
var nbr : string;
begin
  str(tbl_Detaille_Impression.RecordCount,nbr);
  Form1.MaskEdit1.EditText := nbr ;
end;

end.
