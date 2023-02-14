unit AbstractFactory.Mesa.Jantar.Modern;

interface

uses
  AbstractFactory.Interfaces;

type
  TMesaJantarModern = class(TInterfacedObject, iMesaJantar)
  public
    class function New : iMesaJantar;
    function Lugares : String;
    function Pes : String;
    function Tampo : String;
  end;

implementation

{ TMesaJantarModern }

function TMesaJantarModern.Lugares: String;
begin
  Result := '8 Lugares';
end;

class function TMesaJantarModern.New: iMesaJantar;
begin
  Result := Self.Create;
end;

function TMesaJantarModern.Pes: String;
begin
  Result := 'Pés de alumínio';
end;

function TMesaJantarModern.Tampo: String;
begin
  Result := 'Tampo de vidro';
end;

end.
