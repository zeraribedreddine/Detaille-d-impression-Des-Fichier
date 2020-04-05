unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses DataModule, Unit1, Unit2;

procedure TForm3.Button1Click(Sender: TObject);
begin
 Form2.Show;
 Form3.Hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
var h : integer ;
begin
  begin
     h := 0;
     if (edit2.text='') or (edit3.Text='') or (edit1.Text='') or (edit4.text='' )
       then showmessage ('„‰ ›Ÿ·ﬂ «œŒ· «·»Ì«‰«  Â‰«ﬂ Œ«‰«  ›«—€… ')
      else
  BEGIN
     DM.qry_login.first;
      while (not DM.qry_login.Eof) do
        begin
          if DM.qry_login.Fieldbyname('nom').Value = Edit1.text then
        begin
          if DM.qry_login.Fieldbyname('PassWord').value = edit2.Text then
         begin
           if edit3.Text = edit4.text then
         begin
           DM.qry_login.edit;
           DM.qry_login.Fieldbyname('PassWord').value := edit3.Text;
           DM.qry_login.Post;
           h := 1;
           break;
         end
         else
         begin
           h := 2   ;
         end
         end
         else

         h:=0;
         break
      end
      else
       DM.qry_login.Next;
     END;
      if h = 2 then  showmessage ('ﬂ·„… «·„—Ê— ·Ì”  „ÿ«»ﬁ….. ')      ;
      if h = 0 then showmessage('«”„ «·„” Œœ„ √Ê ﬂ·„… «·„—Ê— Œ«ÿ∆…..');
      if h = 1 then showmessage('. „  €ÌÌ— ﬂ·„… «·„—Ê— »‰Ã«Õ - „»—Êﬂ');
    END;
    Edit2.Text:='';
    Edit3.text:='' ;
    Edit4.text:='' ;
  end;


end;

end.
