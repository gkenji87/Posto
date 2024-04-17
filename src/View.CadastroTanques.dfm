inherited frm_Tanques: Tfrm_Tanques
  Caption = 'Cadastro de Tanques'
  TextHeight = 17
  inherited pnlTopo: TPanel
    inherited lbNomeTela: TLabel
      Width = 166
      Caption = 'Cadastro de Tanques'
      ExplicitWidth = 166
    end
  end
  inherited pnlCentral: TPanel
    object Label1: TLabel [0]
      Left = 40
      Top = 56
      Width = 43
      Height = 17
      Caption = 'C'#243'digo'
      FocusControl = edCodigo
    end
    object Label2: TLabel [1]
      Left = 40
      Top = 104
      Width = 103
      Height = 17
      Caption = 'Descri'#231#227'o Tanque'
      FocusControl = edNomeTanque
    end
    object Label38: TLabel [2]
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
    object Shape1: TShape [3]
      Left = 17
      Top = 39
      Width = 654
      Height = 3
      Brush.Color = 15066597
      Pen.Style = psClear
    end
    object Label5: TLabel [4]
      Left = 311
      Top = 104
      Width = 30
      Height = 17
      Caption = 'Valor'
      FocusControl = edValor
    end
    object edCodigo: TDBEdit [5]
      Left = 40
      Top = 73
      Width = 69
      Height = 25
      DataField = 'CODTANQUE'
      DataSource = dsTabela
      ReadOnly = True
      TabOrder = 1
    end
    object edNomeTanque: TDBEdit [6]
      Left = 40
      Top = 121
      Width = 265
      Height = 25
      DataField = 'NOMETANQUE'
      DataSource = dsTabela
      TabOrder = 2
    end
    object edValor: TDBEdit [7]
      Left = 311
      Top = 121
      Width = 82
      Height = 25
      DataField = 'VALOR'
      DataSource = dsTabela
      TabOrder = 3
    end
    inherited dbPesquisa: TDBGrid
      Left = 384
      Top = 6
    end
  end
  inherited qryTabela: TFDQuery
    SQL.Strings = (
      'SELECT '
      'CODTANQUE,'
      'NOMETANQUE,'
      'VALOR'
      'FROM Tanques'
      'ORDER BY CODTANQUE')
    object qryTabelaCODTANQUE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODTANQUE'
      Origin = 'CODTANQUE'
      Required = True
    end
    object qryTabelaNOMETANQUE: TStringField
      DisplayLabel = 'Descri'#231#227'o Tanque'
      FieldName = 'NOMETANQUE'
      Origin = 'NOMETANQUE'
      Size = 50
    end
    object qryTabelaVALOR: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
  end
end
