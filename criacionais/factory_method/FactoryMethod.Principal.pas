unit FactoryMethod.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel6: TPanel;
    Memo1: TMemo;
    edtOrigem: TEdit;
    edtDestino: TEdit;
    Panel7: TPanel;
    btnTransportar: TButton;
    cbTransporte: TComboBox;
    procedure btnTransportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  FactoryMethod.Fabrica.Transporte;

{$R *.dfm}

procedure TForm1.btnTransportarClick(Sender: TObject);
var
  LTextoTransporte : string;
begin
  if cbTransporte.ItemIndex = -1  then
  begin
    ShowMessage('Selecione um meio de transporte');
    exit;
  end;

  LTextoTransporte := TFabricaTransporte.New
    .CriarTransporte(cbTransporte.Items[cbTransporte.ItemIndex])
      .Origem(edtOrigem.Text)
      .Destino(edtDestino.Text)
      .Transportar;

  Memo1.Lines.Add(LTextoTransporte);
end;

end.
