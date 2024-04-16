unit View.LancamentoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Mask;

type
  Tfrm_LancamentoVendas = class(TForm)
    pnlTopo: TPanel;
    lbNomeTela: TLabel;
    btnFechar: TSpeedButton;
    pnlPrincipal: TPanel;
    qryLancamento: TFDQuery;
    qryLancamentoIDVENDA: TIntegerField;
    qryLancamentoDATA: TSQLTimeStampField;
    qryLancamentoCODBOMBA: TIntegerField;
    qryLancamentoQUANTIDADE: TCurrencyField;
    qryLancamentoVALORUNITARIO: TCurrencyField;
    qryLancamentoPORCENTAGEMIMPOSTO: TCurrencyField;
    qryLancamentoVALORTOTAL: TCurrencyField;
    lbSelecioneBico: TLabel;
    cbBomba: TDBLookupComboBox;
    qryTanque: TFDQuery;
    dsTanque: TDataSource;
    qryTanqueCODBOMBA: TIntegerField;
    qryTanqueNOMEBOMBA: TStringField;
    qryTanqueVALOR: TCurrencyField;
    edValor: TDBEdit;
    dsLancamento: TDataSource;
    lbValor: TLabel;
    edData: TDBEdit;
    lbData: TLabel;
    lbQuantidade: TLabel;
    edValorTotal: TDBEdit;
    lbValorTotal: TLabel;
    edQtde: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbBombaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TValorBicoBomba = class
    Bomba: Integer;
    DescricaoBomba: String;
    Valor: Currency;

//    function RecuperaValorBico():;
  end;

var
  frm_LancamentoVendas: Tfrm_LancamentoVendas;

implementation

{$R *.dfm}

uses View.Principal, DM.Conexao;

procedure Tfrm_LancamentoVendas.btnFecharClick(Sender: TObject);
begin
  frm_Principal.pcPrincipal.ActivePage.Destroy;
end;

procedure Tfrm_LancamentoVendas.cbBombaClick(Sender: TObject);
var
  BombaBico: TValorBicoBomba;
begin
  BombaBico := TValorBicoBomba.Create;
//  BombaBico.Bomba :=
end;

procedure Tfrm_LancamentoVendas.FormCreate(Sender: TObject);
begin
  qryTanque.Close;
  qryTanque.Open;

  qryLancamento.Close;
  qryLancamento.Open;
  qryLancamento.Append;
end;

end.
