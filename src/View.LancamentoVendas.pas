unit View.LancamentoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Mask, Vcl.Imaging.pngimage;

type
  Tfrm_LancamentoVendas = class(TForm)
    pnlTopo: TPanel;
    lbNomeTela: TLabel;
    btnFechar: TSpeedButton;
    pnlPrincipal: TPanel;
    qryLancamento: TFDQuery;
    dsLancamento: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    pnlCombustivel: TPanel;
    imgCombustivel: TImage;
    lbValorCombustivel: TLabel;
    Panel7: TPanel;
    edValor: TEdit;
    pnlQtdeLitros: TPanel;
    imgQtdeLitros: TImage;
    Label3: TLabel;
    Panel2: TPanel;
    edQtdeLitros: TEdit;
    pnlValorTotal: TPanel;
    imgValorTotal: TImage;
    Label4: TLabel;
    Panel4: TPanel;
    edSubTotal: TEdit;
    pnlDataAbastecimento: TPanel;
    Image6: TImage;
    Label12: TLabel;
    Panel19: TPanel;
    edDataLancamento: TEdit;
    Panel1: TPanel;
    Image3: TImage;
    Label5: TLabel;
    Panel3: TPanel;
    cbBomba: TComboBox;
    Panel5: TPanel;
    btConfirmar: TLabel;
    Panel6: TPanel;
    Image1: TImage;
    Label7: TLabel;
    Panel8: TPanel;
    edImposto: TEdit;
    Panel9: TPanel;
    Image2: TImage;
    Label8: TLabel;
    Panel10: TPanel;
    edValorTotal: TEdit;
    Label6: TLabel;
    qryLancamentoIDVENDA: TIntegerField;
    qryLancamentoDATA: TSQLTimeStampField;
    qryLancamentoCODBOMBA: TIntegerField;
    qryLancamentoQUANTIDADE: TCurrencyField;
    qryLancamentoVALORUNITARIO: TCurrencyField;
    qryLancamentoPORCENTAGEMIMPOSTO: TCurrencyField;
    qryLancamentoVALORTOTAL: TCurrencyField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbBombaChange(Sender: TObject);
    procedure edQtdeLitrosChange(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    procedure NovaVenda;
    procedure CarregaBombas;
    function RecuperaValorBomba(NomeBomba: String): Currency;
    function RecuperaCodigoBomba(NomeBomba: String): Integer;
  public
    { Public declarations }
  end;

var
  frm_LancamentoVendas: Tfrm_LancamentoVendas;

implementation

{$R *.dfm}

uses View.Principal, DM.Conexao;

function Tfrm_LancamentoVendas.RecuperaValorBomba(NomeBomba: String): Currency;
begin
  try
    Result := DMConexao.FDConexao.ExecSQLScalar('SELECT t.VALOR '+
                                                'FROM BOMBAS b '+
                                                'LEFT JOIN TANQUES t ON b.CODTANQUE = t.CODTANQUE '+
                                                'WHERE b.NOMEBOMBA = '+ QuotedStr(NomeBomba) );
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro na recuperação do valor da bomba');
    end;
  end;
end;

function Tfrm_LancamentoVendas.RecuperaCodigoBomba(NomeBomba: String): Integer;
begin
  try
    Result := DMConexao.FDConexao.ExecSQLScalar('SELECT b.CodBomba '+
                                                'FROM BOMBAS b '+
                                                'WHERE b.NOMEBOMBA = '+ QuotedStr(NomeBomba) );
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro na recuperação do código interno da bomba');
    end;
  end;
end;

procedure Tfrm_LancamentoVendas.CarregaBombas;
var
  TabelaBombas: TFDQuery;
begin
  cbBomba.Items.Clear;
  TabelaBombas := TFDQuery.Create(self);
  try
    TabelaBombas.Connection := DMConexao.FDConexao;
    TabelaBombas.SQL.Text := 'SELECT NomeBomba FROM Bombas ORDER BY CodBomba';
    TabelaBombas.Open();
    while not TabelaBombas.eof do
    begin
      cbBomba.items.add(TabelaBombas.FieldByName('NomeBomba').AsString);
      TabelaBombas.Next;
    end;
  finally
    FreeAndNil(TabelaBombas);
  end;
end;

procedure Tfrm_LancamentoVendas.NovaVenda;
begin
  CarregaBombas;
  edDataLancamento.Text := DateToStr(now);
  edImposto.Text        := FormatFloat('0.00', 13);
  edValor.Text          := FormatFloat('0.00', 0);
  edQtdeLitros.Text     := FormatFloat('0.00', 0);
  edSubTotal.Text       := FormatFloat('0.00', 0);
  edValorTotal.Text     := FormatFloat('0.00', 0);
end;

procedure Tfrm_LancamentoVendas.btConfirmarClick(Sender: TObject);
begin
  try
    try
      qryLancamento.FieldByName('IDVENDA').AsInteger              := DMConexao.PegaUltimoCodigo('Vendas','IDVENDA');
      qryLancamento.FieldByName('DATA').AsDateTime                := StrToDateTime(edDataLancamento.Text);
      qryLancamento.FieldByName('CODBOMBA').AsInteger             := RecuperaCodigoBomba(cbBomba.Text);
      qryLancamento.FieldByName('QUANTIDADE').AsCurrency          := StrToCurrDef(edQtdeLitros.Text,0);
      qryLancamento.FieldByName('PORCENTAGEMIMPOSTO').AsCurrency  := StrToCurrDef(edImposto.Text,0);
      qryLancamento.FieldByName('VALORUNITARIO').AsCurrency       := StrToCurrDef(edValor.Text,0);
      qryLancamento.FieldByName('VALORTOTAL').AsCurrency          := StrToCurrDef(edValorTotal.Text,0);
      qryLancamento.Post;
    except
      on e: Exception do
      begin
        raise Exception.Create('Erro no momento de gravar as informações no banco de dados.'+#13#10+'Confira os valores e tente novamente');
        Exit;
      end;
    end;
  finally
    Showmessage('Abastecimento gravado com sucesso');
    NovaVenda;
  end;
end;

procedure Tfrm_LancamentoVendas.btnFecharClick(Sender: TObject);
begin
  frm_Principal.pcPrincipal.ActivePage.Destroy;
end;

procedure Tfrm_LancamentoVendas.cbBombaChange(Sender: TObject);
begin
  edValor.Text := FormatFloat('#,###,##0.00', RecuperaValorBomba(cbBomba.Text));
end;

procedure Tfrm_LancamentoVendas.edQtdeLitrosChange(Sender: TObject);
begin
  edSubTotal.Text := FormatFloat('#,###,##0.00', StrToCurrDef(edQtdeLitros.Text,0) * StrToCurrDef(edValor.Text,0) );
  edValorTotal.Text := FormatFloat('#,###,##0.00', StrToCurrDef(edSubTotal.Text,0) - (StrToCurrDef(edSubTotal.Text,0) / 100) * StrToCurrDef(edImposto.Text,0) );
end;

procedure Tfrm_LancamentoVendas.FormCreate(Sender: TObject);
begin
  qryLancamento.Close;
  qryLancamento.Open;
  qryLancamento.Append;

  NovaVenda;
end;

end.
