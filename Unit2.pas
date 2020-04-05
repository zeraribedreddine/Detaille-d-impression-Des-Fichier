unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DataModule, Unit1, Unit3;

procedure TForm2.Button1Click(Sender: TObject);
begin
 Application.Terminate ;
end;

procedure TForm2.Button2Click(Sender: TObject);
var droit : string;
begin
   begin
     DM.qry_login.SQL.Clear;
     DM.qry_login.SQL.Add('select*from Tabl_Login where nom='''+Edit1.text+'''and PassWord='''+Edit2.Text+''' ' ) ;
     DM.qry_login.open;
  {
  //////////// code de permmition d utilissateur ////////////////
   begin
      if not DM.DataSource1.DataSet.IsEmpty then
        begin
         droit := dm.DataSource1.DataSet.FieldByName('droit').AsString;
         if AnsiPos ('0',droit) <> 0 then
          begin
            Form1.Button1.Enabled := false ;
            Form1.Button2.Enabled := false ;
          end;
        end;
   end;
   //////////////// code de permmition d utilissateur //////////////////
   }
   if  not DM.qry_login.Eof then
     begin
      Form2.hide ;
      Form1.Show ;
      Form1.Labe_nom_utilissateur.Caption := Edit1.Text;
     end
   else
          messagedlg(' «·—ﬁ„ «·”—Ì Œ«ÿÏ¡ ',mterror,[mbok],0);
          Edit1.Clear ;
          Edit2.Clear ;
  end;
end;

procedure TForm2.Label3Click(Sender: TObject);
begin
 Form3.Show ;
 Form2.Hide ;
end;

end.
