unit AbstractFactory.Mesa.Jantar.Rustic;

interface

uses
  AbstractFactory.Interfaces;

type
  TMesaJantarRustic = class(TInterfacedObject, iMesaJantar)
  public
    class function New : iMesaJantar;
    function Lugares : String;
    function Pes : String;
    function Tampo : String;
  end;

implementation

{ TMesaJantarRustic }

function TMesaJantarRustic.Lugares: String;
begin
  Result := '10 Lugares';
end;

class function TMesaJantarRustic.New: iMesaJantar;
begin
  Result := Self.Create;
end;

function TMesaJantarRustic.Pes: String;
begin
  Result := 'Pés de madeira';
end;

function TMesaJantarRustic.Tampo: String;
begin
  Result := 'Tampo de madeira';
end;

end.
