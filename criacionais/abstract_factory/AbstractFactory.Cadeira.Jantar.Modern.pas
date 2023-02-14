unit AbstractFactory.Cadeira.Jantar.Modern;

interface

uses
  AbstractFactory.Interfaces;

type
  TCadeiraJantarModern = class(TInterfacedObject, iCadeiraJantar)
  public
    class function New : iCadeiraJantar;
    function Assento : String;
    function Pes : String;
  end;

implementation

{ TCadeiraJantarModern }

function TCadeiraJantarModern.Assento: String;
begin
  Result := 'Assento estofado em tecido Liso';
end;

class function TCadeiraJantarModern.New: iCadeiraJantar;
begin
  Result := Self.Create;
end;

function TCadeiraJantarModern.Pes: String;
begin
  Result := 'Pés de alumínio';
end;


end.
