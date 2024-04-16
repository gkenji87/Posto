unit View.LancamentoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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

end.
