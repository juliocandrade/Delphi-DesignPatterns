unit FactoryMethod.Interfaces;

interface

type
  iTransporte = interface
    function Transportar : string;
    function Origem(Value: string): iTransporte;
    function Destino(Value : string): iTransporte;
  end;

  iFabricaTransportes = interface
    function CriarTransporte(value: string) : iTransporte;
  end;
implementation

end.
