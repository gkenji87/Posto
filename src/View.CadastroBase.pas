unit View.CadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_CadastroBase = class(TForm)
    pnlTopo: TPanel;
    lbNomeTela: TLabel;
    btnFechar: TSpeedButton;
    pnlCRUD: TPanel;
    btnPesquisa: TSpeedButton;
    btnIncluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    pnlCentral: TPanel;
    dbPesquisa: TDBGrid;
    dsTabela: TDataSource;
    qryTabela: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    procedure ControlaBotoes(Flag: Boolean);
  public
    { Public declarations }
    STRSelect : String;
  end;

var
  frm_CadastroBase: Tfrm_CadastroBase;

implementation

{$R *.dfm}

uses
  DM.Conexao, View.Principal;

procedure Tfrm_CadastroBase.btnAlterarClick(Sender: TObject);
begin
  if qryTabela.RecordCount=0 then
  begin
    Showmessage('Nenhum registro foi adicionado ainda neste cadastro');
    Exit;
  end;
  //Controles de visualização
  ControlaBotoes(False);
  dbPesquisa.Visible := False;
  //Comando Banco
  qryTabela.Edit;
end;

procedure Tfrm_CadastroBase.btnCancelarClick(Sender: TObject);
begin
  //Controles de visualização
  ControlaBotoes(True);
  dbPesquisa.Visible := True;
  //Comando Banco
  qryTabela.Cancel;
end;

procedure Tfrm_CadastroBase.btnConfirmarClick(Sender: TObject);
begin
  //Controles de visualização
  ControlaBotoes(True);
  dbPesquisa.Visible := True;
  //Comando Banco
  qryTabela.Post;
  qryTabela.Close;
  qryTabela.Open();
end;

procedure Tfrm_CadastroBase.btnExcluirClick(Sender: TObject);
begin
  //Verifica se existe registro no qPesquisa
  if qryTabela.IsEmpty then
  begin
    Showmessage('Nenhum registro foi adicionado ainda neste cadastro');
    Exit;
  end;
  //Faz a confirmação se deseja apagar mesmo
  if MessageDlg('Deseja Excluir este registro?', mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin
    qryTabela.Delete;

    btnPesquisaClick(btnPesquisa);
  end;
end;

procedure Tfrm_CadastroBase.btnFecharClick(Sender: TObject);
begin
  frm_Principal.pcPrincipal.ActivePage.Destroy;
end;

procedure Tfrm_CadastroBase.btnIncluirClick(Sender: TObject);
begin
  //Controles de visualização
  ControlaBotoes(False);
  dbPesquisa.Visible := False;
  //Comando banco
  qryTabela.Append;
end;

procedure Tfrm_CadastroBase.btnPesquisaClick(Sender: TObject);
begin
  ControlaBotoes(True);
  dbPesquisa.Visible := True;
end;

procedure Tfrm_CadastroBase.ControlaBotoes(Flag: Boolean);
begin
  //procedure para controlar os botoes
  btnIncluir.Visible   := Flag;
  btnAlterar.Visible   := Flag;
  btnExcluir.Visible   := Flag;
  btnConfirmar.Visible := not Flag;
  btnCancelar.Visible  := not Flag;
end;

procedure Tfrm_CadastroBase.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  //Habilita os botões I,A,E e Pesquisa
  ControlaBotoes(True);
  dbPesquisa.Visible := True;
  dbPesquisa.Top := 7;
  dbPesquisa.Left := 8;
  //Carrega o SQL de pesquisa
  qryTabela.Close;
  qryTabela.SQL.Text := STRSelect;
  qryTabela.Open();

  if not qryTabela.IsEmpty then
  begin
    for I := 0 to dbPesquisa.Columns.Count - 1 do
      dbPesquisa.Columns[I].Title.Font.Size := 10;
  end;
end;

end.
