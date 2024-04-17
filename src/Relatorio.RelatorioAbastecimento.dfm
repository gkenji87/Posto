object rel_RelatorioAbastecimento: Trel_RelatorioAbastecimento
  Left = 0
  Top = 0
  Caption = 'rel_RelatorioAbastecimento'
  ClientHeight = 821
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 137
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 16
        Top = 11
        Width = 230
        Height = 24
        Caption = 'Posto Combust'#237'vel - ABC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 16
        Top = 36
        Width = 205
        Height = 16
        Caption = 'Av. Na'#231#245'es Unidas, 1-10 - Bauru/SP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 16
        Top = 53
        Width = 149
        Height = 16
        Caption = 'CNPJ: 00.000.00/0000-00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 38
        Top = 117
        Width = 38
        Height = 19
        Alignment = taCenter
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 104
        Top = 116
        Width = 132
        Height = 19
        Caption = 'Descri'#231#227'o Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 295
        Top = 116
        Width = 134
        Height = 19
        Caption = 'Descri'#231#227'o Tanque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 535
        Top = 116
        Width = 87
        Height = 19
        Alignment = taRightJustify
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 632
        Top = 116
        Width = 83
        Height = 19
        Alignment = taRightJustify
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 175
      Width = 718
      Height = 22
      AfterPrint = RLBand2AfterPrint
      object DBEdit1: TDBEdit
        Left = 96
        Top = 24
        Width = 514
        Height = 24
        DataField = 'DATA'
        DataSource = dsRelatorio
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 168
        Top = 24
        Width = 454
        Height = 24
        DataField = 'NOMEBOMBA'
        DataSource = dsRelatorio
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 320
        Top = 24
        Width = 754
        Height = 24
        DataField = 'NOMETANQUE'
        DataSource = dsRelatorio
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 552
        Top = 24
        Width = 289
        Height = 24
        DataField = 'QUANTIDADE'
        DataSource = dsRelatorio
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 656
        Top = 24
        Width = 289
        Height = 24
        DataField = 'VALORTOTAL'
        DataSource = dsRelatorio
        TabOrder = 4
      end
      object RLDBText1: TRLDBText
        Left = 20
        Top = 3
        Width = 72
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATA'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 105
        Top = 3
        Width = 185
        Height = 16
        AutoSize = False
        DataField = 'NOMEBOMBA'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 297
        Top = 3
        Width = 200
        Height = 16
        AutoSize = False
        DataField = 'NOMETANQUE'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 535
        Top = 3
        Width = 87
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QUANTIDADE'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 628
        Top = 3
        Width = 87
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORTOTAL'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 197
      Width = 718
      Height = 58
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand3BeforePrint
      object RLLabel9: TRLLabel
        Left = 20
        Top = 3
        Width = 40
        Height = 19
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 68
        Top = 3
        Width = 480
        Height = 19
        Caption = 
          '................................................................' +
          '.......................................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object sumQtde: TRLLabel
        Left = 587
        Top = 4
        Width = 35
        Height = 19
        Alignment = taRightJustify
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
      object sumValorTotal: TRLLabel
        Left = 680
        Top = 4
        Width = 35
        Height = 19
        Alignment = taRightJustify
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object qryRelatorio: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'SELECT v."DATA", '
      'SUM(v.VALORTOTAL) ValorTotal, '
      'Sum(v.QUANTIDADE) Quantidade, '
      'b.NOMEBOMBA , '
      't.NOMETANQUE '
      'FROM VENDAS v '
      'LEFT JOIN BOMBAS b ON v.CODBOMBA = b.CODBOMBA '
      'LEFT JOIN TANQUES t ON b.CODTANQUE = t.CODTANQUE'
      'GROUP BY V.DATA, b.NOMEBOMBA , t.NOMETANQUE ')
    Left = 416
    Top = 416
    object qryRelatorioDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryRelatorioVALORTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryRelatorioQUANTIDADE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryRelatorioNOMEBOMBA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEBOMBA'
      Origin = 'NOMEBOMBA'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qryRelatorioNOMETANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMETANQUE'
      Origin = 'NOMETANQUE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object dsRelatorio: TDataSource
    DataSet = qryRelatorio
    Left = 416
    Top = 464
  end
end
