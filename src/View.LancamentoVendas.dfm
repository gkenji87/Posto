object frm_LancamentoVendas: Tfrm_LancamentoVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Vendas'
  ClientHeight = 484
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    DesignSize = (
      711
      49)
    object lbNomeTela: TLabel
      Left = 13
      Top = 11
      Width = 182
      Height = 29
      Caption = 'Lan'#231'amento de Vendas'
      Color = -1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Bahnschrift Condensed'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btnFechar: TSpeedButton
      Left = 674
      Top = 8
      Width = 27
      Height = 29
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000004646
        4646DCDCDCDCE9E9E9E966666666000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000067676767E9E9E9E9DBDBDBDB464646460000000046464646F9F9
        F9F9FFFFFFFFFFFFFFFFFFFFFFFF757575750000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000075757575FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F946464646DCDCDCDCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7575757500000000000000000000
        0000000000000000000000000000000000000000000000000000000000007575
        7575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDBEAEAEAEAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75757575000000000000
        000000000000000000000000000000000000000000000000000075757575FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E867676767FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF757575750000
        0000000000000000000000000000000000000000000075757575FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67676767000000007272
        7272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A
        7A7A0000000000000000000000000000000072727272FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A7A00000000000000000000
        000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7A7A7A7A000000000000000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A7A0000000000000000000000000000
        00000000000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7A7A7A7A72727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7A7A7A7A000000000000000000000000000000000000
        0000000000000000000075757575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7575757500000000000000000000000000000000000000000000
        000000000000000000000000000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7B7B7B7B0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000072727272FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B
        7B7B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000072727272FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B7B0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000072727272FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A7A0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000072727272FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A
        7A7A000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7A7A7A7A0000000000000000000000000000000000000000000000000000
        0000000000000000000075757575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7575757500000000000000000000000000000000000000000000
        00000000000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7A7A7A7A72727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7A7A7A7A000000000000000000000000000000000000
        000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7A7A7A7A000000000000000072727272FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A7A0000000000000000000000007272
        7272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A
        7A7A0000000000000000000000000000000072727272FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A7A0000000067676767FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF757575750000
        0000000000000000000000000000000000000000000075757575FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66666666EAEAEAEAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75757575000000000000
        000000000000000000000000000000000000000000000000000075757575FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E8DEDEDEDEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7575757500000000000000000000
        0000000000000000000000000000000000000000000000000000000000007575
        7575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCDC47474747F9F9
        F9F9FFFFFFFFFFFFFFFFFFFFFFFF757575750000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000075757575FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F946464646000000004747
        4747DEDEDEDEEBEBEBEB67676767000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000067676767EAEAEAEADCDCDCDC4646464600000000}
      OnClick = btnFecharClick
    end
  end
  object pnlPrincipal: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 705
    Height = 429
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object TPanel
      Left = 40
      Top = 32
      Width = 609
      Height = 353
      TabOrder = 0
      object lbSelecioneBico: TLabel
        Left = 24
        Top = 64
        Width = 143
        Height = 15
        Caption = 'Selecione o Bico da Bomba'
      end
      object lbValor: TLabel
        Left = 25
        Top = 115
        Width = 96
        Height = 15
        Caption = 'Valor Combustivel'
      end
      object lbData: TLabel
        Left = 24
        Top = 15
        Width = 24
        Height = 15
        Caption = 'Data'
        FocusControl = edData
      end
      object lbQuantidade: TLabel
        Left = 160
        Top = 115
        Width = 62
        Height = 15
        Caption = 'Quantidade'
        FocusControl = edQtde
      end
      object lbValorTotal: TLabel
        Left = 279
        Top = 115
        Width = 54
        Height = 15
        Caption = 'Valor Total'
        FocusControl = edValorTotal
      end
      object Label1: TLabel
        Left = 134
        Top = 123
        Width = 14
        Height = 31
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 248
        Top = 120
        Width = 18
        Height = 37
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cbBomba: TDBLookupComboBox
        Left = 24
        Top = 80
        Width = 241
        Height = 23
        DataField = 'CODBOMBA'
        DataSource = dsLancamento
        KeyField = 'CODBOMBA'
        ListField = 'NOMEBOMBA'
        ListSource = dsTanque
        TabOrder = 0
        OnClick = cbBombaClick
      end
      object edValor: TDBEdit
        Left = 24
        Top = 131
        Width = 99
        Height = 23
        DataField = 'VALOR'
        DataSource = dsTanque
        TabOrder = 1
      end
      object edData: TDBEdit
        Left = 24
        Top = 31
        Width = 154
        Height = 23
        DataField = 'DATA'
        DataSource = dsLancamento
        TabOrder = 2
      end
      object edValorTotal: TDBEdit
        Left = 279
        Top = 131
        Width = 82
        Height = 23
        DataField = 'VALORTOTAL'
        DataSource = dsLancamento
        TabOrder = 3
      end
      object edQtde: TDBEdit
        Left = 160
        Top = 131
        Width = 73
        Height = 23
        DataField = 'QUANTIDADE'
        DataSource = dsLancamento
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 24
        Top = 190
        Width = 553
        Height = 81
        TabOrder = 5
      end
    end
  end
  object qryLancamento: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'SELECT '
      'v.IDVENDA,'
      'v.DATA,'
      'v.CODBOMBA,'
      'v.QUANTIDADE,'
      'v.VALORUNITARIO,'
      'v.PORCENTAGEMIMPOSTO,'
      'v.VALORTOTAL '
      'FROM VENDAS v'
      'LEFT JOIN BOMBAS b ON v.CODBOMBA = b.CODBOMBA'
      'ORDER BY v.IDVENDA')
    Left = 569
    Top = 385
    object qryLancamentoIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
    end
    object qryLancamentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryLancamentoCODBOMBA: TIntegerField
      FieldName = 'CODBOMBA'
      Origin = 'CODBOMBA'
    end
    object qryLancamentoQUANTIDADE: TCurrencyField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object qryLancamentoVALORUNITARIO: TCurrencyField
      FieldName = 'VALORUNITARIO'
      Origin = 'VALORUNITARIO'
    end
    object qryLancamentoPORCENTAGEMIMPOSTO: TCurrencyField
      FieldName = 'PORCENTAGEMIMPOSTO'
      Origin = 'PORCENTAGEMIMPOSTO'
    end
    object qryLancamentoVALORTOTAL: TCurrencyField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
    end
  end
  object qryTanque: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'SELECT b.CODBOMBA, b.NOMEBOMBA, t.VALOR '
      'FROM BOMBAS b'
      'LEFT JOIN TANQUES t ON b.CODTANQUE = t.CODTANQUE '
      'ORDER BY b.CODBOMBA ')
    Left = 651
    Top = 384
    object qryTanqueCODBOMBA: TIntegerField
      FieldName = 'CODBOMBA'
      Origin = 'CODBOMBA'
      Required = True
    end
    object qryTanqueNOMEBOMBA: TStringField
      FieldName = 'NOMEBOMBA'
      Origin = 'NOMEBOMBA'
      Size = 30
    end
    object qryTanqueVALOR: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsTanque: TDataSource
    DataSet = qryTanque
    Left = 651
    Top = 336
  end
  object dsLancamento: TDataSource
    DataSet = qryLancamento
    Left = 568
    Top = 336
  end
end
