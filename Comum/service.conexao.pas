unit service.conexao;

interface

uses
  System.SysUtils, System.Classes, IniFiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef;

type
  TServiceConexao = class(TDataModule)
  FDConnection: TFDConnection;
  procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

{ TServiceConexao }

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LIniFile   : TIniFile;
  LDatabase  : string;
  LUser_Name : string;
  LPassword  : string;
  LServidor  : string;
  LPorta     : integer;
  LCaminho   : string;
begin
   // criando conex�o
   try
     FDConnection.Connected := False;

     LCaminho := ExtractFileDir(ParamStr(0)) + '\login.ini';

     // valida e cria o arquivo .ini caso n�o exista
     if not FileExists(LCaminho) then
     begin
       LIniFile := TIniFile.Create(LCaminho);
       try
          LIniFile.WriteString('Conexao','Database','C:\Users\EMANUEL\Desktop\banco\BANCOERPGOVFB25.fdb');
          LIniFile.WriteString('Conexao','Servidor','127.0.0.1');
          LIniFile.WriteString('Conexao','Porta','3050');
       finally
          LIniFile.Free;
       end;
     end;

     // inicia novamente o arquivo de configura��o
     LIniFile  := TIniFile.Create(LCaminho);
     LDatabase := LIniFile.ReadString('Conexao','Database', LDatabase); // l� string dentro do arquivo .ini
     LServidor := LIniFile.ReadString('Conexao','Servidor', LServidor);
     LPorta    := LIniFile.ReadInteger('Conexao','Porta', LPorta);

     LUser_Name := 'SYSDBA';
     LPassword := 'masterkey';

     FDConnection.Params.Values['Database']  := LDatabase;
     FDConnection.Params.Values['User_Name'] := LUser_Name;
     FDConnection.Params.Values['Password']  := LPassword;
     FDConnection.Params.Values['Server']    := LServidor;
     FDConnection.Params.Values['Porta']     := LPorta.ToString;

     FDConnection.Connected := True;

   finally
      FreeAndNil(LIniFile);
   end;

end;

end.
