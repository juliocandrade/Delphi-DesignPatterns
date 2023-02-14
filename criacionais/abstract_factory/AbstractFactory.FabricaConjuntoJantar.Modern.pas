unit AbstractFactory.FabricaConjuntoJantar.Modern;

interface

uses
  AbstractFactory.Interfaces;

type
  TFabricaConjuntoJantarModern = class(TInterfacedObject, iFabricaConjuntoJantarEspecifica)
  public
    class function New : iFabricaConjuntoJantarEspecifica;
    function CadeiraJantar : iCadeiraJantar;
    function MesaJantar : iMesaJantar;

  end;
implementation

uses
  AbstractFactory.Cadeira.Jantar.Modern, AbstractFactory.Mesa.Jantar.Modern;

{ TFabricaConjuntoJantarModern }

function TFabricaConjuntoJantarModern.CadeiraJantar: iCadeiraJantar;
begin
  Result := TCadeiraJantarModern.New;
end;

function TFabricaConjuntoJantarModern.MesaJantar: iMesaJantar;
begin
  Result := TMesaJantarModern.New;
end;

class function TFabricaConjuntoJantarModern.New: iFabricaConjuntoJantarEspecifica;
begin
  Result := Self.Create;
end;

end.
