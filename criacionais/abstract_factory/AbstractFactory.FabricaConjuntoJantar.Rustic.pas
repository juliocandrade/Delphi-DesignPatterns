unit AbstractFactory.FabricaConjuntoJantar.Rustic;

interface

uses
  AbstractFactory.Interfaces;

type
  TFabricaConjuntoJantarRustic = class(TInterfacedObject, iFabricaConjuntoJantarEspecifica)
  public
    class function New : iFabricaConjuntoJantarEspecifica;
    function CadeiraJantar : iCadeiraJantar;
    function MesaJantar : iMesaJantar;

  end;

implementation

uses
  AbstractFactory.Cadeira.Jantar.Rustic,
  AbstractFactory.Mesa.Jantar.Rustic;

{ TFabricaConjuntoJantarRustic }

function TFabricaConjuntoJantarRustic.CadeiraJantar: iCadeiraJantar;
begin
  Result := TCadeiraJantarRustic.New;
end;

function TFabricaConjuntoJantarRustic.MesaJantar: iMesaJantar;
begin
  Result := TMesaJantarRustic.New;
end;

class function TFabricaConjuntoJantarRustic.New: iFabricaConjuntoJantarEspecifica;
begin
  Result := Self.Create;
end;

end.
