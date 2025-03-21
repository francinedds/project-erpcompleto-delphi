unit classe.empresa;

interface

type
  TEmpresa = class
  private
   Fid          : integer;
   FRazaoSocial : string;
   FFantasia    : string;
   FCNPJ        : string;
   FIE          : string;
   FEndereco    : string;
   FNumero      : string;
   FCidade      : string;
   FBairro      : string;
   FUF          : string;
   FCEP         : string;
   FTelefone    : string;
   FIM          : string;
   FCRT         : integer;
   FComplemento : string;
   FIdPais      : integer;
   FCodigoIBGE  : string;
   FLogoMarca   : string;

  public
   property Id          : integer     read FId           write FId;
   property RazaoSocial : string      read FRazaoSocial  write FRazaoSocial;
   property Fantasia    : string      read FFantasia     write FFantasia;
   property CNPJ        : string      read FCNPJ         write FCNPJ;
   property IE          : string      read FIE           write FIE;
   property Endereco    : string      read FEndereco     write FEndereco;
   property Numero      : string      read FNumero       write FNumero;
   property Cidade      : string      read FCidade       write FCidade;
   property Bairro      : string      read FBairro       write FBairro;
   property UF          : string      read FUF           write FUF;
   property CEP         : string      read FCEP          write FCEP;
   property Telefone    : string      read FTelefone     write FTelefone;
   property IM          : string      read FIM           write FIM;
   property CRT         : integer     read FCRT          write FCRT;
   property Complemento : string      read FComplemento  write FComplemento;
   property IdPais      : integer     read FIdPais       write FIdPais;
   property CodigoIBGE  : string      read FCodigoIBGE   write FCodigoIBGE;
   property LogoMarca   : string      read FLogoMarca    write FLogoMarca;

  constructor Create;

  end;
implementation

{ TEmpresa }

constructor TEmpresa.Create;
begin
   Fid          := 0;
   FRazaoSocial := '';
   FFantasia    := '';
   FCNPJ        := '';
   FIE          := '';
   FEndereco    := '';
   FNumero      := '';
   FCidade      := '';
   FBairro      := '';
   FUF          := '';
   FCEP         := '';
   FTelefone    := '';
   FIM          := '';
   FCRT         := 0;
   FComplemento := '';
   FIdPais      := 0;
   FCodigoIBGE  := '';
   FLogoMarca   := '';
end;

end.
