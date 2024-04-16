object frm_Principal: Tfrm_Principal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Principal'
  ClientHeight = 608
  ClientWidth = 947
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 17
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    OnMouseDown = pnlTopoMouseDown
    object lbPostoCombustivelABC: TLabel
      Left = 13
      Top = 11
      Width = 219
      Height = 29
      Caption = 'Posto de Combust'#237'vel - ABC'
      Color = -1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Bahnschrift Condensed'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 49
    Width = 193
    Height = 559
    Align = alLeft
    BevelOuter = bvNone
    Color = 12500670
    ParentBackground = False
    TabOrder = 1
    StyleElements = [seFont, seBorder]
    object btnSairSistema: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 519
      Width = 187
      Height = 30
      Margins.Bottom = 10
      Align = alBottom
      Caption = 'Sair do Sistema'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51D1D1D1616166262621DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51C1C1C0000000000000000000000001212126262
        621DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000001515151DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B57878781A1A1A00000000000000000000000000
        00000000000000000000000000000000000000000000001B1B1B1DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B57878780000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B50000000000001DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B53A3A3A3C3C3C1DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B54343433737371DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B500000000000028
        28281DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000002828281DE6B51DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000000000002828281DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00003C3C3C000000000000000000000000000000000000000000000000000000
        3434341DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000003A3A3A00000000000000000000000000000000000000
        00000000000000003434341DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000000000002828281DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000002828281DE6B51DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B50000000000002828281DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B54343433535351D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B53C3C3C3D3D3D1DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6
        B51DE6B51A1A1A00000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B51DE6B51515150000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B5777777000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000001E1E1E1DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B576767619191900000000000000000000000000
        00000000000000000000000000000000000101012222221DE6B5}
      Margin = 10
      ParentFont = False
      Spacing = 11
      OnClick = btnSairSistemaClick
      ExplicitTop = 518
    end
    object btnCadBombas: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 50
      Width = 180
      Height = 30
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Bombas'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51D1D1D1616166262621DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51C1C1C0000000000000000000000001212126262
        621DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000001515151DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B57878781A1A1A00000000000000000000000000
        00000000000000000000000000000000000000000000001B1B1B1DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B57878780000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B50000000000001DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B53A3A3A3C3C3C1DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B54343433737371DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B500000000000028
        28281DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000002828281DE6B51DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000000000002828281DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00003C3C3C000000000000000000000000000000000000000000000000000000
        3434341DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000003A3A3A00000000000000000000000000000000000000
        00000000000000003434341DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000000000002828281DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000002828281DE6B51DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B50000000000002828281DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B54343433535351D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B53C3C3C3D3D3D1DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6
        B51DE6B51A1A1A00000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B51DE6B51515150000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B5777777000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000001E1E1E1DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B576767619191900000000000000000000000000
        00000000000000000000000000000000000101012222221DE6B5}
      Margin = 10
      ParentFont = False
      Spacing = 11
      OnClick = btnCadBombasClick
    end
    object btnCadTanques: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 10
      Width = 180
      Height = 30
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Tanques'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51D1D1D1616166262621DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51C1C1C0000000000000000000000001212126262
        621DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000001515151DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B57878781A1A1A00000000000000000000000000
        00000000000000000000000000000000000000000000001B1B1B1DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B57878780000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B50000000000001DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B53A3A3A3C3C3C1DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B54343433737371DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B500000000000028
        28281DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000002828281DE6B51DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000000000002828281DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00003C3C3C000000000000000000000000000000000000000000000000000000
        3434341DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000003A3A3A00000000000000000000000000000000000000
        00000000000000003434341DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000000000002828281DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000002828281DE6B51DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B50000000000002828281DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B54343433535351D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B53C3C3C3D3D3D1DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6
        B51DE6B51A1A1A00000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B51DE6B51515150000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B5777777000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000001E1E1E1DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B576767619191900000000000000000000000000
        00000000000000000000000000000000000101012222221DE6B5}
      Margin = 10
      ParentFont = False
      Spacing = 11
      OnClick = btnCadTanquesClick
    end
    object btnLancamentoVenda: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 110
      Width = 180
      Height = 30
      Margins.Top = 30
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Lan'#231'amento de Vendas'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51D1D1D1616166262621DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51C1C1C0000000000000000000000001212126262
        621DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000001515151DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B57878781A1A1A00000000000000000000000000
        00000000000000000000000000000000000000000000001B1B1B1DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B57878780000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B50000000000001DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B53A3A3A3C3C3C1DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B54343433737371DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B500000000000028
        28281DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000002828281DE6B51DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000000000002828281DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00003C3C3C000000000000000000000000000000000000000000000000000000
        3434341DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000003A3A3A00000000000000000000000000000000000000
        00000000000000003434341DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000000000002828281DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000002828281DE6B51DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B50000000000002828281DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B54343433535351D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B53C3C3C3D3D3D1DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6
        B51DE6B51A1A1A00000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B51DE6B51515150000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B5777777000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000001E1E1E1DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B576767619191900000000000000000000000000
        00000000000000000000000000000000000101012222221DE6B5}
      Margin = 10
      ParentFont = False
      Spacing = 11
      OnClick = btnLancamentoVendaClick
    end
    object btnRelatorio: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 150
      Width = 180
      Height = 30
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Relat'#243'rio Venda'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51D1D1D1616166262621DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51C1C1C0000000000000000000000001212126262
        621DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000001515151DE6B51DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B57878781A1A1A00000000000000000000000000
        00000000000000000000000000000000000000000000001B1B1B1DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B57878780000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B50000000000001DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B53A3A3A3C3C3C1DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B54343433737371DE6B51DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B500000000000028
        28281DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000002828281DE6B51DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000000000002828281DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00003C3C3C000000000000000000000000000000000000000000000000000000
        3434341DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000003A3A3A00000000000000000000000000000000000000
        00000000000000003434341DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B50000000000000000000000002828281DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B50000000000000000002828281DE6B51DE6B51DE6B51DE6
        B51DE6B500000000000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B50000000000002828281DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B50000000000000000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B54343433535351D
        E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5000000000000000000000000
        0000000000000000000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B53C3C3C3D3D3D1DE6B51DE6B51DE6B51DE6B500000000
        00000000000000000000000000000000000000000000000000001DE6B51DE6B5
        1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B50000000000001DE6B51DE6B51DE6
        B51DE6B51A1A1A00000000000000000000000000000000000000000000000000
        00001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51A1A1A000000
        1DE6B51DE6B51DE6B51DE6B51DE6B51515150000000000000000000000000000
        000000000000000000001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
        E6B5777777000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000001E1E1E1DE6B51DE6B51DE6B51DE6B51DE6
        B51DE6B51DE6B51DE6B51DE6B576767619191900000000000000000000000000
        00000000000000000000000000000000000101012222221DE6B5}
      Margin = 10
      ParentFont = False
      Spacing = 11
      OnClick = btnSairSistemaClick
      ExplicitTop = 174
    end
  end
  object pnlPrincipal: TPanel
    AlignWithMargins = True
    Left = 196
    Top = 52
    Width = 748
    Height = 553
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 464
    ExplicitTop = 256
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pcPrincipal: TPageControl
      Left = 0
      Top = 0
      Width = 748
      Height = 553
      ActivePage = tabDemonstracao
      Align = alClient
      TabOrder = 0
      object tabDemonstracao: TTabSheet
        Caption = 'Demonstra'#231#227'o'
        object memExplicacaoDemonstrativo: TMemo
          Left = 16
          Top = 13
          Width = 705
          Height = 220
          Lines.Strings = (
            'Sistema demonstrativo de Posto de Combust'#237'vel')
          TabOrder = 0
        end
      end
    end
  end
end