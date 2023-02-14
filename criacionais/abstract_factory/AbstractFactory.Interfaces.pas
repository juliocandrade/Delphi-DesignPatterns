unit AbstractFactory.Interfaces;

interface

type
  TTipoConjuntoJantar = (Modern, Rustic);

  iMesaJantar = interface
    function Lugares : String;
    function Pes : String;
    function Tampo : String;
  end;

  iCadeiraJantar = interface
    function Assento : String;
    function Pes : String;
  end;

  iFabricaConjuntoJantarEspecifica = interface
    function CadeiraJantar : iCadeiraJantar;
    function MesaJantar : iMesaJantar;
  end;

  iFabricaConjuntoJantar = interface
    function Tipo(Tipo : TTIpoConjuntoJantar) : iFabricaConjuntoJantarEspecifica;
  end;


implementation

end.
