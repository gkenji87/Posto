unit Relatorio.RelatorioAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  Trel_RelatorioAbastecimento = class(TForm)
    RLReport1: TRLReport;
    qryRelatorio: TFDQuery;
    RLBand1: TRLBand;
    dsRelatorio: TDataSource;
    RLBand2: TRLBand;
    qryRelatorioDATA: TSQLTimeStampField;
    qryRelatorioVALORTOTAL: TFMTBCDField;
    qryRelatorioQUANTIDADE: TFMTBCDField;
    qryRelatorioNOMEBOMBA: TStringField;
    qryRelatorioNOMETANQUE: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    sumQtde: TRLLabel;
    sumValorTotal: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    somaQtde, somaValorTotal: Currency;
    { Public declarations }
  end;

var
  rel_RelatorioAbastecimento: Trel_RelatorioAbastecimento;

implementation

uses
  DM.Conexao;

{$R *.dfm}

procedure Trel_RelatorioAbastecimento.FormCreate(Sender: TObject);
begin
  qryRelatorio.Close;
  qryRelatorio.Open;
end;

procedure Trel_RelatorioAbastecimento.RLBand2AfterPrint(Sender: TObject);
begin
  somaQtde := somaQtde + qryRelatorioQUANTIDADE.AsCurrency;
  somaValorTotal := somaValorTotal + qryRelatorioVALORTOTAL.AsCurrency;
end;

procedure Trel_RelatorioAbastecimento.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  sumQtde.Caption := formatfloat('#,##0.00', somaQtde);
  sumValorTotal.Caption := formatfloat('#,##0.00', somaValorTotal);
end;

procedure Trel_RelatorioAbastecimento.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  somaQtde := 0;
  somaValorTotal := 0;
end;

end.
