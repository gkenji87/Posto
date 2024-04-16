unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  Tfrm_Principal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    lbPostoCombustivelABC: TLabel;
    btnSairSistema: TSpeedButton;
    pnlPrincipal: TPanel;
    btnCadBombas: TSpeedButton;
    btnCadTanques: TSpeedButton;
    btnLancamentoVenda: TSpeedButton;
    pcPrincipal: TPageControl;
    tabDemonstracao: TTabSheet;
    memExplicacaoDemonstrativo: TMemo;
    btnRelatorio: TSpeedButton;
    procedure btnSairSistemaClick(Sender: TObject);
    procedure btnCadTanquesClick(Sender: TObject);
    procedure btnCadBombasClick(Sender: TObject);
    procedure btnLancamentoVendaClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure VerificaExisteTabSheet(Nome: String);
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses
  View.CadastroTanques, View.CadastroBombas, View.LancamentoVendas;

procedure Tfrm_Principal.VerificaExisteTabSheet(Nome: String);
var
  I: Integer;
begin
  for I := pcPrincipal.PageCount -1 downto 0 do
  begin
    if pcPrincipal.Pages[I].Name = Nome then
    begin
      pcPrincipal.ActivePageIndex := pcPrincipal.Pages[I].TabIndex;
      abort;
    end;
  end;
end;

procedure Tfrm_Principal.btnCadBombasClick(Sender: TObject);
var
  Tab: TTabSheet;
  Form: TForm;
begin
  VerificaExisteTabSheet('Bombas');

  Tab := TTabSheet.Create(pcPrincipal);
  Tab.PageControl := pcPrincipal;
  Tab.Name := 'Bombas';
  Tab.Visible := true;

  Application.CreateForm(Tfrm_Bombas, Form);
  Form.Parent := tab;
  Form.Align := alClient;
  Form.BorderStyle := bsNone;
  Form.Visible := true;
  pcPrincipal.ActivePage := Tab;
end;

procedure Tfrm_Principal.btnCadTanquesClick(Sender: TObject);
var
  Tab: TTabSheet;
  Form: TForm;
begin
  VerificaExisteTabSheet('Tanques');

  Tab := TTabSheet.Create(pcPrincipal);
  Tab.PageControl := pcPrincipal;
  Tab.Name := 'Tanques';
  Tab.Visible := true;

  Application.CreateForm(Tfrm_Tanques, Form);
  Form.Parent := tab;
  Form.Align := alClient;
  Form.BorderStyle := bsNone;
  Form.Visible := true;
  pcPrincipal.ActivePage := Tab;
end;

procedure Tfrm_Principal.btnLancamentoVendaClick(Sender: TObject);
var
  Tab: TTabSheet;
  Form: TForm;
begin
  VerificaExisteTabSheet('Vendas');

  Tab := TTabSheet.Create(pcPrincipal);
  Tab.PageControl := pcPrincipal;
  Tab.Name := 'Vendas';
  Tab.Visible := true;

  Application.CreateForm(Tfrm_LancamentoVendas, Form);
  Form.Parent := tab;
  Form.Align := alClient;
  Form.BorderStyle := bsNone;
  Form.Visible := true;
  pcPrincipal.ActivePage := Tab;
end;

procedure Tfrm_Principal.btnSairSistemaClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_Principal.pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

const
  sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
