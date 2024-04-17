unit View.CadastroTanques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.CadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrm_Tanques = class(Tfrm_CadastroBase)
    qryTabelaCODTANQUE: TIntegerField;
    qryTabelaNOMETANQUE: TStringField;
    Label1: TLabel;
    edCodigo: TDBEdit;
    Label2: TLabel;
    edNomeTanque: TDBEdit;
    Label38: TLabel;
    Shape1: TShape;
    qryTabelaVALOR: TCurrencyField;
    Label5: TLabel;
    edValor: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Tanques: Tfrm_Tanques;

implementation

{$R *.dfm}

uses
  DM.Conexao;

procedure Tfrm_Tanques.btnIncluirClick(Sender: TObject);
begin
  inherited;
  qryTabelaCODTANQUE.AsInteger := DMConexao.PegaUltimoCodigo('Tanques', 'CodTanque');
  edNomeTanque.SetFocus;
end;

procedure Tfrm_Tanques.FormCreate(Sender: TObject);
begin
  STRSelect := 'SELECT CODTANQUE, NOMETANQUE, VALOR FROM Tanques ORDER BY CODTANQUE';
  inherited;
end;

end.
