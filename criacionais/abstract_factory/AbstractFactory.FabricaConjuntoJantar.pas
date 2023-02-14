unit AbstractFactory.FabricaConjuntoJantar;

interface

uses
  AbstractFactory.Interfaces;

  type
  TFabricaConjuntoJantar = class(TInterfacedObject, iFabricaConjuntoJantar)
  public
    class function New : iFabricaConjuntoJantar;
    function Tipo(Tipo : TTIpoConjuntoJantar) : iFabricaConjuntoJantarEspecifica;
  end;

implementation

uses
  System.SysUtils, 
  AbstractFactory.FabricaConjuntoJantar.Modern, 
  AbstractFactory.FabricaConjuntoJantar.Rustic;

{ TFabricaConjuntoJantar }

class function TFabricaConjuntoJantar.New: iFabricaConjuntoJantar;
begin
  Result := Self.Create;
end;

function TFabricaConjuntoJantar.Tipo(
  Tipo: TTIpoConjuntoJantar): iFabricaConjuntoJantarEspecifica;
begin
  case Tipo of
    Modern: Result := TFabricaConjuntoJantarModern.New;
    Rustic: Result := TFabricaConjuntoJantarRustic.New;
    else
      raise Exception.Create('Tipo de conjunto de jantar inválido');
  end;
end;

end.
