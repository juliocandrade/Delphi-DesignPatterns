unit FactoryMethod.Transporte.Rodoviario;

interface

uses
  FactoryMethod.Interfaces;

type
  TTransporteRodoviario = class(TInterfacedObject, iTransporte)
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

{ TTransporteRodoviario }

function TTransporteRodoviario.Destino(Value: string): iTransporte;
begin
  Result := Self;
  FDestino := Value;
end;

class function TTransporteRodoviario.New: iTransporte;
begin
  Result := Self.Create;
end;

function TTransporteRodoviario.Origem(Value: string): iTransporte;
begin
  Result := Self;
  FOrigem := Value;
end;

function TTransporteRodoviario.Transportar: string;
begin
  Result := Format('Realizado transporte "Rodoviário" de %s para %s', [FOrigem, FDestino]);
end;

end.
