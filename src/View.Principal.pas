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
    procedure AbrirForm(aForm: TComponentClass; Nome:String);
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses
  View.CadastroTanques, View.CadastroBombas, View.LancamentoVendas;

procedure Tfrm_Principal.AbrirForm(aForm: TComponentClass; Nome:String);
var
  I:Integer;
  Tab: TTabSheet;
  Form: TForm;
begin
  for I := pcPrincipal.PageCount -1 downto 0 do
  begin
    if pcPrincipal.Pages[I].Name = Nome then
    begin
      pcPrincipal.ActivePageIndex := pcPrincipal.Pages[I].TabIndex;
      exit;
    end;
  end;

  Tab := TTabSheet.Create(pcPrincipal);
  Tab.PageControl := pcPrincipal;
  Tab.Name := Nome;
  Tab.Visible := true;

  Application.CreateForm(aForm, Form);
  Form.Parent := tab;
  Form.Align := alClient;
  Form.BorderStyle := bsNone;
  Form.Visible := true;
  pcPrincipal.ActivePage := Tab;
end;

procedure Tfrm_Principal.btnCadBombasClick(Sender: TObject);
begin
  AbrirForm(Tfrm_Bombas, 'Bombas');
end;

procedure Tfrm_Principal.btnCadTanquesClick(Sender: TObject);
begin
  AbrirForm(Tfrm_Tanques, 'Tanques');
end;

procedure Tfrm_Principal.btnLancamentoVendaClick(Sender: TObject);
begin
  AbrirForm(Tfrm_LancamentoVendas, 'Vendas');
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
