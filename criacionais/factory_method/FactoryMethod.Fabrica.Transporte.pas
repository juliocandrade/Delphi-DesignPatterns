unit FactoryMethod.Fabrica.Transporte;

interface

uses
  FactoryMethod.Interfaces;

type
  TFabricaTransporte = class(TInterfacedObject, iFabricaTransportes)
  private
  public
    class function New : iFabricaTransportes;
    function CriarTransporte(value: string) : iTransporte;
  end;
implementation

uses
  System.SysUtils,
  FactoryMethod.Transporte.Aeroviario,
  FactoryMethod.Transporte.Aquaviario,
  FactoryMethod.Transporte.Rodoviario;

{ TFabricaTransporte }

function TFabricaTransporte.CriarTransporte(Value: string): iTransporte;
begin
  if Value = 'Aeroviário' then
    Result := TTransporteAeroviario.New
  else if Value = 'Aquaviário' then
    Result := TTransporteAquaviario.New
  else if Value = 'Rodoviário' then
    Result := TTRansporteRodoviario.New
  else
    raise Exception.Create('Transporte Inválido');

end;

class function TFabricaTransporte.New: iFabricaTransportes;
begin
  Result := Self.Create;
end;

end.
