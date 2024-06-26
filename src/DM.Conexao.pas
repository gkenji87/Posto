unit DM.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  TDMConexao = class(TDataModule)
    FDConexao: TFDConnection;
    procedure FDConexaoBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function PegaUltimoCodigo(Tabela, Codigo: String): Integer;
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  FDConexao.Connected := True;
end;

procedure TDMConexao.FDConexaoBeforeConnect(Sender: TObject);
begin
  FDConexao.DriverName      := 'FB';
  FDConexao.Params.Database :=  ExtractFileDir(GetCurrentDir) + '\database\POSTO.FDB';
  FDConexao.Params.DriverID := 'FB';
  FDConexao.Params.UserName := 'SYSDBA';
  FDConexao.Params.Password := 'masterkey';
end;

function TDMConexao.PegaUltimoCodigo(Tabela, Codigo: String): Integer;
begin
  try
    Result := FDConexao.ExecSQLScalar('SELECT COALESCE(MAX('+Codigo+'),0) FROM '+Tabela ) + 1;
    if Result = 0 then
      Result := 1;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro na recupera��o do C�digo');
    end;
  end;
end;

end.
