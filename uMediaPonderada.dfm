object forMediaPon: TforMediaPon
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Media Ponderada'
  ClientHeight = 527
  ClientWidth = 726
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object labIntroducao: TLabel
    Left = 8
    Top = 16
    Width = 364
    Height = 92
    Caption = 
      'M'#233'dia Ponderada '#233' calculada pelo som'#225'torio da multiplica'#231#227'o de v' +
      'alores e pesos dividos pelo somat'#243'rio dos pesos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object labExeCalculo: TLabel
    Left = 24
    Top = 176
    Width = 274
    Height = 19
    Caption = 'Ex:  (8,6 * 2) +(7,5 * 1) +(8 * 7)  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labDivisaoExe: TLabel
    Left = 64
    Top = 192
    Width = 220
    Height = 19
    Caption = '______________________'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labDivisao: TLabel
    Left = 120
    Top = 211
    Width = 76
    Height = 19
    Caption = '2 + 1 + 7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labExeResultado: TLabel
    Left = 304
    Top = 192
    Width = 53
    Height = 19
    Caption = '= 8,07'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labMulPesos: TLabel
    Left = 79
    Top = 147
    Width = 198
    Height = 23
    Caption = '17,2        7,5         56'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labMP: TLabel
    Left = 32
    Top = 352
    Width = 56
    Height = 25
    Caption = 'MP ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 126
    Top = 383
    Width = 479
    Height = 3
  end
  object lab1X: TLabel
    Left = 178
    Top = 358
    Width = 11
    Height = 19
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab1Soma: TLabel
    Left = 267
    Top = 358
    Width = 10
    Height = 19
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab2X: TLabel
    Left = 354
    Top = 358
    Width = 11
    Height = 19
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab2Soma: TLabel
    Left = 436
    Top = 358
    Width = 10
    Height = 19
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab3X: TLabel
    Left = 523
    Top = 358
    Width = 11
    Height = 19
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Stencil'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab1Parentese: TLabel
    Left = 107
    Top = 342
    Width = 13
    Height = 35
    Caption = '('
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab3Parentese: TLabel
    Left = 283
    Top = 342
    Width = 13
    Height = 35
    Caption = '('
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab2Parentese: TLabel
    Left = 246
    Top = 342
    Width = 13
    Height = 35
    Caption = ')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab4Parentese: TLabel
    Left = 419
    Top = 342
    Width = 13
    Height = 35
    Caption = ')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab5Parentese: TLabel
    Left = 452
    Top = 342
    Width = 13
    Height = 35
    Caption = '('
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lab6Parentese: TLabel
    Left = 592
    Top = 342
    Width = 13
    Height = 35
    Caption = ')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labSomaPesos: TLabel
    Left = 317
    Top = 416
    Width = 48
    Height = 23
    Alignment = taCenter
    Caption = '........'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labPrimeiroProduto: TLabel
    Left = 178
    Top = 304
    Width = 11
    Height = 23
    Alignment = taCenter
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labSegundoProduto: TLabel
    Left = 354
    Top = 304
    Width = 11
    Height = 23
    Alignment = taCenter
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labTerceiroProduto: TLabel
    Left = 523
    Top = 304
    Width = 11
    Height = 23
    Alignment = taCenter
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labResultado: TLabel
    Left = 509
    Top = 480
    Width = 96
    Height = 23
    Alignment = taCenter
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labValores: TLabel
    Left = 394
    Top = 60
    Width = 71
    Height = 23
    Caption = 'Valores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labPesos: TLabel
    Left = 580
    Top = 64
    Width = 47
    Height = 19
    Caption = 'Pesos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ediPrimeiroValor: TEdit
    Left = 126
    Top = 346
    Width = 46
    Height = 31
    Alignment = taCenter
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object ediPrimeiroPeso: TEdit
    Left = 195
    Top = 346
    Width = 46
    Height = 31
    Alignment = taCenter
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object ediSegundoValor: TEdit
    Left = 302
    Top = 346
    Width = 46
    Height = 31
    Alignment = taCenter
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object ediSegundoPeso: TEdit
    Left = 367
    Top = 346
    Width = 46
    Height = 31
    Alignment = taCenter
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object ediTerceiroValor: TEdit
    Left = 471
    Top = 346
    Width = 46
    Height = 31
    Alignment = taCenter
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object ediTerceiroPeso: TEdit
    Left = 540
    Top = 346
    Width = 46
    Height = 31
    Alignment = taCenter
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object butCalcular: TButton
    Left = 616
    Top = 339
    Width = 102
    Height = 45
    Caption = 'Calcular'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = butCalcularClick
  end
  object butAdicionar: TButton
    Left = 195
    Top = 461
    Width = 209
    Height = 58
    Caption = 'Adicionar mais numeros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = butAdicionarClick
  end
  object butLimpar: TButton
    Left = 8
    Top = 461
    Width = 121
    Height = 58
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = butLimparClick
  end
  object listaNumeros: TListBox
    Left = 394
    Top = 89
    Width = 169
    Height = 193
    ItemHeight = 13
    TabOrder = 9
  end
  object listaPesos: TListBox
    Left = 580
    Top = 89
    Width = 121
    Height = 142
    ItemHeight = 13
    TabOrder = 10
  end
end
