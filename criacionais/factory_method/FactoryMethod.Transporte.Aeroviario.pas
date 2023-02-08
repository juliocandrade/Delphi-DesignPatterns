unit FactoryMethod.Transporte.Aeroviario;

interface

uses
  FactoryMethod.Interfaces;

type
  TTransporteAeroviario = class(TInterfacedObject, iTransporte)
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

{ TTransporteAeroviario }

function TTransporteAeroviario.Destino(Value: string): iTransporte;
begin
  Result := Self;
  FDestino := Value;
end;

class function TTransporteAeroviario.New: iTransporte;
begin
  Result := Self.Create;
end;

function TTransporteAeroviario.Origem(Value: string): iTransporte;
begin
  Result := Self;
  FOrigem := Value;
end;

function TTransporteAeroviario.Transportar: string;
begin
  Result := Format('Realizado transporte "Aereoviário" de %s para %s', [FOrigem, FDestino]);
end;

end.
