inherited ModificaMarginiForm: TModificaMarginiForm
  Left = 90
  Top = 282
  Caption = 'ModificaMarginiForm'
  ExplicitWidth = 714
  ExplicitHeight = 685
  PixelsPerInch = 96
  TextHeight = 13
  inherited ClientArea: TScrollBox
    inherited PanelGruppo1: TPanel [0]
      inherited TitoloGruppo1: TRichEdit
        Height = 27
        Lines.Strings = (
          'Quale dato desideri aumentare?')
        ExplicitHeight = 27
      end
      inherited Panel7: TPanel
        ParentBackground = False
      end
      object RBMargini: TRadioButton
        Left = 128
        Top = 43
        Width = 273
        Height = 17
        Caption = 'Margini di guadagno articoli'
        Checked = True
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
    end
    object PanelGruppo3: TPanel [1]
      Left = 0
      Top = 273
      Width = 686
      Height = 109
      Color = 14737632
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 2
      object LabelGruppo3: TLabel
        Left = 1
        Top = 1
        Width = 69
        Height = 107
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = '3'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -96
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object Label1: TLabel
        Left = 215
        Top = 50
        Width = 44
        Height = 12
        Caption = 'Listino 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 303
        Top = 50
        Width = 44
        Height = 12
        Caption = 'Listino 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 391
        Top = 50
        Width = 44
        Height = 12
        Caption = 'Listino 3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 479
        Top = 50
        Width = 44
        Height = 12
        Caption = 'Listino 4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 259
        Top = 74
        Width = 12
        Height = 16
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 347
        Top = 74
        Width = 12
        Height = 16
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 435
        Top = 74
        Width = 12
        Height = 16
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 523
        Top = 74
        Width = 12
        Height = 16
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TitoloGruppo3: TRichEdit
        Tag = -1
        Left = 83
        Top = 6
        Width = 575
        Height = 43
        TabStop = False
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          
            'Quali ricarichi si desiderano applicare per ottenere i 4 listini' +
            ' di '
          'vendita?')
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 607
        Top = 85
        Width = 72
        Height = 20
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object AvantiGruppo3: TSpeedButton
          Left = 1
          Top = 2
          Width = 68
          Height = 15
          Cursor = crHandPoint
          Caption = 'Avanti >'
          Flat = True
          OnClick = AvantiGruppo1Click
        end
      end
      object Ricarico1: TEdit
        Tag = -1
        Left = 217
        Top = 72
        Width = 25
        Height = 22
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '0'
      end
      object Panel1: TPanel
        Left = 241
        Top = 70
        Width = 16
        Height = 27
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clSilver
        ParentBackground = False
        TabOrder = 3
      end
      object UpDown2: TUpDown
        Left = 242
        Top = 72
        Width = 14
        Height = 24
        Cursor = crHandPoint
        Associate = Ricarico1
        Constraints.MaxHeight = 24
        Constraints.MaxWidth = 14
        Constraints.MinHeight = 24
        Constraints.MinWidth = 14
        TabOrder = 4
      end
      object Ricarico2: TEdit
        Tag = -1
        Left = 305
        Top = 72
        Width = 25
        Height = 22
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '0'
      end
      object Panel11: TPanel
        Left = 329
        Top = 70
        Width = 16
        Height = 27
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clSilver
        ParentBackground = False
        TabOrder = 6
      end
      object UpDown3: TUpDown
        Left = 330
        Top = 72
        Width = 14
        Height = 24
        Cursor = crHandPoint
        Associate = Ricarico2
        Constraints.MaxHeight = 24
        Constraints.MaxWidth = 14
        Constraints.MinHeight = 24
        Constraints.MinWidth = 14
        TabOrder = 7
      end
      object Ricarico3: TEdit
        Tag = -1
        Left = 393
        Top = 72
        Width = 25
        Height = 22
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = '0'
      end
      object Panel12: TPanel
        Left = 417
        Top = 70
        Width = 16
        Height = 27
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clSilver
        ParentBackground = False
        TabOrder = 9
      end
      object UpDown4: TUpDown
        Left = 418
        Top = 72
        Width = 14
        Height = 24
        Cursor = crHandPoint
        Associate = Ricarico3
        Constraints.MaxHeight = 24
        Constraints.MaxWidth = 14
        Constraints.MinHeight = 24
        Constraints.MinWidth = 14
        TabOrder = 10
      end
      object Ricarico4: TEdit
        Tag = -1
        Left = 481
        Top = 72
        Width = 25
        Height = 22
        AutoSize = False
        Color = clWhite
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Text = '0'
      end
      object Panel17: TPanel
        Left = 505
        Top = 70
        Width = 16
        Height = 27
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clSilver
        ParentBackground = False
        TabOrder = 12
      end
      object UpDown5: TUpDown
        Left = 506
        Top = 72
        Width = 14
        Height = 24
        Cursor = crHandPoint
        Associate = Ricarico4
        Constraints.MaxHeight = 24
        Constraints.MaxWidth = 14
        Constraints.MinHeight = 24
        Constraints.MinWidth = 14
        TabOrder = 13
      end
    end
    object PanelGruppo4: TPanel [2]
      Left = 0
      Top = 392
      Width = 686
      Height = 109
      Color = 14737632
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 3
      object LabelGruppo4: TLabel
        Left = 1
        Top = 1
        Width = 69
        Height = 107
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = '4'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -96
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = 8
        ExplicitTop = 6
      end
      object TitoloGruppo4: TRichEdit
        Tag = -1
        Left = 83
        Top = 6
        Width = 575
        Height = 99
        TabStop = False
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          
            'Ora il programma avvier'#224' la procedura di modifica cumulativa dei' +
            ' '
          'margini di guadagno degli articoli. '
          ''
          'Cliccare su "Avvia" per continuare.')
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 617
        Top = 85
        Width = 62
        Height = 20
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Avvia: TSpeedButton
          Left = 1
          Top = 2
          Width = 58
          Height = 15
          Cursor = crHandPoint
          Caption = 'Avvia'
          Flat = True
          OnClick = AvviaClick
        end
      end
    end
    object PanelGruppo2: TPanel [3]
      Tag = -1
      Left = 0
      Top = 125
      Width = 686
      Height = 139
      Color = 14737632
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 4
      object LabelGruppo2: TLabel
        Left = 1
        Top = 1
        Width = 69
        Height = 137
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = '2'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -96
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object Label10: TLabel
        Left = 128
        Top = 72
        Width = 31
        Height = 12
        Caption = 'Marca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object TitoloGruppo2: TRichEdit
        Tag = -1
        Left = 83
        Top = 6
        Width = 494
        Height = 27
        TabStop = False
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'Solo per gli articoli che hanno le seguenti caratteristiche...')
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Panel5: TPanel
        Left = 607
        Top = 115
        Width = 72
        Height = 20
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clSilver
        ParentBackground = False
        TabOrder = 2
        object AvantiGruppo2: TSpeedButton
          Left = 1
          Top = 2
          Width = 68
          Height = 15
          Cursor = crHandPoint
          Caption = 'Avanti >'
          Flat = True
          OnClick = AvantiGruppo1Click
        end
      end
      object Panel6: TPanel
        Left = 374
        Top = 31
        Width = 189
        Height = 102
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = 14737632
        ParentBackground = False
        TabOrder = 1
        object Label24: TLabel
          Left = 0
          Top = 42
          Width = 187
          Height = 15
          AutoSize = False
          Caption = ' 3'
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label23: TLabel
          Left = 0
          Top = 28
          Width = 187
          Height = 15
          AutoSize = False
          Caption = ' 2'
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label22: TLabel
          Left = 0
          Top = 14
          Width = 187
          Height = 15
          AutoSize = False
          Caption = ' 1'
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object BitBtnGruppo1: TSpeedButtonRollOver
          Left = 36
          Top = 16
          Width = 14
          Height = 13
          Cursor = crHandPoint
          Glyph.Data = {
            6E020000424D6E020000000000007600000028000000460000000E0000000100
            040000000000F801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF888888FF
            FFFFFF888888FFFFFFFF888888FFFFFFF88888888FFFFFF88888888FFF00FF88
            88888888FFFFF88FFF888FFFFF8888FF8888FFFF8887777888FFFF8887777888
            FF00F888FFFFFF888FFF8FFFFFFFF8FFF888FFFFFF888FF888888888888FF888
            888888888F00F88FFFFFFFF88FF8FFFFFFFFFF8FF88FFFFFFFF88F8888888888
            8888888888888888880088FFFFFFFFFF8888FFFFFFFFFF88888FFFFFFFF88888
            888888888888888888888888880088F99F99F99F888FFFFFFFFFFFF888899899
            8998888889989989988888899899899888008FF99F99F99FF88FFFFFFFFFFFF8
            888998998998888889989989988888899899899888008FFFFFFFFFFFF88FFFFF
            FFFFFFF88888888888888888888888888888888888888888880088FFFFFFFFFF
            888FFFFFFFFFFFF88888888888888888FFFFFFFFFF8888FFFFFFFFFF880088FF
            FFFFFFFF8888FFFFFFFFFF888888888888888888FFFFFFFFFF8888FFFFFFFFFF
            8800F8FFFFFFFFF88FF8FFFFFFFFFF8F88888888888888F88FFFFFFFF88FF88F
            FFFFFFF88F00F88FFFFFFFF88FFF8FFFFFFFF8FFF888888888888FF88FFFFFFF
            F88FF88FFFFFFFF88F00FF888FFF8888FFFFF88FFFF88FFFFF8888888888FFFF
            888FFF8888FFFF888FFF8888FF00FFFF888888FFFFFFFFF8888FFFFFFFF88888
            888FFFFFFF888888FFFFFFFF888888FFFF00}
          OnClick = BitBtnGruppo1Click
        end
        object BitBtnGruppo2: TSpeedButtonRollOver
          Left = 36
          Top = 30
          Width = 14
          Height = 15
          Cursor = crHandPoint
          Enabled = False
          Glyph.Data = {
            6E020000424D6E020000000000007600000028000000460000000E0000000100
            040000000000F801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF888888FF
            FFFFFF888888FFFFFFFF888888FFFFFFF88888888FFFFFF88888888FFF00FF88
            88888888FFFFF88FFF888FFFFF8888FF8888FFFF8887777888FFFF8887777888
            FF00F888FFFFFF888FFF8FFFFFFFF8FFF888FFFFFF888FF888888888888FF888
            888888888F00F88FFFFFFFF88FF8FFFFFFFFFF8FF88FFFFFFFF88F8888888888
            8888888888888888880088FFFFFFFFFF8888FFFFFFFFFF88888FFFFFFFF88888
            888888888888888888888888880088F99F99F99F888FFFFFFFFFFFF888899899
            8998888889989989988888899899899888008FF99F99F99FF88FFFFFFFFFFFF8
            888998998998888889989989988888899899899888008FFFFFFFFFFFF88FFFFF
            FFFFFFF88888888888888888888888888888888888888888880088FFFFFFFFFF
            888FFFFFFFFFFFF88888888888888888FFFFFFFFFF8888FFFFFFFFFF880088FF
            FFFFFFFF8888FFFFFFFFFF888888888888888888FFFFFFFFFF8888FFFFFFFFFF
            8800F8FFFFFFFFF88FF8FFFFFFFFFF8F88888888888888F88FFFFFFFF88FF88F
            FFFFFFF88F00F88FFFFFFFF88FFF8FFFFFFFF8FFF888888888888FF88FFFFFFF
            F88FF88FFFFFFFF88F00FF888FFF8888FFFFF88FFFF88FFFFF8888888888FFFF
            888FFF8888FFFF888FFF8888FF00FFFF888888FFFFFFFFF8888FFFFFFFF88888
            888FFFFFFF888888FFFFFFFF888888FFFF00}
          OnClick = BitBtnGruppo2Click
        end
        object BitBtnGruppo3: TSpeedButtonRollOver
          Left = 36
          Top = 44
          Width = 14
          Height = 13
          Cursor = crHandPoint
          Enabled = False
          Glyph.Data = {
            6E020000424D6E020000000000007600000028000000460000000E0000000100
            040000000000F801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF888888FF
            FFFFFF888888FFFFFFFF888888FFFFFFF88888888FFFFFF88888888FFF00FF88
            88888888FFFFF88FFF888FFFFF8888FF8888FFFF8887777888FFFF8887777888
            FF00F888FFFFFF888FFF8FFFFFFFF8FFF888FFFFFF888FF888888888888FF888
            888888888F00F88FFFFFFFF88FF8FFFFFFFFFF8FF88FFFFFFFF88F8888888888
            8888888888888888880088FFFFFFFFFF8888FFFFFFFFFF88888FFFFFFFF88888
            888888888888888888888888880088F99F99F99F888FFFFFFFFFFFF888899899
            8998888889989989988888899899899888008FF99F99F99FF88FFFFFFFFFFFF8
            888998998998888889989989988888899899899888008FFFFFFFFFFFF88FFFFF
            FFFFFFF88888888888888888888888888888888888888888880088FFFFFFFFFF
            888FFFFFFFFFFFF88888888888888888FFFFFFFFFF8888FFFFFFFFFF880088FF
            FFFFFFFF8888FFFFFFFFFF888888888888888888FFFFFFFFFF8888FFFFFFFFFF
            8800F8FFFFFFFFF88FF8FFFFFFFFFF8F88888888888888F88FFFFFFFF88FF88F
            FFFFFFF88F00F88FFFFFFFF88FFF8FFFFFFFF8FFF888888888888FF88FFFFFFF
            F88FF88FFFFFFFF88F00FF888FFF8888FFFFF88FFFF88FFFFF8888888888FFFF
            888FFF8888FFFF888FFF8888FF00FFFF888888FFFFFFFFF8888FFFFFFFF88888
            888FFFFFFF888888FFFFFFFF888888FFFF00}
          OnClick = BitBtnGruppo3Click
        end
        object Label59: TLabel
          Left = 0
          Top = 70
          Width = 187
          Height = 16
          AutoSize = False
          Caption = ' 5'
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label60: TLabel
          Left = 0
          Top = 84
          Width = 187
          Height = 16
          AutoSize = False
          Caption = ' 6'
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label61: TLabel
          Left = 0
          Top = 56
          Width = 187
          Height = 15
          AutoSize = False
          Caption = ' 4'
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object BitBtnGruppo4: TSpeedButtonRollOver
          Left = 36
          Top = 58
          Width = 14
          Height = 13
          Cursor = crHandPoint
          Enabled = False
          Glyph.Data = {
            6E020000424D6E020000000000007600000028000000460000000E0000000100
            040000000000F801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF888888FF
            FFFFFF888888FFFFFFFF888888FFFFFFF88888888FFFFFF88888888FFF00FF88
            88888888FFFFF88FFF888FFFFF8888FF8888FFFF8887777888FFFF8887777888
            FF00F888FFFFFF888FFF8FFFFFFFF8FFF888FFFFFF888FF888888888888FF888
            888888888F00F88FFFFFFFF88FF8FFFFFFFFFF8FF88FFFFFFFF88F8888888888
            8888888888888888880088FFFFFFFFFF8888FFFFFFFFFF88888FFFFFFFF88888
            888888888888888888888888880088F99F99F99F888FFFFFFFFFFFF888899899
            8998888889989989988888899899899888008FF99F99F99FF88FFFFFFFFFFFF8
            888998998998888889989989988888899899899888008FFFFFFFFFFFF88FFFFF
            FFFFFFF88888888888888888888888888888888888888888880088FFFFFFFFFF
            888FFFFFFFFFFFF88888888888888888FFFFFFFFFF8888FFFFFFFFFF880088FF
            FFFFFFFF8888FFFFFFFFFF888888888888888888FFFFFFFFFF8888FFFFFFFFFF
            8800F8FFFFFFFFF88FF8FFFFFFFFFF8F88888888888888F88FFFFFFFF88FF88F
            FFFFFFF88F00F88FFFFFFFF88FFF8FFFFFFFF8FFF888888888888FF88FFFFFFF
            F88FF88FFFFFFFF88F00FF888FFF8888FFFFF88FFFF88FFFFF8888888888FFFF
            888FFF8888FFFF888FFF8888FF00FFFF888888FFFFFFFFF8888FFFFFFFF88888
            888FFFFFFF888888FFFFFFFF888888FFFF00}
          OnClick = BitBtnGruppo4Click
        end
        object BitBtnGruppo5: TSpeedButtonRollOver
          Left = 36
          Top = 72
          Width = 13
          Height = 15
          Cursor = crHandPoint
          Enabled = False
          Glyph.Data = {
            6E020000424D6E020000000000007600000028000000460000000E0000000100
            040000000000F801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF888888FF
            FFFFFF888888FFFFFFFF888888FFFFFFF88888888FFFFFF88888888FFF00FF88
            88888888FFFFF88FFF888FFFFF8888FF8888FFFF8887777888FFFF8887777888
            FF00F888FFFFFF888FFF8FFFFFFFF8FFF888FFFFFF888FF888888888888FF888
            888888888F00F88FFFFFFFF88FF8FFFFFFFFFF8FF88FFFFFFFF88F8888888888
            8888888888888888880088FFFFFFFFFF8888FFFFFFFFFF88888FFFFFFFF88888
            888888888888888888888888880088F99F99F99F888FFFFFFFFFFFF888899899
            8998888889989989988888899899899888008FF99F99F99FF88FFFFFFFFFFFF8
            888998998998888889989989988888899899899888008FFFFFFFFFFFF88FFFFF
            FFFFFFF88888888888888888888888888888888888888888880088FFFFFFFFFF
            888FFFFFFFFFFFF88888888888888888FFFFFFFFFF8888FFFFFFFFFF880088FF
            FFFFFFFF8888FFFFFFFFFF888888888888888888FFFFFFFFFF8888FFFFFFFFFF
            8800F8FFFFFFFFF88FF8FFFFFFFFFF8F88888888888888F88FFFFFFFF88FF88F
            FFFFFFF88F00F88FFFFFFFF88FFF8FFFFFFFF8FFF888888888888FF88FFFFFFF
            F88FF88FFFFFFFF88F00FF888FFF8888FFFFF88FFFF88FFFFF8888888888FFFF
            888FFF8888FFFF888FFF8888FF00FFFF888888FFFFFFFFF8888FFFFFFFF88888
            888FFFFFFF888888FFFFFFFF888888FFFF00}
          OnClick = BitBtnGruppo5Click
        end
        object BitBtnGruppo6: TSpeedButtonRollOver
          Left = 36
          Top = 86
          Width = 14
          Height = 13
          Cursor = crHandPoint
          Enabled = False
          Glyph.Data = {
            6E020000424D6E020000000000007600000028000000460000000E0000000100
            040000000000F801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF888888FF
            FFFFFF888888FFFFFFFF888888FFFFFFF88888888FFFFFF88888888FFF00FF88
            88888888FFFFF88FFF888FFFFF8888FF8888FFFF8887777888FFFF8887777888
            FF00F888FFFFFF888FFF8FFFFFFFF8FFF888FFFFFF888FF888888888888FF888
            888888888F00F88FFFFFFFF88FF8FFFFFFFFFF8FF88FFFFFFFF88F8888888888
            8888888888888888880088FFFFFFFFFF8888FFFFFFFFFF88888FFFFFFFF88888
            888888888888888888888888880088F99F99F99F888FFFFFFFFFFFF888899899
            8998888889989989988888899899899888008FF99F99F99FF88FFFFFFFFFFFF8
            888998998998888889989989988888899899899888008FFFFFFFFFFFF88FFFFF
            FFFFFFF88888888888888888888888888888888888888888880088FFFFFFFFFF
            888FFFFFFFFFFFF88888888888888888FFFFFFFFFF8888FFFFFFFFFF880088FF
            FFFFFFFF8888FFFFFFFFFF888888888888888888FFFFFFFFFF8888FFFFFFFFFF
            8800F8FFFFFFFFF88FF8FFFFFFFFFF8F88888888888888F88FFFFFFFF88FF88F
            FFFFFFF88F00F88FFFFFFFF88FFF8FFFFFFFF8FFF888888888888FF88FFFFFFF
            F88FF88FFFFFFFF88F00FF888FFF8888FFFFF88FFFF88FFFFF8888888888FFFF
            888FFF8888FFFF888FFF8888FF00FFFF888888FFFFFFFFF8888FFFFFFFF88888
            888FFFFFFF888888FFFFFFFF888888FFFF00}
          OnClick = BitBtnGruppo6Click
        end
        object DescGruppo1: TEdit
          Tag = -1
          Left = 55
          Top = 15
          Width = 131
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 16250871
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
        end
        object DescGruppo2: TEdit
          Tag = -1
          Left = 55
          Top = 29
          Width = 131
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
        end
        object DescGruppo3: TEdit
          Tag = -1
          Left = 55
          Top = 43
          Width = 131
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
        end
        object GruppiTitolo: TStaticText
          Left = 0
          Top = 0
          Width = 187
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Gruppi'
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object CodiceGruppo1: TEdit
          Tag = -1
          Left = 11
          Top = 15
          Width = 22
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          AutoSize = False
          BorderStyle = bsNone
          Color = 16250871
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
          OnChange = CodiceGruppo1Change
        end
        object CodiceGruppo2: TEdit
          Tag = -1
          Left = 11
          Top = 29
          Width = 22
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
          OnChange = CodiceGruppo2Change
        end
        object CodiceGruppo3: TEdit
          Tag = -1
          Left = 11
          Top = 43
          Width = 22
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 6
          OnChange = CodiceGruppo3Change
        end
        object DescGruppo4: TEdit
          Tag = -1
          Left = 55
          Top = 57
          Width = 131
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 7
        end
        object DescGruppo5: TEdit
          Tag = -1
          Left = 55
          Top = 71
          Width = 131
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 8
        end
        object DescGruppo6: TEdit
          Tag = -1
          Left = 55
          Top = 85
          Width = 131
          Height = 14
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 9
        end
        object CodiceGruppo4: TEdit
          Tag = -1
          Left = 11
          Top = 57
          Width = 22
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 10
          OnChange = CodiceGruppo4Change
        end
        object CodiceGruppo5: TEdit
          Tag = -1
          Left = 11
          Top = 71
          Width = 22
          Height = 13
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 11
          OnChange = CodiceGruppo5Change
        end
        object CodiceGruppo6: TEdit
          Tag = -1
          Left = 11
          Top = 85
          Width = 22
          Height = 14
          Hint = 
            'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
            'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = 14408667
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 12
        end
      end
      object Marca: TcxComboBox
        Tag = -1
        Left = 165
        Top = 67
        Cursor = crHandPoint
        ParentFont = False
        Properties.ImmediateDropDownWhenKeyPressed = False
        Properties.OnInitPopup = MarcaPropertiesInitPopup
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.PopupBorderStyle = epbsSingle
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 196
      end
    end
    inherited PanelSicurezza: TPanel [4]
      Top = 511
      ExplicitTop = 511
      inherited Panel13: TPanel
        ParentBackground = False
      end
      inherited Panel14: TPanel
        ParentBackground = False
      end
    end
  end
end
