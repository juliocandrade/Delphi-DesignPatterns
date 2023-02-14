unit AbstractFactory.Cadeira.Jantar.Rustic;

interface

uses
  AbstractFactory.Interfaces;

type
  TCadeiraJantarRustic = class(TInterfacedObject, iCadeiraJantar)
  public
    class function New : iCadeiraJantar;
    function Assento : String;
    function Pes : String;
  end;

implementation

{ TCadeiraJantarRustic }

function TCadeiraJantarRustic.Assento: String;
begin
  Result := 'Assento estofado em couro';
end;

class function TCadeiraJantarRustic.New: iCadeiraJantar;
begin
  Result := Self.Create;
end;

function TCadeiraJantarRustic.Pes: String;
begin
  Result := 'Pés de madeira';
end;


end.
