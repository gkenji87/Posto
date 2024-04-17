unit View.CadastroBombas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.CadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  Tfrm_Bombas = class(Tfrm_CadastroBase)
    Label1: TLabel;
    edCodigo: TDBEdit;
    Label2: TLabel;
    edDescBomba: TDBEdit;
    cbTanque: TDBLookupComboBox;
    qryTanque: TFDQuery;
    qryTanqueCODTANQUE: TIntegerField;
    qryTanqueNOMETANQUE: TStringField;
    dsTanque: TDataSource;
    Shape1: TShape;
    Label38: TLabel;
    qryTabelaCODBOMBA: TIntegerField;
    qryTabelaNOMEBOMBA: TStringField;
    qryTabelaCODTANQUE: TIntegerField;
    qryTabelaNOMETANQUE: TStringField;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Bombas: Tfrm_Bombas;

implementation

{$R *.dfm}

uses
  DM.Conexao;

procedure Tfrm_Bombas.btnIncluirClick(Sender: TObject);
begin
  inherited;
  qryTabelaCODBOMBA.AsInteger := DMConexao.PegaUltimoCodigo('Bombas', 'CodBomba');
  edDescBomba.SetFocus;
end;

procedure Tfrm_Bombas.FormCreate(Sender: TObject);
begin
  qryTanque.Close;
  qryTanque.Open;

  STRSelect := 'SELECT b.CODBOMBA, b.NOMEBOMBA, b.CODTANQUE, t.NOMETANQUE '+
               'FROM BOMBAS b '+
               'LEFT JOIN TANQUES t ON b.CODTANQUE = t.CODTANQUE '+
               'ORDER BY b.CODBOMBA ';
  inherited;
end;

end.
