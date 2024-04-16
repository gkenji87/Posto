inherited frm_Bombas: Tfrm_Bombas
  Caption = 'frm_Bombas'
  TextHeight = 17
  inherited pnlTopo: TPanel
    ExplicitLeft = 0
    ExplicitWidth = 711
    inherited lbNomeTela: TLabel
      Width = 164
      Caption = 'Cadastro de Bombas'
      ExplicitWidth = 164
    end
  end
  inherited pnlCentral: TPanel
    ExplicitLeft = 0
    ExplicitTop = 105
    ExplicitWidth = 711
    ExplicitHeight = 379
    object Label1: TLabel [0]
      Left = 48
      Top = 64
      Width = 43
      Height = 17
      Caption = 'C'#243'digo'
      FocusControl = edCodigo
    end
    object Label2: TLabel [1]
      Left = 48
      Top = 112
      Width = 102
      Height = 17
      Caption = 'Descri'#231#227'o Bomba'
      FocusControl = edDescBomba
    end
    object Shape1: TShape [2]
      Left = 17
      Top = 39
      Width = 654
      Height = 3
      Brush.Color = 15066597
      Pen.Style = psClear
    end
    object Label38: TLabel [3]
      Left = 20
      Top = 23
      Width = 112
      Height = 14
      Caption = 'DADOS CADASTRAIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -12
      Font.Name = 'Bahnschrift'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel [4]
      Left = 48
      Top = 160
      Width = 42
      Height = 17
      Caption = 'Tanque'
      FocusControl = edDescBomba
    end
    object edCodigo: TDBEdit [5]
      Left = 48
      Top = 81
      Width = 77
      Height = 25
      DataField = 'CODBOMBA'
      DataSource = dsTabela
      TabOrder = 1
    end
    object edDescBomba: TDBEdit [6]
      Left = 48
      Top = 129
      Width = 300
      Height = 25
      DataField = 'NOMEBOMBA'
      DataSource = dsTabela
      TabOrder = 2
    end
    object cbTanque: TDBLookupComboBox [7]
      Left = 48
      Top = 177
      Width = 300
      Height = 25
      DataField = 'CODTANQUE'
      DataSource = dsTabela
      KeyField = 'CODTANQUE'
      ListField = 'NOMETANQUE'
      ListSource = dsTanque
      TabOrder = 3
    end
    inherited dbPesquisa: TDBGrid
      Left = 462
      Top = 6
      OnDrawColumnCell = nil
      OnDblClick = nil
      OnTitleClick = nil
    end
  end
  inherited qryTabela: TFDQuery
    SQL.Strings = (
      'SELECT b.CODBOMBA, b.NOMEBOMBA, b.CODTANQUE, t.NOMETANQUE'
      'FROM BOMBAS b'
      'LEFT JOIN TANQUES t ON b.CODTANQUE = t.CODTANQUE'
      'ORDER BY b.CODBOMBA ')
    object qryTabelaCODBOMBA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODBOMBA'
      Origin = 'CODBOMBA'
      Required = True
    end
    object qryTabelaNOMEBOMBA: TStringField
      DisplayLabel = 'Descri'#231#227'o Bomba'
      FieldName = 'NOMEBOMBA'
      Origin = 'NOMEBOMBA'
      Size = 30
    end
    object qryTabelaCODTANQUE: TIntegerField
      FieldName = 'CODTANQUE'
      Origin = 'CODTANQUE'
      Visible = False
    end
    object qryTabelaNOMETANQUE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o Tanque'
      FieldName = 'NOMETANQUE'
      Origin = 'NOMETANQUE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object qryTanque: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'SELECT CODTANQUE, NOMETANQUE'
      'FROM TANQUES'
      'ORDER BY CODTANQUE')
    Left = 651
    Top = 384
    object qryTanqueCODTANQUE: TIntegerField
      FieldName = 'CODTANQUE'
      Origin = 'CODTANQUE'
      Required = True
    end
    object qryTanqueNOMETANQUE: TStringField
      FieldName = 'NOMETANQUE'
      Origin = 'NOMETANQUE'
      Size = 50
    end
  end
  object dsTanque: TDataSource
    DataSet = qryTanque
    Left = 651
    Top = 336
  end
end
