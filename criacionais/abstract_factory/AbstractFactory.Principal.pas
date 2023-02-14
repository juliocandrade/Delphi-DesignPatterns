unit AbstractFactory.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Panel6: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    cbEstilo: TComboBox;
    Panel7: TPanel;
    Panel4: TPanel;
    btnFabricar: TButton;
    Memo1: TMemo;
    procedure btnFabricarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  AbstractFactory.Interfaces, AbstractFactory.FabricaConjuntoJantar;

{$R *.dfm}

procedure TForm1.btnFabricarClick(Sender: TObject);
var
  LCadeiraJantar : iCadeiraJantar;
  LMesaJantar : iMesaJantar;
begin
  if cbEstilo.ItemIndex = -1  then
  begin
    ShowMessage('Selecione um estilo');
    exit;
  end;
  LCadeiraJantar := TFabricaConjuntoJantar.New.Tipo(TTipoConjuntoJantar(cbEstilo.ItemIndex)).CadeiraJantar;
  LMesaJantar := TFabricaConjuntoJantar.New.Tipo(TTipoConjuntoJantar(cbEstilo.ItemIndex)).MesaJantar;
  memo1.Lines.Add('Conjunto de Jantar ' + cbEstilo.Text);
  memo1.Lines.Add('  Mesa de jantar com ' + LMesaJantar.Lugares);
  memo1.Lines.Add('  Mesa de jantar com ' + LMesaJantar.Tampo);
  memo1.Lines.Add('  Mesa de jantar com ' + LMesaJantar.Pes);
  memo1.Lines.Add('  Cadeira de jantar com ' + LCadeiraJantar.Assento);
  memo1.Lines.Add('  Cadeira de jantar com ' + LCadeiraJantar.Pes);
  memo1.Lines.Add('');
end;

end.
