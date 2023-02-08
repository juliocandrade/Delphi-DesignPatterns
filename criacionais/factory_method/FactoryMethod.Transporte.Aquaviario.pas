unit FactoryMethod.Transporte.Aquaviario;

interface
uses
  FactoryMethod.Interfaces;

type
  TTransporteAquaviario = class(TInterfacedObject, iTransporte)
  private
    FDestino: String;
    FOrigem: String;
  public
    class function New : iTransporte;
    function Transportar: string;
    function Origem(Value: string): iTransporte;
    function Destino(Value : string): iTransporte;
  end;

implementation

uses
  System.SysUtils;

{ TTransporteAquaviario }

function TTransporteAquaviario.Destino(Value: string): iTransporte;
begin
  Result := Self;
  FDestino := Value;
end;

class function TTransporteAquaviario.New: iTransporte;
begin
  Result := Self.Create;
end;

function TTransporteAquaviario.Origem(Value: string): iTransporte;
begin
  Result := Self;
  FOrigem := Value;
end;

function TTransporteAquaviario.Transportar: string;
begin
  Result := Format('Realizado transporte "Aquaviário" de %s para %s', [FOrigem, FDestino]);
end;

end.
