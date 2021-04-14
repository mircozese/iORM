inherited TabComunicazioniForm: TTabComunicazioniForm
  Left = 565
  Top = 167
  Caption = 'TabComunicazioniForm'
  ClientHeight = 683
  ClientWidth = 773
  Color = clWhite
  TransparentColor = True
  OldCreateOrder = True
  ShowHint = True
  OnCreate = FormCreate
  ExplicitWidth = 773
  ExplicitHeight = 683
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TcxPageControl
    Left = 0
    Top = 0
    Width = 729
    Height = 621
    Cursor = crHandPoint
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = TabComAuto
    Properties.CustomButtons.Buttons = <>
    Properties.NavigatorPosition = npLeftBottom
    Properties.Style = 9
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    OnChange = PageControlChange
    ClientRectBottom = 621
    ClientRectRight = 729
    ClientRectTop = 21
    object TabElenco: TcxTabSheet
      Caption = '   Comunicazioni inviate   '
      ImageIndex = 0
      object PanelAssistenze: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 600
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          729
          600)
        object GridCom: TcxGrid
          Left = 0
          Top = 90
          Width = 729
          Height = 366
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = cxcbsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          LevelTabs.Style = 10
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          RootLevelOptions.DetailFrameColor = clBlack
          RootLevelOptions.DetailFrameWidth = 1
          object btvCom: TcxGridDBBandedTableView
            OnDblClick = btvComDblClick
            OnKeyUp = btvComKeyUp
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = btvComCustomDrawCell
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataSource = SourceCom
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.KeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skCount
                Position = spFooter
                FieldName = 'MSG_AMEZZO'
                Column = btvComMSG_TYPE
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'MSG_AMEZZO'
                Column = btvComMSG_TYPE
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = btvComDataControllerSummaryAfterSummary
            DataController.OnDetailCollapsed = btvComDataControllerDetailCollapsed
            DataController.OnDetailExpanding = btvComDataControllerDetailExpanding
            DateTimeHandling.Grouping = dtgByMonth
            FilterRow.InfoText = 'Clicca qui per definire un filtro di ricerca'
            FilterRow.SeparatorColor = 16037544
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.CellHints = True
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = 'Nessun dato da visualizzare'
            OptionsView.ColumnAutoWidth = True
            OptionsView.DataRowHeight = 50
            OptionsView.GridLineColor = 13882323
            OptionsView.GridLines = glNone
            OptionsView.GroupRowStyle = grsOffice11
            OptionsView.RowSeparatorColor = clBlack
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorColor = clBlack
            Styles.ContentEven = DM1.PrintContentEven
            Styles.ContentOdd = DM1.PrintContentOdd
            Styles.FilterRowInfoText = DM1.tvContent
            Styles.Footer = DM1.tvContent
            Styles.GroupSummary = DM1.tvContent
            Styles.StyleSheet = DM1.btvGCMaster
            OnCustomDrawGroupCell = btvComCustomDrawGroupCell
            Bands = <
              item
                Caption = 'a mezzo'
                Options.HoldOwnColumnsOnly = True
                Options.Sizing = False
                Styles.Content = DM1.tvDisContent
                Width = 50
              end
              item
                Caption = 'Comunicazione'
                Options.HoldOwnColumnsOnly = True
                Styles.Content = DM1.tvDisContent
                Width = 200
              end
              item
                Caption = 'Ok'
                Options.HoldOwnColumnsOnly = True
                Options.Sizing = False
                Styles.Content = DM1.tvDisContent
                Width = 35
              end
              item
                Caption = 'Riferimenti'
                Options.HoldOwnColumnsOnly = True
                Width = 150
              end
              item
                Caption = 'Soggetto / Pratica'
                Options.HoldOwnColumnsOnly = True
                Width = 120
              end
              item
                Caption = 'Informazioni'
                Options.HoldOwnColumnsOnly = True
                Width = 150
              end
              item
                Caption = 'Altro'
                Options.HoldOwnColumnsOnly = True
                Visible = False
                Width = 500
              end>
            object btvComMSG_TYPE: TcxGridDBBandedColumn
              Caption = 'a mezzo...'
              DataBinding.FieldName = 'MSG_TYPE'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Items.Strings = (
                ''
                'lettera'
                'e-mail'
                'sms')
              OnCustomDrawCell = btvComAutoMSG_AMEZZOCustomDrawCell
              HeaderAlignmentHorz = taCenter
              MinWidth = 50
              Options.FilteringPopup = False
              Options.HorzSizing = False
              Options.VertSizing = False
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.LineCount = 2
              Position.RowIndex = 0
            end
            object btvComMSG_OGGETTO: TcxGridDBBandedColumn
              Caption = 'Oggetto'
              DataBinding.FieldName = 'MSG_OGGETTO'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              Width = 250
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComCOMPUTED_INDIRIZZOFULL: TcxGridDBBandedColumn
              Caption = 'Destinazione'
              DataBinding.FieldName = 'COMPUTED_INDIRIZZOFULL'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 1
            end
            object btvComCOMPUTED_ALERT: TcxGridDBBandedColumn
              Caption = 'Ok'
              DataBinding.FieldName = 'COMPUTED_ALERT'
              PropertiesClassName = 'TcxTextEditProperties'
              OnCustomDrawCell = btvComAutoCOMPUTED_MANCAINDIRIZZOCustomDrawCell
              HeaderAlignmentHorz = taCenter
              MinWidth = 35
              Options.FilteringPopup = False
              Options.HorzSizing = False
              Width = 35
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.LineCount = 2
              Position.RowIndex = 0
            end
            object btvComRIF_RIFERIMENTO: TcxGridDBBandedColumn
              Caption = 'Riferimenti'
              DataBinding.FieldName = 'RIF_RIFERIMENTO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              OnGetDisplayText = btvComRIF_RIFERIMENTOGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              Width = 250
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComDATAULTMOD_CREAZIONE: TcxGridDBBandedColumn
              Caption = 'Data e ora creazione msg.'
              DataBinding.FieldName = 'DATAULTMOD_CREAZIONE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              OnGetDisplayText = btvComDATAULTMOD_CREAZIONEGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              SortIndex = 0
              SortOrder = soDescending
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 1
            end
            object btvComRIF_SOGGETTO_FULL: TcxGridDBBandedColumn
              Caption = 'Soggetto'
              DataBinding.FieldName = 'RIF_SOGGETTO_FULL'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComRIF_PRATICA_FULL: TcxGridDBBandedColumn
              Caption = 'Pratica'
              DataBinding.FieldName = 'RIF_PRATICA_FULL'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 1
            end
            object btvComCOMPUTED_NUMEROINVIIFULL: TcxGridDBBandedColumn
              Caption = 'Numero di invii'
              DataBinding.FieldName = 'COMPUTER_NUMEROINVIIFULL'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              OnGetDisplayText = btvComCOMPUTED_NUMEROINVIIFULLGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComPRIMOINVIO_DATAORA: TcxGridDBBandedColumn
              Caption = 'Data e ora invii'
              DataBinding.FieldName = 'PRIMOINVIO_DATAORA'
              PropertiesClassName = 'TcxTextEditProperties'
              OnGetDisplayText = btvComPRIMOINVIO_DATAORAGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 1
            end
            object btvComID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComDATAULTMOD_GENERALE: TcxGridDBBandedColumn
              Caption = 'Ultima modifica il'
              DataBinding.FieldName = 'DATAULTMOD_GENERALE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object btvComULTIMOINVIO_DATAORA: TcxGridDBBandedColumn
              Caption = 'Ultimo invio'
              DataBinding.FieldName = 'ULTIMOINVIO_DATAORA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object btvComRIF_ID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RIF_ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvComRIF_TIPO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RIF_TIPO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvComID_SOURCE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID_SOURCE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object btvComID_SOGGETTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID_SOGGETTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object btvComDEST_RAGSOC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEST_RAGSOC'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object btvComDEST_INDIRIZZO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEST_INDIRIZZO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object btvComDEST_NUMCIVICO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEST_NUMCIVICO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object btvComDEST_COMUNE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEST_COMUNE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object btvComDEST_PROVINCIA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEST_PROVINCIA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object btvComDEST_CAP: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEST_CAP'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object btvComDEST_EMAIL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEST_EMAIL'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object btvComDEST_CELLULARE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEST_CELLULARE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object btvComID_PRATICA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID_PRATICA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object btvComPRATICA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRATICA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object btvComDATAPRATICA1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DATAPRATICA1'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object btvComDATA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DATA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object btvComNUMEROINVII: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NUMEROINVII'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object btvComCOMPUTED_MANCAINDIRIZZO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COMPUTED_MANCAINDIRIZZO'
              Visible = False
              Options.FilteringPopup = False
              VisibleForCustomization = False
              Position.BandIndex = 6
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
          end
          object btvSto: TcxGridDBBandedTableView
            OnDblClick = btvComDblClick
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.OnDetailFirst = btvStoDataControllerDataModeControllerDetailFirst
            DataController.DataSource = SourceSto
            DataController.DetailKeyFieldNames = 'ID_MSG'
            DataController.KeyFieldNames = 'ID'
            DataController.MasterKeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DateTimeHandling.Grouping = dtgByMonth
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnSorting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.FocusRect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLineColor = 11731033
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OptionsView.RowSeparatorColor = 11731033
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorColor = 11731033
            Styles.Background = DM1.tvArtDetail_Background
            Styles.Content = DM1.tvArtDetail_Content
            Styles.Footer = DM1.tvArtDetail_Footer
            Styles.Header = DM1.tvArtDetail_Header
            Styles.Selection = DM1.tvArtDetail_Selection
            Styles.BandHeader = DM1.tvArtDetail_Header
            Bands = <
              item
              end>
            object btvStoDATAORAINVIO: TcxGridDBBandedColumn
              Caption = 'Quando'
              DataBinding.FieldName = 'DATAORAINVIO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              OnGetDisplayText = btvStoDATAORAINVIOGetDisplayText
              HeaderAlignmentHorz = taCenter
              SortIndex = 0
              SortOrder = soDescending
              Styles.Content = DM1.tvArtDetail_ContentHighlight
              Styles.Header = DM1.tvArtDetail_ContentHighlight
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvStoDESTINAZIONE: TcxGridDBBandedColumn
              Caption = 'Destinazione'
              DataBinding.FieldName = 'DESTINAZIONE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvStoOPERATORE: TcxGridDBBandedColumn
              Caption = 'Operatore'
              DataBinding.FieldName = 'OPERATORE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvStoID_MSG: TcxGridDBBandedColumn
              Caption = 'ID msg.'
              DataBinding.FieldName = 'ID_MSG'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 45
              Options.HorzSizing = False
              Styles.Content = DM1.tvArtDetail_ContentHighlight
              Styles.Header = DM1.tvArtDetail_ContentHighlight
              Width = 45
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object btvStoID: TcxGridDBBandedColumn
              Caption = 'ID invio'
              DataBinding.FieldName = 'ID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 45
              Options.HorzSizing = False
              Styles.Content = DM1.tvArtDetail_ContentHighlight
              Styles.Header = DM1.tvArtDetail_ContentHighlight
              Width = 45
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object lvCom: TcxGridLevel
            GridView = btvCom
            Options.DetailFrameColor = 11731033
            Options.DetailFrameWidth = 2
            Styles.Tab = DM1.tvArtDetail_Content
            Styles.TabsBackground = DM1.tvArtDetail_GroupByBox
            object lvSto: TcxGridLevel
              GridView = btvSto
              Options.TabsForEmptyDetails = False
            end
          end
        end
        object PanelFiltri: TPanel
          Left = 0
          Top = 456
          Width = 729
          Height = 144
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          OnResize = PanelSelezioneColonneResize
          object SubPanelFiltri: TPanel
            Left = 0
            Top = 0
            Width = 686
            Height = 144
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            object SBFilterOpenClose: TSpeedButtonRollOver
              Left = 1
              Top = 3
              Width = 19
              Height = 27
              Cursor = crHandPoint
              OnClick = SBFilterOpenCloseClick
            end
            object LabelComCount: TLabel
              Left = 364
              Top = 11
              Width = 21
              Height = 12
              Caption = '- - -'
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label47: TLabel
              Left = 611
              Top = 49
              Width = 73
              Height = 85
              Alignment = taCenter
              AutoSize = False
              Caption = 'Al'
              Color = 11064319
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label48: TLabel
              Left = 537
              Top = 49
              Width = 74
              Height = 85
              Alignment = taCenter
              AutoSize = False
              Caption = 'Dal'
              Color = 11064319
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object AssOtt: TSpeedButton
              Tag = 10
              Left = 611
              Top = 115
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Ott'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssNov: TSpeedButton
              Tag = 11
              Left = 635
              Top = 115
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Nov'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssDic: TSpeedButton
              Tag = 12
              Left = 659
              Top = 115
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Dic'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssAgo: TSpeedButton
              Tag = 8
              Left = 563
              Top = 115
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Ago'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssLug: TSpeedButton
              Tag = 7
              Left = 539
              Top = 115
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Lug'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssGiu: TSpeedButton
              Tag = 6
              Left = 659
              Top = 98
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Giu'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssMag: TSpeedButton
              Tag = 5
              Left = 635
              Top = 98
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Mag'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssGen: TSpeedButton
              Tag = 1
              Left = 539
              Top = 98
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Gen'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssFeb: TSpeedButton
              Tag = 2
              Left = 563
              Top = 98
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Feb'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssMar: TSpeedButton
              Tag = 3
              Left = 587
              Top = 98
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Mar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssApr: TSpeedButton
              Tag = 4
              Left = 611
              Top = 98
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Apr'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssMesiTutti: TSpeedButton
              Left = 539
              Top = 80
              Width = 65
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              Caption = 'Predefinito'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssMesiTuttiClick
              OnMouseUp = AssMesiTuttiMouseUp
            end
            object AssMesiNessuno: TSpeedButton
              Left = 604
              Top = 80
              Width = 55
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare i documenti'#13#10'senza alcun filtro di m' +
                'ese o anno.'#13#10'(Visualizza i documenti di tutti i mesi'#13#10'di tutti g' +
                'li anni).'
              Caption = 'Nessuno'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssMesiNessunoClick
              OnMouseUp = AssMesiNessunoMouseUp
            end
            object AssSet: TSpeedButton
              Tag = 9
              Left = 587
              Top = 115
              Width = 24
              Height = 17
              Cursor = crHandPoint
              Hint = 'Clicca qu'#39' per visualizzare solo i'#13#10'documenti del mese indicato.'
              AllowAllUp = True
              GroupIndex = 600
              Caption = 'Set'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssGenClick
              OnMouseUp = AssGenMouseUp
            end
            object AssSaveDateFilter: TSpeedButton
              Left = 662
              Top = 80
              Width = 21
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare i documenti'#13#10'senza alcun filtro di m' +
                'ese o anno.'#13#10'(Visualizza i documenti di tutti i mesi'#13#10'di tutti g' +
                'li anni).'
              Caption = 'M+'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = AssSaveDateFilterClick
            end
            object StaticText75: TStaticText
              Left = 30
              Top = 10
              Width = 330
              Height = 16
              AutoSize = False
              Caption = ' Trova'
              Color = 28895
              Font.Charset = ANSI_CHARSET
              Font.Color = 12902911
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 4
              Transparent = False
            end
            object FilterTrova: TEdit
              Left = 66
              Top = 11
              Width = 293
              Height = 14
              Hint = 
                'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
                'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
              AutoSize = False
              BorderStyle = bsNone
              Color = 15266815
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyPress = FilterTrovaKeyPress
            end
            object StaticText23: TStaticText
              Left = 537
              Top = 31
              Width = 147
              Height = 18
              AutoSize = False
              Color = 11064319
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 5
              Transparent = False
            end
            object FilterTipoData: TcxComboBox
              Left = 538
              Top = 32
              AutoSize = False
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.ImmediateDropDownWhenKeyPressed = False
              Properties.Items.Strings = (
                'Creazione'
                'Invio'
                'Ultima modifica')
              Properties.Sorted = True
              Style.BorderStyle = ebsNone
              Style.Color = 15266815
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -9
              Style.Font.Name = 'Verdana'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.StyleController = DMStyles.cxEditStyleController_Filters
              Style.TextColor = clBlack
              Style.PopupBorderStyle = epbsSingle
              Style.IsFontAssigned = True
              TabOrder = 3
              Text = 'Creazione'
              OnKeyPress = FilterTrovaKeyPress
              Height = 18
              Width = 145
            end
            object StaticText20: TStaticText
              Left = 0
              Top = 57
              Width = 67
              Height = 44
              Alignment = taCenter
              AutoSize = False
              Color = 11064319
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 6
              Transparent = False
            end
            object FilterTipo: TCheckListBox
              Left = 1
              Top = 58
              Width = 65
              Height = 42
              Cursor = crHandPoint
              OnClickCheck = FilterTipoClickCheck
              BorderStyle = bsNone
              Color = 15266815
              Columns = 1
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ItemHeight = 14
              Items.Strings = (
                'Lettere'
                'E-mail'
                'Sms')
              ParentCtl3D = False
              ParentFont = False
              Style = lbOwnerDrawFixed
              TabOrder = 2
              OnExit = FilterTipoExit
              OnMouseUp = FilterTipoMouseUp
            end
            object StaticText36: TStaticText
              Left = 1
              Top = 35
              Width = 359
              Height = 16
              AutoSize = False
              BevelInner = bvNone
              Caption = ' Oggetto'
              Color = 11064319
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 7
              Transparent = False
            end
            object FilterOggetto: TEdit
              Left = 51
              Top = 36
              Width = 308
              Height = 14
              Hint = 
                'Inserisci qu'#236' una o pi'#249' parole da ricercare'#13#10'nei documenti (cerc' +
                'a nei campi: Oggetto,'#13#10'Argomento, Provenienza, Note).'
              AutoSize = False
              BorderStyle = bsNone
              Color = 15266815
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyPress = FilterTrovaKeyPress
            end
            object AssDal: TcxDateEdit
              Left = 538
              Top = 62
              RepositoryItem = DM1.EdPropFilterDateEdit
              AutoSize = False
              ParentFont = False
              Style.StyleController = DMStyles.cxEditStyleController_Filters_Date
              TabOrder = 8
              Height = 18
              Width = 72
            end
            object AssAl: TcxDateEdit
              Left = 611
              Top = 62
              RepositoryItem = DM1.EdPropFilterDateEdit
              AutoSize = False
              ParentFont = False
              Style.StyleController = DMStyles.cxEditStyleController_Filters_Date
              TabOrder = 9
              Height = 18
              Width = 72
            end
          end
        end
        object Panel18: TPanel
          Left = 642
          Top = 61
          Width = 67
          Height = 21
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          Color = 16037544
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object SpeedButton17: TSpeedButton
            Left = 10
            Top = 10
            Width = 20
            Height = 19
            Cursor = crHandPoint
            Hint = 'Chiude tutte le righe'
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000000000000FFFF0FFFFFFFFFF0FFFF0FFFFFFFFF
              F0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFFF0FFFF0FF000000FF0FFFF0FF000000F
              F0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFF
              F0FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = SpeedButton17Click
          end
          object SpeedButton18: TSpeedButton
            Left = 22
            Top = 1
            Width = 20
            Height = 19
            Cursor = crHandPoint
            Hint = 'Espande tutti le righe'
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000000000000FFFF0FFFFFFFFFF0FFFF0FFFFFFFFF
              F0FFFF0FFFF00FFFF0FFFF0FFFF00FFFF0FFFF0FF000000FF0FFFF0FF000000F
              F0FFFF0FFFF00FFFF0FFFF0FFFF00FFFF0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFF
              F0FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = SpeedButton18Click
          end
          object SBFilterRow_Old: TSpeedButton
            Left = 43
            Top = 1
            Width = 20
            Height = 19
            Cursor = crHandPoint
            Hint = 'Attiva/Disattiva la riga dei filtri'
            AllowAllUp = True
            GroupIndex = 100
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFF0FF0FFFFFFFFFFFF0FF0FF
              FFFFFFFFFF0FF0FFFFFFFFFFFF0FF0FFFFFFFFFFFF0000FFFFFFFFFFF08FF80F
              FFFFFFFF08FFFF80FFFFFFF08FFFFFF80FFFFF000000000000FFF0FFFFFFFFFF
              FF0FF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
        object GroupBox1: TGroupBox
          Left = 536
          Top = 32
          Width = 33
          Height = 1
          Caption = 'GroupBox1'
          TabOrder = 2
        end
        object PanelSelezioneColonne: TPanel
          Left = 0
          Top = 0
          Width = 729
          Height = 90
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnResize = PanelSelezioneColonneResize
          object SubPanelSelezioneColonne: TPanel
            Left = 0
            Top = 1
            Width = 684
            Height = 84
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            object Shape5: TShape
              Left = 432
              Top = 5
              Width = 238
              Height = 32
              Cursor = crArrow
              Brush.Color = 11064319
              ParentShowHint = False
              Pen.Color = clWhite
              ShowHint = False
            end
            object Label2: TLabel
              Left = 15
              Top = 38
              Width = 654
              Height = 44
              Alignment = taCenter
              AutoSize = False
              Color = 11064319
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Shape1: TShape
              Left = 17
              Top = 40
              Width = 650
              Height = 40
              Brush.Style = bsClear
              Pen.Color = 28895
            end
            object SbGcVisMem1: TSpeedButton
              Left = 69
              Top = 43
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '1'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMem4: TSpeedButton
              Left = 414
              Top = 43
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '4'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMem2: TSpeedButton
              Left = 184
              Top = 43
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '2'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMem5: TSpeedButton
              Left = 529
              Top = 43
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '5'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMem3: TSpeedButton
              Left = 299
              Top = 43
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '3'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMemAdd: TSpeedButton
              Left = 644
              Top = 43
              Width = 21
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              AllowAllUp = True
              GroupIndex = 11111
              Caption = '+'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMemAddClick
            end
            object Label3: TLabel
              Left = 17
              Top = 41
              Width = 50
              Height = 39
              Alignment = taCenter
              AutoSize = False
              Caption = 'Memorie'
              Color = 28895
              Font.Charset = ANSI_CHARSET
              Font.Color = 12902911
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
            end
            object SbGcVisMem6: TSpeedButton
              Left = 69
              Top = 61
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '6'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMem7: TSpeedButton
              Left = 184
              Top = 61
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '7'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMem8: TSpeedButton
              Left = 299
              Top = 61
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '8'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMem9: TSpeedButton
              Left = 414
              Top = 61
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '9'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMem10: TSpeedButton
              Left = 529
              Top = 61
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '10'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMem1Click
              OnMouseUp = SbGcVisMem1MouseUp
            end
            object SbGcVisMemSetPredef: TSpeedButton
              Left = 644
              Top = 61
              Width = 21
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              AllowAllUp = True
              GroupIndex = 11111
              Caption = 'P'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SbGcVisMemSetPredefClick
            end
            object Label5: TLabel
              Left = 500
              Top = 14
              Width = 165
              Height = 12
              Cursor = crHandPoint
              Hint = 'Clicca per vedere il credito residuo.'
              Caption = 'Credito residuo:                     sms'
              Color = clGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              OnClick = SpeedButton14Click
            end
            object LabelSmsCreditoResiduoCom: TLabel
              Left = 590
              Top = 1
              Width = 50
              Height = 36
              Cursor = crHandPoint
              Hint = 'Clicca per vedere il credito residuo.'
              Alignment = taCenter
              AutoSize = False
              Caption = '- - -'
              Color = clOlive
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              Layout = tlCenter
            end
            object Image2: TImage
              Left = 442
              Top = 0
              Width = 48
              Height = 32
              Cursor = crHandPoint
              Hint = 'Clicca per vedere il credito residuo.'
              AutoSize = True
              ParentShowHint = False
              Picture.Data = {
                07544269746D617036120000424D361200000000000036000000280000003000
                000020000000010018000000000000120000C30E0000C30E0000000000000000
                0000EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEB009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF00
                9CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF
                009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009C
                DF009CDF009CDF009CDF009CDF009CDF009CDF009CDF00DCDFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB009CDF0070DF0070DF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                0070DF0070DF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEB009CDF0070DFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4
                E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF
                C4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1
                FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00DCDFC4E1FF
                C4E1FF00DCDF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF009CDFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DFC4E1FFC4E1FFC4E1FF0070DF
                00DCDFC4E1FFC4E1FFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF00DCDFC4E1FF0070DF0070DF0070DF0070DF0070DFC4E1FFC4E1FF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB00DCDFC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF00DCDFC4E1FF00DCDF00DCDF0070DF
                00DCDF0070DF0070DFC4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEB0070DFC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DFC4E1FFC4E1FFC4E1FFC4E1FF0070DF0070DF0070DF009CDFC4E1FFC4E1FF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB0070DFC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DFC4E1FFC4E1FF009CDF0070DF0070DF
                0070DF009CDFC4E1FFC4E1FFC4E1FF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEB0070DFC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF00DCDFC4E1FF0070DF0070DF0070DF00DCDFC4E1FFC4E1FFC4E1FF009CDF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB009CDF0070DFC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF009CDFC4E1FF00DCDF0070DF0070DF
                0070DF0070DF00DCDFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEB0070DF0070DFC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DFC4E1FFC4E1FF00DCDF0070DF009CDFC4E1FFC4E1FFC4E1FF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB0070DF0070DFC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF009CDFC4E1FFC4E1FFC4E1FF
                C4E1FFC4E1FFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBD7D7D70070DF009CDFC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF00DCDFC4E1FFC4E1FF00DCDF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEB00DCDF0070DF009CDFC4E1
                FFC4E1FF009CDF0070DFC4E1FF009CDF009CDF009CDF009CDF009CDF009CDF00
                9CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF
                009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009C
                DF009CDF009CDF009CDF009CDF009CDFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEB0070DF0070DF00DCDFC4E1FFC4E1FF009CDF0070DFC4E1FFC4E1FF
                C4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1
                FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4
                E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEB0070DF009CDFC4E1FFC4E1
                FFC4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEB0070DF0070DF009CDFC4E1FFC4E1FFC4E1FF009CDF009CDF009CDF
                009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009C
                DF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF00
                9CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF
                009CDF009CDFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB00DCDF0070DF0070DF0070
                DF00DCDFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4
                E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF
                C4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1
                FFC4E1FFC4E1FFC4E1FFC4E1FFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEB00DCDF009CDF009CDF0070DF0070DF0070DF0070DF
                0070DF009CDF00DCDFC4E1FFC4E1FFC4E1FFC4E1FF0070DF0070DF00DCDFC4E1
                FFC4E1FFC4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DFC4E1FF0070DF0070DF00DCDFEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEB00DCDF009CDF0070DF0070DF0070DF0070DF0070DF009CDFC4
                E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF009CDF0070DF0070DF0070DF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DFC4E1FF0070DF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                E3E3E300DCDF009CDF0070DF0070DF0070DF0070DF0070DF009CDFC4E1FFC4E1
                FFC4E1FFC4E1FFC4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF00DCDFC4E1FF0070DF0070DFEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE0E0E000
                DCDF009CDF0070DF0070DF0070DF0070DF009CDFC4E1FFC4E1FFC4E1FFC4E1FF
                C4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DFC4E1
                FF00DCDF0070DF00DCDFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE7E7E700DCDF009C
                DF0070DF0070DF0070DF0070DF009CDFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF00
                9CDF0070DF0070DF0070DF0070DFC4E1FF0070DF0070DFEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB00DCDF009CDF0070DF0070DF
                0070DF0070DF0070DFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF00DCDF00DCDFC4E1
                FF0070DF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB00DCDF009CDF0070DF0070DF0070DF00
                70DF0070DFC4E1FFC4E1FFC4E1FFC4E1FF0070DF009CDFEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEB00DCDF009CDF0070DF0070DF0070DF0070DF0070
                DF0070DF00DCDFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBE2E2E200DCDF009CDF009CDF009CDFEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEB}
              ShowHint = True
              Transparent = True
              OnClick = SpeedButton14Click
            end
            object SpeedButton14: TSpeedButton
              Left = 588
              Top = 8
              Width = 52
              Height = 25
              Cursor = crHandPoint
              Hint = 'Clicca per vedere il credito residuo.'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsItalic]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton14Click
            end
            object Shape6: TShape
              Left = 14
              Top = 5
              Width = 418
              Height = 32
              Brush.Color = 11064319
              Pen.Color = clWhite
            end
          end
        end
        object Panel1: TPanel
          Left = 642
          Top = 98
          Width = 67
          Height = 21
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          Color = 16037544
          Ctl3D = False
          ParentBackground = False
          ParentCtl3D = False
          TabOrder = 5
          object SpeedButton15: TSpeedButton
            Left = 1
            Top = 1
            Width = 20
            Height = 19
            Cursor = crHandPoint
            Hint = 'Chiude tutte le righe'
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000000000000FFFF0FFFFFFFFFF0FFFF0FFFFFFFFF
              F0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFFF0FFFF0FF000000FF0FFFF0FF000000F
              F0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFF
              F0FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = SpeedButton17Click
          end
          object SpeedButton16: TSpeedButton
            Left = 22
            Top = 1
            Width = 20
            Height = 19
            Cursor = crHandPoint
            Hint = 'Espande tutti le righe'
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000000000000FFFF0FFFFFFFFFF0FFFF0FFFFFFFFF
              F0FFFF0FFFF00FFFF0FFFF0FFFF00FFFF0FFFF0FF000000FF0FFFF0FF000000F
              F0FFFF0FFFF00FFFF0FFFF0FFFF00FFFF0FFFF0FFFFFFFFFF0FFFF0FFFFFFFFF
              F0FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = SpeedButton18Click
          end
          object SBFilterRow: TSpeedButton
            Left = 43
            Top = 1
            Width = 20
            Height = 19
            Cursor = crHandPoint
            Hint = 'Attiva/Disattiva la riga dei filtri'
            AllowAllUp = True
            GroupIndex = 100
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFF0FF0FFFFFFFFFFFF0FF0FF
              FFFFFFFFFF0FF0FFFFFFFFFFFF0FF0FFFFFFFFFFFF0000FFFFFFFFFFF08FF80F
              FFFFFFFF08FFFF80FFFFFFF08FFFFFF80FFFFF000000000000FFF0FFFFFFFFFF
              FF0FF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = SBFilterRowClick
          end
        end
      end
    end
    object TabComAuto: TcxTabSheet
      Caption = '   Comunicazioni automatiche da inviare   '
      ImageIndex = 4
      object PanelList: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 600
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GridComAuto: TcxGrid
          Left = 0
          Top = 44
          Width = 729
          Height = 494
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = cxcbsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          LevelTabs.Style = 10
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          RootLevelOptions.DetailFrameColor = clBlack
          RootLevelOptions.DetailFrameWidth = 1
          object btvComAuto: TcxGridDBBandedTableView
            OnDblClick = btvComAutoDblClick
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = btvComAutoCustomDrawCell
            DataController.DataSource = SourceComAuto
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.KeyFieldNames = 'ID;RIF_ID;RIF_DATO;MSG_AMEZZO'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skCount
                Position = spFooter
                FieldName = 'MSG_AMEZZO'
                Column = btvComAutoMSG_AMEZZO
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'MSG_AMEZZO'
                Column = btvComAutoMSG_AMEZZO
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.OnAfterSummary = btvComAutoDataControllerSummaryAfterSummary
            DateTimeHandling.Grouping = dtgByMonth
            FilterRow.InfoText = 'Clicca qui per definire un filtro di ricerca'
            FilterRow.SeparatorColor = 16037544
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.FocusRect = False
            OptionsView.NoDataToDisplayInfoText = 'Nessun dato da visualizzare'
            OptionsView.ColumnAutoWidth = True
            OptionsView.DataRowHeight = 50
            OptionsView.GridLineColor = 13882323
            OptionsView.GridLines = glNone
            OptionsView.GroupByBox = False
            OptionsView.GroupRowStyle = grsOffice11
            OptionsView.Header = False
            OptionsView.RowSeparatorColor = clBlack
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorColor = clBlack
            Styles.ContentEven = DM1.PrintContentEven
            Styles.ContentOdd = DM1.PrintContentOdd
            Styles.FilterRowInfoText = DM1.tvContent
            Styles.Footer = DM1.tvContent
            Styles.GroupSummary = DM1.tvContent
            Styles.StyleSheet = DM1.btvGCMaster
            OnCustomDrawGroupCell = btvComAutoCustomDrawGroupCell
            Bands = <
              item
                Caption = 'a mezzo'
                Options.Sizing = False
                Styles.Content = DM1.tvDisContent
                Width = 50
              end
              item
                Caption = 'Comunicazione'
                Options.HoldOwnColumnsOnly = True
                Styles.Content = DM1.tvDisContent
                Width = 220
              end
              item
                Caption = 'Manca indirizzo'
                Options.Sizing = False
                Styles.Content = DM1.tvDisContent
                Width = 35
              end
              item
                Caption = 'Riferimenti'
                Options.HoldOwnColumnsOnly = True
                Width = 250
              end
              item
                Caption = 'Soggetto / Pratica'
                Options.HoldOwnColumnsOnly = True
                Width = 220
              end
              item
                Caption = 'Altro'
                Options.HoldOwnColumnsOnly = True
                Visible = False
                Width = 500
              end>
            object btvComAutoMSG_AMEZZO: TcxGridDBBandedColumn
              Caption = 'a mezzo...'
              DataBinding.FieldName = 'MSG_AMEZZO'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Items.Strings = (
                ''
                'lettera'
                'e-mail'
                'sms')
              OnCustomDrawCell = btvComAutoMSG_AMEZZOCustomDrawCell
              HeaderAlignmentHorz = taCenter
              MinWidth = 50
              Options.HorzSizing = False
              Options.VertSizing = False
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.LineCount = 2
              Position.RowIndex = 0
            end
            object btvComAutoMSG_OGGETTO: TcxGridDBBandedColumn
              Caption = 'Oggetto'
              DataBinding.FieldName = 'MSG_OGGETTO'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 250
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComAutoCOMPUTED_INDIRIZZOFULL: TcxGridDBBandedColumn
              Caption = 'Indirizzo'
              DataBinding.FieldName = 'COMPUTED_INDIRIZZOFULL'
              HeaderAlignmentHorz = taCenter
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 1
            end
            object btvComAutoCOMPUTED_MANCAINDIRIZZO: TcxGridDBBandedColumn
              Caption = 'Ok'
              DataBinding.FieldName = 'COMPUTED_MANCAINDIRIZZO'
              OnCustomDrawCell = btvComAutoCOMPUTED_MANCAINDIRIZZOCustomDrawCell
              HeaderAlignmentHorz = taCenter
              MinWidth = 35
              Options.HorzSizing = False
              Width = 35
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.LineCount = 2
              Position.RowIndex = 0
            end
            object btvComAutoRIF_DATO: TcxGridDBBandedColumn
              Caption = 'Tipo di comunicazione'
              DataBinding.FieldName = 'RIF_DATO'
              OnCustomDrawCell = btvComAutoRIF_DATOCustomDrawCell
              HeaderAlignmentHorz = taCenter
              Width = 250
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 1
            end
            object btvComAutoRIF_DESCRIZIONE: TcxGridDBBandedColumn
              Caption = 'Riferimento'
              DataBinding.FieldName = 'RIF_DESCRIZIONE'
              HeaderAlignmentHorz = taCenter
              Width = 269
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_RAGSOC: TcxGridDBBandedColumn
              Caption = 'Soggetto'
              DataBinding.FieldName = 'SOGG_RAGSOC'
              OnCustomDrawCell = btvComAutoSOGG_RAGSOCCustomDrawCell
              HeaderAlignmentHorz = taCenter
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComAutoPRAT_DESCRIZIONE: TcxGridDBBandedColumn
              Caption = 'Pratica'
              DataBinding.FieldName = 'PRAT_DESCRIZIONE'
              HeaderAlignmentHorz = taCenter
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 1
            end
            object btvComAutoID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              HeaderAlignmentHorz = taCenter
              Width = 43
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object btvComAutoPRAT_CODICE: TcxGridDBBandedColumn
              Caption = 'Pratica'
              DataBinding.FieldName = 'PRAT_CODICE'
              HeaderAlignmentHorz = taCenter
              Width = 81
              Position.BandIndex = 5
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object btvComAutoPRAT_DATA: TcxGridDBBandedColumn
              Caption = 'Data pratica'
              DataBinding.FieldName = 'PRAT_DATA'
              HeaderAlignmentHorz = taCenter
              Width = 100
              Position.BandIndex = 5
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object btvComAutoRIF_DATAORASCADENZA: TcxGridDBBandedColumn
              Caption = 'Scadenza'
              DataBinding.FieldName = 'RIF_DATAORASCADENZA'
              HeaderAlignmentHorz = taCenter
              Width = 105
              Position.BandIndex = 5
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object btvComAutoRIF_TIMEOFFSET_DAYS: TcxGridDBBandedColumn
              Caption = 'Giorni'
              DataBinding.FieldName = 'RIF_TIMEOFFSET_DAYS'
              HeaderAlignmentHorz = taCenter
              Width = 41
              Position.BandIndex = 5
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object btvComAutoRIF_ID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RIF_ID'
              HeaderAlignmentHorz = taCenter
              Width = 48
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object btvComAutoRIF_TIME_THRESHOLD: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RIF_TIME_THRESHOLD'
              HeaderAlignmentHorz = taCenter
              Width = 64
              Position.BandIndex = 5
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object btvComAutoRIF_TIPO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RIF_TIPO'
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object btvComAutoMSG_TYPE_LETTER: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MSG_TYPE_LETTER'
              Position.BandIndex = 5
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object btvComAutoMSG_TYPE_EMAIL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MSG_TYPE_EMAIL'
              Position.BandIndex = 5
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object btvComAutoMSG_TYPE_SMS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MSG_TYPE_SMS'
              Position.BandIndex = 5
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_INDIRIZZO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_INDIRIZZO'
              Position.BandIndex = 5
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_CODICE: TcxGridDBBandedColumn
              Caption = 'Soggetto'
              DataBinding.FieldName = 'SOGG_CODICE'
              HeaderAlignmentHorz = taCenter
              Position.BandIndex = 5
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_NUMCIVICO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_NUMCIVICO'
              Position.BandIndex = 5
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_COMUNE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_COMUNE'
              Position.BandIndex = 5
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_PROVINCIA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_PROVINCIA'
              Position.BandIndex = 5
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_CAP: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_CAP'
              Position.BandIndex = 5
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_CELLULARE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_CELLULARE'
              Position.BandIndex = 5
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_EMAIL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_EMAIL'
              Position.BandIndex = 5
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_COM_SMS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_COM_SMS'
              Position.BandIndex = 5
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_COM_EMAIL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_COM_EMAIL'
              Position.BandIndex = 5
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_COM_LETTERA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_COM_LETTERA'
              Position.BandIndex = 5
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object btvComAutoPRAT_ID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRAT_ID'
              Position.BandIndex = 5
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object btvComAutoPRAT_COM_SMS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRAT_COM_SMS'
              Position.BandIndex = 5
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object btvComAutoPRAT_COM_EMAIL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRAT_COM_EMAIL'
              Position.BandIndex = 5
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object btvComAutoPRAT_COM_LETTERA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRAT_COM_LETTERA'
              Position.BandIndex = 5
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object btvComAutoSOGG_INQUALITADI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SOGG_INQUALITADI'
              Position.BandIndex = 5
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
          end
          object lvLComAuto: TcxGridLevel
            GridView = btvComAuto
            Options.DetailFrameColor = 11731033
            Options.DetailFrameWidth = 2
            Options.DetailTabsPosition = dtpTop
            Styles.Tab = DM1.tvArtDetail_Content
            Styles.TabsBackground = DM1.tvArtDetail_GroupByBox
          end
        end
        object PanelFiltriComAuto: TPanel
          Left = 0
          Top = 538
          Width = 729
          Height = 62
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          OnResize = PanelSelezioneColonneResize
          object SubPanelFiltriComAuto: TPanel
            Left = 0
            Top = 0
            Width = 684
            Height = 61
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            object sbEsportaRigheSelezionate: TSpeedButtonRollOver
              Left = 69
              Top = 23
              Width = 260
              Height = 25
              Cursor = crHandPoint
              Caption = 'Invia le comunicazioni selezionate'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                127D0100424D127D010000000000360000002800000014050000190000000100
                180000000000DC7C0100120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFF3838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838393838383839393838383A38393939
                383838383A393A3A393A383B3A393A3A3A3B3A3B3A3C3C3B3B3C3C3D3E3D3E3D
                3C3D3F3F403E413F3E40403F4042414142424243434143444345434346454447
                46454846464847484A47494A49494C4A484C4A494D494A4C4B4C4C4B4A4E4A4C
                4C4B4A4E4C4B4D4B4A4D4B4B4D4A4C4E4B4B4D4C4C4F4B4A4E4C4A4D4B4D4D4B
                4B4E4C4A4E4B4B4D4B4A4E4B4A4B4B4A4C4B4A4D4A4C4D4C4B4C4C4C4C4A4D4D
                4B4B4D4C4C4F4B4A4D4B4C4D494A4D4B4B4D4B4D504D4B4D4B4B4F4C4B4F4C4C
                4D4E4C4F4C4E50494D4D4D4B4F4E4C4D4B4D4E4B4A4C4A4A4F4A494E4B4C4E49
                4B4D4A4B4E4B4B4D4E4B4F4B4A504D4D524C4B4E4D4D4F4F4E4E4D50504D5050
                524E4F4E4F514C4D4F4C4C514D504F4F4E4E4C4D504E4C4F4C4F4E4F4E4F4B4B
                4D494A4947494C474849444544424244423F423F3F413E3F3E3C3B3B393B3A3B
                393B3A3A3838383938383838393938393839393A39393A3838383A393A3A3A39
                3A3B3B38393A393939393839393939393938393938393A3A39393A3A38393939
                393A3A3838393838383838383939383838383839383838383838383838383A38
                3839383938383938383839383838383839383939383838393838383838383938
                3939383939393B393A3B39393D3A3B3C3D3D3B3B3D3E3E3E3C3B3C3D3C3F3E3E
                3E3F3D3E3E3E3D3C3F3C3B3A3A3B3A393A393D3A3A3938383B39393939393A3A
                3A3A39383A3838393A3A39393A393D3B3A3A3C3A3B3A39393A3A3A3C393C3A3A
                3A38383A3A3938393A3A3B38383A3A3A38383839383839383838393838393838
                3838383838383838383838383838393838383838383838383838383838383838
                3838383838383938383838393838393838383A38383839383838383838383838
                383838383838383838383838383838383838FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF38383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                383838383838383838383838383838383838383838383B383A3B383C3A393839
                3A3B393A3A3C3A39393A3B3B3A3C39393C3D3B3C3C3C3D3C3D3D3E3B3E3D3D3F
                3C3E3E3D3F3F3E42413F3F424340424040424242434245434643454546474645
                4947454A48464949484C49494C484B4B4A4B4B49484A4A484B47484B46464845
                4647424344413F403D3D3F3B3A3B393A3A393939383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                383838383838383838383838383838383838383838383838383838383838FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                38383838383838383838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D3C3D
                3D3C3D3D3CEBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD43D3D3C3D3D3C3D3D3CFFFFFFFF
                FFFFFFFFFFFFFFFFCECECECECECECECECEFAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4CE
                CECECECECECECECEFFFFFFFFFFFFFFFFFFFFFFFF3D3D3C3D3D3C3D3D3CDDDCFD
                E2E0FAE5E3F8E5E3F8E6E3F8E6E3F8E6E3F8E6E4F8E6E4F8E6E4F9E6E4F9E6E4
                F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E5FAE6E5FAE6E5FAE6
                E4FAE6E4FAE7E5FAE6E5FAE7E4FBE7E5FAE6E5FAE6E6FAE6E4FAE6E5F9E5E5F9
                E4E4F8E4E3F7E3E3F7E2E1F6E0E0F7DCDCF5DCDBF4DCDDF5DADBF2DBDAF2D9DA
                F2D8D7F0D9D7EFD7D8EED6D5ECD5D4EBD4D2E9D6D4E8D4D6E9D3D3E8D2D4E5D2
                D1E5D3D2E5D3D1E4D2D0E5D1D0E2D1D0E1D0D0E1CFCFE0CFCFE1CFCEE0CFCEE0
                D0CFDFCFCFE0D0CFE1CDCEE0CFCEDFCFCFE1CECEE0CFCDE1CFCEDFCFCFE0CFCE
                E1CFCEE0CECEE0CECFDFCECFE0CECDE0CFD0E0CECEDFCFCFE1CFCDE0CDCEE1CF
                CEE1CFCEE0CED1E1CECFDFD0CEDFD0CEE1CECCDDCECDDECECDDFCDCBDCCCCBDE
                CBCCDECBCAE0CBCDDECDCEDCCBCDDECECCDDCBCDDFCDCBDFCDCCDECBCDDCCBCA
                D9CACADECBCBDDC9C9DBCBCBDAC5C8DBCACBDDCAC9D9C9C8D6C8C6D4C9C7D9CA
                C7D6C8C9D7C7C6D7C8C6D6C7C7D5C8C4D8C7C7D8C7C4D7C6C9D7C8C8D9CBCADB
                CCCDDDCED0E0D2D2E1D5D5E8D7D9EBDDDBF0DFDBF1E1E2F4E4E6F7E5E6FCE6E5
                FBE6E7FDE7E7FEE8E8FDE6E6FBE6E6FBE4E6FCE6E7FAE5E7FBE6E5F9E5E5FAE6
                E4FBE6E3FBE7E6F9E6E7FBE7E8FBE5E8FCE7E6FBE8E7FBE7E6FBE6E7FAE7E7FC
                E8E9FBE7E7FDE8E8F9E8E8FCE7E7FEE7E8FBE7E6FEE7E8FCE8E8FCE9E8FCE7E6
                FCE8E8FDE7E9FDE8E8FCE8E9FDE9E8FDE9E8FBE8E7FBE9E8FCE7E6FDE8E7FCE6
                E7FCE6E6FAE3E6FAE3E3F6E3E3F4E1E0F2E1E2F1E2E1F0E0E1F2E1E3F3E1E1F2
                E2E1F2E1E2F3E4E6F4E4E5F4E7E5F7E9E8F9EAEAF9E9E9FAEAE8FBEBEAFBEAE9
                FCE9EAF7E8EAF9E9EAFBE6E7F8E7E9F7E9E8F8E9E9F9E7E8F9E8E8F7E8E8FAEB
                EAF7E7EAFAE8E9FAE8EBFCE8EAFCEAEAFCEBEAFDEBEDFEECEBFEEDEDFDEDEBFE
                EDECFDEDEDFDEBEDFDEDEBFEEBECFCECECFDEDEDFCEAECFDECECFEECEBFDEBEB
                FEEBEBFBECEBFEECEDFDECECFCEBEDFDEDEDFEECEBFEECEBFEEBEBFEE6E6FEE2
                E2FEDCDCFEDBDBFEDBDBFE3D3D3C3D3D3C3D3D3CFFFFFFFFFFFFFFFFFFFFFFFF
                3D3D3C3D3D3C3D3D3CDDDCFDE2E0FAE5E3F8E5E3F8E6E3F8E6E3F8E6E3F8E6E4
                F8E6E4F8E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6
                E4F9E6E5FAE6E5FAE6E5FAE6E4FAE6E4FAE7E5FAE6E5FAE7E4FBE7E5FAE6E5FA
                E6E6FAE6E4FAE6E5F9E5E5F9E4E4F8E4E3F7E3E3F7E2E1F6E0E0F7DCDCF5DCDB
                F4DCDDF5DADBF2DBDAF2D9DAF2D8D7F0D9D7EFD7D8EED6D5ECD5D4EBD4D2E9D6
                D4E8D4D6E9D3D3E8D2D4E5D2D1E5D3D2E5D3D1E4D2D0E5D1D0E2D1D0E1D0D0E1
                CFCFE0CFCFE1CFCEE0CFCEE0D0CFDFCFCFE0D0CFE1CDCEE0CFCEDFCFCFE1CECE
                E0CFCDE1CFCEDFCFCFE0CFCEE1CFCEE0CECEE0CECFDFCECFE0CECDE0CFD0E0CE
                CEDFCFCFE1CFCDE0CDCEE1CFCEE1CFCEE0CED1E1CECFDFD0CEDFD0CEE1CECCDD
                CECDDECECDDFCDCBDCCCCBDECBCCDECBCAE0CBCDDECDCEDCCBCDDECECCDDCBCD
                DFCDCBDFCDCCDECBCDDCCBCAD9CACADECBCBDDC9C9DBCBCBDAC5C8DBCACBDDCA
                C9D9C9C8D6C8C6D4C9C7D9CAC7D6C8C9D7C7C6D7C8C6D6C7C7D5C8C4D8C7C7D8
                C7C4D7C6C9D7C8C8D9CBCADBCCCDDDCED0E0D2D2E1D5D5E8D7D9EBDDDBF0DFDB
                F1E1E2F4E4E6F7E5E6FCE6E5FBE6E7FDE7E7FEE8E8FDE6E6FBE6E6FBE4E6FCE6
                E7FAE5E7FBE6E5F9E5E5FAE6E4FBE6E3FBE7E6F9E6E7FBE7E8FBE5E8FCE7E6FB
                E8E7FBE7E6FBE6E7FAE7E7FCE8E9FBE7E7FDE8E8F9E8E8FCE7E7FEE7E8FBE7E6
                FEE7E8FCE8E8FCE9E8FCE7E6FCE8E8FDE7E9FDE8E8FCE8E9FDE9E8FDE9E8FBE8
                E7FBE9E8FCE7E6FDE8E7FCE6E7FCE6E6FAE3E6FAE3E3F6E3E3F4E1E0F2E1E2F1
                E2E1F0E0E1F2E1E3F3E1E1F2E2E1F2E1E2F3E4E6F4E4E5F4E7E5F7E9E8F9EAEA
                F9E9E9FAEAE8FBEBEAFBEAE9FCE9EAF7E8EAF9E9EAFBE6E7F8E7E9F7E9E8F8E9
                E9F9E7E8F9E8E8F7E8E8FAEBEAF7E7EAFAE8E9FAE8EBFCE8EAFCEAEAFCEBEAFD
                EBEDFEECEBFEEDEDFDEDEBFEEDECFDEDEDFDEBEDFDEDEBFEEBECFCECECFDEDED
                FCEAECFDECECFEECEBFDEBEBFEEBEBFBECEBFEECEDFDECECFCEBEDFDEDEDFEEC
                EBFEECEBFEEBEBFEE6E6FEE2E2FEDCDCFEDBDBFEDBDBFE3D3D3C3D3D3C3D3D3C
                FFFFFFFFFFFFFFFFFFFFFFFF3D3D3C3D3D3C3D3D3CCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFB3D3D3C3D3D3C3D3D3CFFFFFFFFFFFFFFFFFF414141414141EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDDD5EBDED6414141414141FFFFFFFFFF
                FFCFCFCFCFCFCFFAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF7
                F5CFCFCFCFCFCFFFFFFFFFFFFF414141414141CECEFED1D0FAE7E4F5E7E4F5E7
                E4F5E7E4F6E7E4F6E7E4F6E7E4F6E7E5F6E7E5F6E7E5F7E7E5F7E8E5F7E8E5F7
                E8E5F7E8E5F7E8E6F7E8E6F8E8E6F8E8E6F8E8E6F8E8E6F8E8E6F8E7E6F8E8E7
                F9E9E7F9E9E7F9E9E7F9E9E7F9E9E7F9E9E7FAE9E7FAE9E8FAE9E8FAE8E8FAE9
                E8FAE8E8FAE9E7FBE9E8FBEAE8FBE9E7FBEAE8FBE9E7FBEAE8FBE8E7FBE9E8FB
                EAE8FCE9E6FCE9E8FBE9E7FBE9E8FAE7E8FBE7E9FBE9E8FBE8E8FCE8E8FCE8E9
                FCE9E9FCE8E7FCE8E8FBE9E8FCE8E8FDE8E8FCE8E9FCE9E7FCE8E9FCE8E8FAE9
                E8FCE8E8FBE8E8FCE9E9FCE8E8FCE9E8FDE8E8FAE8E7FCE7E8FBE8E9FCE8E8FB
                E8E8FDE8E7FBE9E9FAE7E7FAE8E7FBE9E8FCE7E8FCE8E8FCE8E7FCE7E9FBE9E8
                FAE8E9FCE7E8FDE8E8FBE7E8FAE7E8FBE8E9FAE6E7FAE7E5FBE5E4F8E6E6FAE3
                E7F9E4E5F7E7E5FBE8E5F9E9E8F9E7E6FAE6E5FAE9E6FAE7E6F9E6E7F9E7E6FA
                E4E5FAE3E5FAE4E6F8E4E5FAE3E4F8E5E3F9E5E4F7E6E4F9E4E5F9E5E5F5E4E5
                F5E3E2F8E4E4F7E6E3F5E4E3F5E5E4F4E3E5F7E5E6F7E6E4F8E4E5F8E6E6FAE7
                E8FAE7E7FCE9E9FEE9EBFCE9E9FEEBEAFCEBEBFDEBEBFEEAEBFEEBEBFEEBEAFE
                EAEBFEEBEBFEEBEBFEEBEAFEEAEAFEEAEAFEEBEBFEEAEBFEEAEBFEEBEBFEEBEB
                FEEBEBFDEAEBFEE9EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEB
                EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEAEBFEEBEBFEEBEBFEEBEBFEEBEBFE
                EBEAFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEAFEEAEBFEEBEBFEEAEB
                FEEBEAFEEBEBFDEAEBFEEBEBFDEAEAFDE9EBFEE9EBFDEBEBFEEBEBFDEBE9FDEA
                EAFEEBEBFDEBEBFDEBEBFDEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFE
                EAEBFEEBEBFEEAEBFEEBEBFEEBEBFEEBEAFEEAEBFEEBEBFEEBEBFEEBEAFEEBEB
                FDEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEB
                EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFE
                EBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEB
                FEE7E7FEE1E1FEBEBEFCC2C2FD414141414141FFFFFFFFFFFF414141414141CE
                CEFED1D0FAE7E4F5E7E4F5E7E4F5E7E4F6E7E4F6E7E4F6E7E4F6E7E5F6E7E5F6
                E7E5F7E7E5F7E8E5F7E8E5F7E8E5F7E8E5F7E8E6F7E8E6F8E8E6F8E8E6F8E8E6
                F8E8E6F8E8E6F8E7E6F8E8E7F9E9E7F9E9E7F9E9E7F9E9E7F9E9E7F9E9E7FAE9
                E7FAE9E8FAE9E8FAE8E8FAE9E8FAE8E8FAE9E7FBE9E8FBEAE8FBE9E7FBEAE8FB
                E9E7FBEAE8FBE8E7FBE9E8FBEAE8FCE9E6FCE9E8FBE9E7FBE9E8FAE7E8FBE7E9
                FBE9E8FBE8E8FCE8E8FCE8E9FCE9E9FCE8E7FCE8E8FBE9E8FCE8E8FDE8E8FCE8
                E9FCE9E7FCE8E9FCE8E8FAE9E8FCE8E8FBE8E8FCE9E9FCE8E8FCE9E8FDE8E8FA
                E8E7FCE7E8FBE8E9FCE8E8FBE8E8FDE8E7FBE9E9FAE7E7FAE8E7FBE9E8FCE7E8
                FCE8E8FCE8E7FCE7E9FBE9E8FAE8E9FCE7E8FDE8E8FBE7E8FAE7E8FBE8E9FAE6
                E7FAE7E5FBE5E4F8E6E6FAE3E7F9E4E5F7E7E5FBE8E5F9E9E8F9E7E6FAE6E5FA
                E9E6FAE7E6F9E6E7F9E7E6FAE4E5FAE3E5FAE4E6F8E4E5FAE3E4F8E5E3F9E5E4
                F7E6E4F9E4E5F9E5E5F5E4E5F5E3E2F8E4E4F7E6E3F5E4E3F5E5E4F4E3E5F7E5
                E6F7E6E4F8E4E5F8E6E6FAE7E8FAE7E7FCE9E9FEE9EBFCE9E9FEEBEAFCEBEBFD
                EBEBFEEAEBFEEBEBFEEBEAFEEAEBFEEBEBFEEBEBFEEBEAFEEAEAFEEAEAFEEBEB
                FEEAEBFEEAEBFEEBEBFEEBEBFEEBEBFDEAEBFEE9EBFEEBEBFEEBEBFEEBEBFEEB
                EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEAEBFE
                EBEBFEEBEBFEEBEBFEEBEBFEEBEAFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEB
                FEEBEAFEEAEBFEEBEBFEEAEBFEEBEAFEEBEBFDEAEBFEEBEBFDEAEAFDE9EBFEE9
                EBFDEBEBFEEBEBFDEBE9FDEAEAFEEBEBFDEBEBFDEBEBFDEBEBFEEBEBFEEBEBFE
                EBEBFEEBEBFEEBEBFEEBEBFEEAEBFEEBEBFEEAEBFEEBEBFEEBEBFEEBEAFEEAEB
                FEEBEBFEEBEBFEEBEAFEEBEBFDEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEB
                EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFE
                EBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEB
                FEEBEBFEEBEBFEEBEBFEEBEBFEE7E7FEE1E1FEBEBEFCC2C2FD414141414141FF
                FFFFFFFFFF414141414141D5D3F9D7D5F9D1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD9
                D7F8D7D5F9414141414141FFFFFFFFFFFF464646EBDED6EBDDD5EBDED6ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD8ECDFD8ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7EBDED6EBDDD5ECDED6464646FFFFFFFFFFFFD1D1D1
                FAF7F5FAF6F4FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F6FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF8F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F6FAF8F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FB
                F8F6FBF9F7FBF9F7FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F6FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FBF8F6FBF8F6FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF7F5
                D1D1D1FFFFFFFFFFFF464646C0C0FCB2B2FCD6D3F7E4E1F5E4E1F5E4E1F5E4E2
                F5E5E2F5E5E2F5E5E2F6E5E2F6E5E2F6E5E2F6E5E2F6E5E3F6E5E3F6E5E3F7E5
                E3F7E5E3F7E5E3F7E5E3F7E6E3F7E6E4F8E6E4F8E6E4F8E6E4F8E6E4F8E6E4F8
                E6E4F8E6E4F9E6E5F9E6E5F9E6E5F9E6E5F9E7E5F9E7E5F9E7E5FAE7E5FAE7E6
                FAE7E6FAE7E6FAE7E6FAE7E6FBE7E6FBE7E6FBE7E6FBE7E7FBE8E7FBE8E7FBE8
                E7FCE8E7FCE8E7FCE8E7FCE8E7FCE8E7FCE8E8FCE8E8FDE8E8FDE8E8FDE8E8FE
                E8E8FEE9E8FEE9E9FEE9E9FEE9E9FEE9E9FEE8E9FEE9E8FEE9E9FEE9E9FEE9E9
                FEE9E8FEE9E8FEE9E9FEE9E9FEE9E9FEE9E9FEE8E8FEE9E9FEE9E8FEE9E8FEE9
                E9FDE9E8FEE9E9FEE9E9FEE9E8FEE9E8FEE9E9FEE9E8FEE9E9FEE9E9FEE8E8FE
                E9E9FEE9E9FEE8E9FEE8E9FEE9E9FEE9E8FDE8E8FEE8E8FDE8E9FEE9E9FEE9E7
                FEE7E7FDE8E8FDE9E8FEE8E8FEE8E9FDE8E9FDE9E8FDE9E8FEE8E8FEE8E9FDE9
                E7FEE8E8FEE8E7FEE7E8FEE8E7FDE8E8FCE8E8FDE9E8FEE7E7FDE8E8FDE8E7FD
                E8E8FEE9E7FDE8E7FDE8E8FDE8E8FCE7E9FEE7E8FCE7E8FDE7E8FDE8E8FEE9E9
                FEE8E9FEE8E9FEE8E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FED0D0FDADADFCBFBFFC464646FFFFFFFFFFFF464646C0C0FCB2B2FCD6D3
                F7E4E1F5E4E1F5E4E1F5E4E2F5E5E2F5E5E2F5E5E2F6E5E2F6E5E2F6E5E2F6E5
                E2F6E5E3F6E5E3F6E5E3F7E5E3F7E5E3F7E5E3F7E5E3F7E6E3F7E6E4F8E6E4F8
                E6E4F8E6E4F8E6E4F8E6E4F8E6E4F8E6E4F9E6E5F9E6E5F9E6E5F9E6E5F9E7E5
                F9E7E5F9E7E5FAE7E5FAE7E6FAE7E6FAE7E6FAE7E6FAE7E6FBE7E6FBE7E6FBE7
                E6FBE7E7FBE8E7FBE8E7FBE8E7FCE8E7FCE8E7FCE8E7FCE8E7FCE8E7FCE8E8FC
                E8E8FDE8E8FDE8E8FDE8E8FEE8E8FEE9E8FEE9E9FEE9E9FEE9E9FEE9E9FEE8E9
                FEE9E8FEE9E9FEE9E9FEE9E9FEE9E8FEE9E8FEE9E9FEE9E9FEE9E9FEE9E9FEE8
                E8FEE9E9FEE9E8FEE9E8FEE9E9FDE9E8FEE9E9FEE9E9FEE9E8FEE9E8FEE9E9FE
                E9E8FEE9E9FEE9E9FEE8E8FEE9E9FEE9E9FEE8E9FEE8E9FEE9E9FEE9E8FDE8E8
                FEE8E8FDE8E9FEE9E9FEE9E7FEE7E7FDE8E8FDE9E8FEE8E8FEE8E9FDE8E9FDE9
                E8FDE9E8FEE8E8FEE8E9FDE9E7FEE8E8FEE8E7FEE7E8FEE8E7FDE8E8FCE8E8FD
                E9E8FEE7E7FDE8E8FDE8E7FDE8E8FEE9E7FDE8E7FDE8E8FDE8E8FCE7E9FEE7E8
                FCE7E8FDE7E8FDE8E8FEE9E9FEE8E9FEE8E9FEE8E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FED0D0FDADADFCBFBFFC464646FFFFFFFFFF
                FF464646DAD8F8E0DDF6D9D7F8D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D3FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FADDDAF7E0DD
                F6D8D6F9464646FFFFFF4C4B4B9B9490EBDDD5EBDDD5EBDED6ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE1D9EDE1DAEDE2DAEDE2DAEDE2DAEDE2DAECE1D9ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE1D9ECE1D9ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8EBDED6EBDDD5EBDDD57D78764C4B4BD2D2D2E6E4E3FAF6F4FA
                F6F4FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FBF8F7FBF9F7FBF9F8FAF6F4FAF8F6FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FAF7F5FBF8F7
                FBF9F8FBF8F6FAF7F5FAF7F5FAF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FAF8F6FBF9F7FC
                F9F8FCFAF9FBF9F7FBF8F7FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FBF9F7
                FCFAF8FCFAF9FBF9F8FBF8F7FAF7F6FAF7F5FAF7F5FAF7F5FBF8F7FDFBFAFDFC
                FBFDFCFBFDFBFAFCFAF8FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF8F6FAF8F7FBF9F8FCFAF9FCFAF9FCFAF8FBF9F7FAF8F6FAF7F5
                FAF8F6FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FBF9F7FD
                FBF9FDFBFAFCF9F8FBF9F8FAF8F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F6FBF8F6FBF8F6FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FB
                F8F6FAF8F6FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF6F4DEDDDDD2
                D2D24C4B4B7F7EA3B2B2FCB2B2FCD0CEF6E2DFF5E2DFF5E2DFF5E2DFF5E2DFF5
                E2DFF5E2DFF6E2E0F6E2E0F6E2E0F6E3E1F6E4E1F6E4E1F6E4E1F7E3E0F7E3E1
                F7E3E1F7E3E1F7E3E1F7E3E1F8E3E1F8E4E2F8E3E1F8E3E2F8E4E2F8E4E2F8E4
                E2F9E4E2F9E4E2F9E4E2F9E4E2F9E4E3F9E4E3F9E4E3FAE4E3FAE4E3FAE4E3FA
                E4E3FAE5E3FAE5E4FBE5E4FBE5E4FBE5E4FBE5E4FBE5E4FBE5E4FBE5E4FCE5E5
                FCE5E5FCE5E4FBE5E5FCE6E5FCE6E5FCE6E5FDE6E5FDE6E6FDE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE7E7FEE6E7FEE7E7FEE7E7FEE8E8FEE8E8FEE8
                E8FEE7E7FEE7E7FEE7E7FEE7E7FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE7E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E5FEE6E6FEE6E6FEE6E6FEE3E3FED8D8FDAA
                AAFC9E9EFB9E9EFB6565824C4B4B4C4B4B7F7EA3B2B2FCB2B2FCD0CEF6E2DFF5
                E2DFF5E2DFF5E2DFF5E2DFF5E2DFF5E2DFF6E2E0F6E2E0F6E2E0F6E3E1F6E4E1
                F6E4E1F6E4E1F7E3E0F7E3E1F7E3E1F7E3E1F7E3E1F7E3E1F8E3E1F8E4E2F8E3
                E1F8E3E2F8E4E2F8E4E2F8E4E2F9E4E2F9E4E2F9E4E2F9E4E2F9E4E3F9E4E3F9
                E4E3FAE4E3FAE4E3FAE4E3FAE4E3FAE5E3FAE5E4FBE5E4FBE5E4FBE5E4FBE5E4
                FBE5E4FBE5E4FBE5E4FCE5E5FCE5E5FCE5E4FBE5E5FCE6E5FCE6E5FCE6E5FDE6
                E5FDE6E6FDE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE7E7FEE6E7FEE7
                E7FEE7E7FEE8E8FEE8E8FEE8E8FEE7E7FEE7E7FEE7E7FEE7E7FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE7E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E5FEE6E6FEE6
                E6FEE6E6FEE3E3FED8D8FDAAAAFC9E9EFB9E9EFB6565824C4B4B4C4B4B9694A0
                E0DDF6E0DDF6DDDBF7D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D5D5F9D5D5F9D7D5F8D7D6F9D6D6F9D6D5F9D5D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D5D4F9D5D5F9D6D5F9D5
                D5F9D5D4F9D5D4F9D5D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D5D4F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D5D5F9D5D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D5D4F9D5
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9DDDBF7E0DDF6E0DDF6
                7A78804C4B4B50504FEBDDD5EBDDD5EBDDD5ECDED6EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ECE0D8ECE0D8
                ECE0D8ECE0D8EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE0D8EDE0D8EDE0D8EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE2DAEEE3DBEEE3DBEEE2DAEDE1D9EE
                E2DAEEE2DBEEE3DBEEE4DDF0E5DEEFE4DEF0E6E0EEE3DBEDE1D9EDE1D9EDE1D9
                EDE2DAEFE3DCEFE4DDF0E6E0EEE3DBEDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9ECDED6EBDDD5EBDDD5ECDED650504FD3D3D3FAF6F4FAF6F4FAF6F4FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF7F5FBF8F6FAF8F6FBF9F7FBF8F6FBF9F7
                FBF8F7FBF8F6FCFAF8FCFAFAFCFBFAFBF9F8FCF9F8FBF9F7FAF7F5FAF7F5FAF7
                F5FBF8F6FAF8F7FBF8F7FAF7F6FAF8F6FAF8F6FBF9F8F7F4F3FAF7F6FCFBFAFC
                F9F8FBF8F7FBF8F7FBF9F7FCFAF9FCFAF9FCFAF9FBF9F7FBF8F7FBF8F7FBF8F6
                FBF8F6FBF8F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF8F6FBF9F7FCFAF8FCFAF8FBF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FBF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F6FBF8F7FBF9F8FBF9F8FBF9F8FCFAFAFDFB
                FBFDFBFAFDFBFAFCFAF9FAF8F6FAF7F5FAF7F5FAF8F6FBF9F8FDFCFBFEFDFCFD
                FCFBFDFBFAFCFBFAFAF7F5FAF7F5FAF7F5FAF8F6FCF9F7FDFCFBFEFDFDFEFDFD
                FEFDFDFDFCFBFCFAF9FBF9F7FBF8F7FBF8F6FAF8F6FAF7F5FAF7F5FAF7F5FBF8
                F6FCF9F7FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFDFCFBFCFAF9FCFAF8FCFAF9FC
                FAF9FCF9F8FBF8F6FBF8F6FBF9F7FBF9F8FBF9F7FAF8F6FAF7F5FAF7F5FAF7F5
                FAF7F5FBF8F6FAF8F6FBF8F7FAF7F5FBF9F7FBF8F7FCF9F7FCFBF9FEFDFCFEFD
                FDFDFCFCFEFCFBFDFCFAFCF9F8FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FA
                F8F6FCF9F8FCFAF8FBF9F7FAF8F6FAF7F5FAF7F5FAF7F5FBF9F7FCFAF9FBFAF8
                FBFAF8FBF9F8FBF8F7FAF7F5FAF7F5FAF7F5FAF7F5FAF7F6FAF6F6FDFBFAFDFA
                FAFCFAF9FBF9F7FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF6F4FAF7F5D3D3D35050
                4FB3B3FCB2B2FCB2B2FCCFCDF6E0DDF5E0DDF5E0DDF5E0DDF5E0DDF5E0DDF5E0
                DDF6E0DEF6E0DFF6E0DEF6E1DFF5E2DFF5E2DFF5E2DFF6E2E0F6E1DFF7E1DFF7
                E1DFF7E1DFF7E3E0F7E4E0F7E3E1F7E3E1F7E2E0F8E1E0F8E2E0F8E2E0F9E2E0
                F9E2E0F9E2E0F9E2E0F9E2E1F9E2E1F9E2E1FAE2E1FAE2E1FAE2E1FAE2E1FAE3
                E1FAE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FB
                E3E2FAE3E2FBE3E2FBE3E2FBE4E3FCE4E3FDE4E4FDE4E4FEE4E4FEE4E4FEE4E3
                FDE4E3FDE4E3FDE4E4FDE4E4FDE4E4FDE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E3FDE4E3FDE4E4FDE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FDE4E4FDE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE5E5FEE5E5FEE5E5FEE6E5FEE6E5FEE6E6FEE6E6FEE6E6FEE6E6
                FEE5E5FEE5E5FEE5E5FEE4E5FEE4E4FEE4E4FEE4E4FEE4E4FEE5E5FEE5E4FEE5
                E4FEE5E5FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3
                FEE3E3FEE3E4FEE4E4FDE4E4FDE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE3
                E4FEE3E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FEE4E3FEE3E4FEE3E4FEE2E1FE
                E3E3FEE2E0FEE1E2FEE0E1FEDCDBFED5D5FDCECEFDC9C9FDC9C9FDA9A9FC9E9E
                FB9E9EFBA9A9FC50504F50504FB3B3FCB2B2FCB2B2FCCFCDF6E0DDF5E0DDF5E0
                DDF5E0DDF5E0DDF5E0DDF5E0DDF6E0DEF6E0DFF6E0DEF6E1DFF5E2DFF5E2DFF5
                E2DFF6E2E0F6E1DFF7E1DFF7E1DFF7E1DFF7E3E0F7E3E0F7E3E1F7E3E1F7E2E0
                F8E1E0F8E2E0F8E2E0F9E2E0F9E2E0F9E2E0F9E2E0F9E2E1F9E2E1F9E2E1FAE2
                E1FAE2E1FAE2E1FAE2E1FAE3E1FAE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FB
                E3E2FBE3E2FBE3E2FBE3E2FBE3E2FAE3E2FBE3E2FBE3E2FBE4E3FCE4E3FDE4E4
                FDE4E4FEE4E4FEE4E4FEE4E3FDE4E3FDE4E3FDE4E4FDE4E4FDE4E4FDE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FDE4E3FDE4E4FDE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FDE4E4FDE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE5E5FEE5E5FEE5E5FEE6E5FEE6E5
                FEE6E6FEE6E6FEE6E6FEE6E6FEE5E5FEE5E5FEE5E5FEE4E5FEE4E4FEE4E4FEE4
                E4FEE4E4FEE5E5FEE5E4FEE5E4FEE5E5FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E3FEE3E3FEE3E4FEE4E4FDE4E4FDE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE3E4FEE3E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FE
                E4E3FEE3E4FEE3E4FEE2E1FEE3E3FEE2E0FEE1E2FEE0E1FEDCDBFED5D5FDCECE
                FDC9C9FDC9C9FDA9A9FC9E9EFB9E9EFBA9A9FC50504F50504FDFDCF6E0DDF6E0
                DDF6DDDBF7D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D7D6F9D8D7F8DA
                D8F7DEDCF7DEDCF7DDDBF7DBDAF7D9D7F9D7D6F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D7D6F9D9D7F8DCDAF7DDDBF6DDDAF7D9D8
                F8D8D7F8D8D7F8D8D7F8D7D6F9D7D5F9D6D5F9D6D5F9D6D5F9D6D5F9D7D6F8D8
                D7F7DAD8F7DAD8F6D7D6F8D7D5F9D9D7F8DDDAF6DDDBF7DBD9F7DAD8F7D9D7F8
                D9D8F7DCD9F5DCDAF6D9D8F8DAD8F7DDDAF4DBD9F6DAD9F7DDDAF5DAD9F7D8D7
                F8D7D6F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9DDDBF7E0DDF6E0DDF6DDDBF750
                504F555554EBDDD5EBDDD5EBDDD5ECDED7EEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEDE1DAEDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1DAEEE2DAEEE2DAEDE1DAEDE1DAEDE1DAEDE1DAEEE2DBEEE2DA
                EDE1DAEDE1DAEDE1DAEEE2DBEEE2DBEEE2DAEDE1DAEDE1DAEEE2DBEEE2DBEEE2
                DBEEE2DAEDE1DAEDE1DAEDE1DAEDE1DAEDE1D9EDE1D9EDE1D9ECE0D9ECE0D9EC
                E0D9ECE0D9EDE1D9EEE2DAEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DCEFE4DEF0E5DFF1E7E0F0E5DFF1E7E1F0E6E0EFE4DDEFE3DDEFE4
                DEF0E5DFF1E7E0F0E5DFF1E7E1F1E7E1EFE4DEEFE3DDEFE3DDEFE4DDF0E5DEF0
                E5DFF1E7E1F1E7E1EFE4DEEFE3DDEFE3DDEFE4DDF0E4DDEFE3DCEEE2DCEFE3DD
                EEE3DCEFE3DCEEE2DCEEE2DBEEE2DBEEE2DBEEE2DBEEE2DCEEE3DCEFE3DCEEE2
                DCEEE2DBEEE2DBEEE2DBEEE2DBEEE2DCEEE3DCEEE2DBEEE2DBEEE2DBEEE2DBEB
                DDD5EBDDD5EBDDD5ECDED7555554D4D4D4FAF6F4FAF6F4FAF6F4FAF7F5FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F7F7F2F1FAF6
                F5FBF8F7FAF6F5F9F5F3FBF9F7FCF9F8FAF7F6FCF9F8FCFAF9FCFAF9FCFAF9FC
                FAF9FCFAF9FCFBFAFCFBFAF9F7F6FBF9F8FCFAF9FBF9F7FBF8F6FBF9F7FCFAF9
                FBF9F9FBF7F7FBF7F6FCF9F8FBF9F8FBF9F8FAF8F7FBFAF9FCFBFAFBF8F7FBF8
                F7FAF6F6FDFAF9FDFBFAFBF8F8FDFAFAFCFBFAFDFBFAFDFBFAFDFBFAFDFBFAFD
                FAFAFCFAF9FCF9F8FBF8F7FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FCF9F8
                FDFBFAFBF8F7FDFAFAFBF9F7FBF8F6F7F2F0F7F1EFFAF7F5FAF7F5FAF7F5FBF8
                F6FAF6F4FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6F9F5F4F7F2F0F8F3F1FBF8F6FBF8F6FBF8F6FAF7F5FAF7
                F5FBF9F7FBF9F7FBF9F7FBF9F7FBF8F7FBF8F6FBF8F6FBF8F6FBF8F6FBF8F7FB
                F8F6FBF8F6FBF8F6FBF9F7FBF9F8FCF9F8FCF9F8FCF9F8FDFBFAFDFBFBFDFCFB
                FDFCFBFDFBFBFCF9F8FBF8F6FBF8F6FCF9F8FDFCFBFEFDFCFEFDFCFEFDFCFDFC
                FBFCFBF9FCF9F8FBF8F6FBF8F6FBF9F7FBF9F7FBF9F8FCFAFAFEFDFDFEFDFDFE
                FDFDFEFDFCFEFDFCFDFCFBFDFCFBFCFBFAFCF9F7FBF8F6FCF9F7FCF9F8FCF9F8
                FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFDFCFCFEFDFCFEFDFCFEFDFCFDFCFBFEFC
                FBFCF9F8FDFBF9FCFAF9FEFDFCFEFCFBFDFBF9FBF9F7FBF9F7FCF9F8FAF7F6FD
                FBFAFCFBF9FDFCFBFDFBFAFDFCFBFEFCFBFEFDFCFBF8F8FEFDFCFEFDFDFDFCFB
                FDFCFCFDFCFCFBF9F8FBF8F6FBF8F6FBF8F6FBF8F6FBF9F7FCFAF9FDFCFBFEFD
                FCFEFDFCFCFBFAFBF9F8FCF9F7FBF8F6FBF8F7FAF6F6FEFCFCFEFCFCFEFDFDFE
                FCFCFCFAF9FBF9F7FBF8F6FBF8F6FBF8F7FAF7F5FCFBFAFEFDFDFEFDFDFEFDFC
                FCFBFAFCF9F8FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FB
                F8F6FBF8F6FBF8F6FBF8F6FAF6F4FAF6F4FAF6F4FAF7F5D4D4D4555554B2B2FC
                B2B2FCB2B2FCCFCCF6DDDAF5DDDAF5DDDAF5DDDBF5DFDDF5E2DFF5E0DDF6E1DE
                F6E1DFF6DFDCF6E0DDF5E0DDF5E0DDF5E0DDF6E0DEF6E0DEF6E0DEF6DFDDF6E1
                DEF6E2DFF5E2DFF6E2E0F6E1DFF7E1DFF7E0DEF8E0DDF7DFDDF8DFDEF9DFDEF9
                DFDEF9E0DEF9E0DFF8E1DFF8E1DEF9E0DFF9E1DFFAE1DFF9E0DEF9E0DEF9E0DF
                F9DFDFF9E0DFFAE0E0FAE0E0FAE0E0FBE1E0FBE1E0FBE0DFFAE0DFF9E0DFF9E0
                DFFAE0DEFAE0DFFAE0E0FBE1E1FCE1E1FDE1E1FDE2E1FDE2E1FDE1E0FBE1E0FB
                E1E0FBE1DFFBE1E0FCE2E1FCE2E2FDE2E2FDE2E2FEE2E1FDE2E1FDE2E1FCE1E0
                FCE0E0FCE1E0FBE1E0FCE2E1FCE2E1FDE2E2FEE2E2FEE2E2FEE2E2FEE2E1FDE1
                E1FDE1E0FBE0E0FBE1E0FCE2E1FDE2E2FDE2E2FEE2E2FEE2E2FEE2E2FEE2E2FD
                E1E2FCE1E0FCE1E0FCE1E1FCE2E1FCE2E2FDE2E2FEE2E2FEE2E2FEE2E1FEE2E1
                FDE1E1FDE1E1FDE1E1FDE2E1FEE2E2FEE2E1FDE1E1FDE1E1FDE1E1FDE2E1FDE2
                E1FEE2E2FEE2E1FDE2E1FDE2E1FDE2E1FDE2E1FDE2E1FEE2E1FEE2E2FEE2E2FD
                E2E2FDE2E2FDE2E2FEE2E2FEE2E2FEE2E1FEE2E1FDE2E1FDE2E1FDE2E1FEE1E1
                FEE1E2FEE2E2FEE2E1FDE2E1FDE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E1FEE2
                E2FDE2E1FEE2E1FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FE
                E2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2
                FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E1FEE2E2FEE2E2FEE3E3FEE3
                E3FEE4E4FEE4E4FEE3E4FEE3E3FEE3E3FEE3E3FEE3E3FEE3E4FEE4E4FEE4E3FE
                E3E3FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE3E3FEE3E3FEE3E2FEE3E2FEE3E2
                FEE3E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E1FEE1E1FDE0E0FDE0DFFDE0DFFEE0
                E0FDDFE0FDE0DFFDE1DFFDE1DFFDE0E0FDE0E0FDE0E0FDE0E0FEDFE0FDDFDFFD
                DFDFFEDFDDFCE1DFFCE1E1FDE1E2FEE0E0FEE0E2FEE2E1FEE0E2FEE0E1FEE0E0
                FEDFDFFDDEDFFDE0DEFEDFDDFDDCDCFDDDDEFEDCDDFDDBDBFDD9DAFCD8D7FBD6
                D5FDD2D1FCCCCAFBC6C7FDC4C4FDC4C4FDC4C4FDC4C4FDA0A0FB9E9EFB9E9EFB
                A8A8FC555554555554B2B2FCB2B2FCB2B2FCCFCCF6DDDAF5DDDAF5DDDAF5DDDB
                F5DFDDF5E2DFF5E0DDF6E1DEF6E1DFF6DFDCF6E0DDF5E0DDF5E0DDF5E0DDF6E0
                DEF6E0DEF6E0DEF6DFDDF6E1DEF6E2DFF5E2DFF6E2E0F6E1DFF7E1DFF7E0DEF8
                E0DDF7DFDDF8DFDEF9DFDEF9DFDEF9E0DEF9E0DFF8E1DFF8E1DFF9E0DFF9E1DF
                FAE1DFF9E0DEF9E0DEF9E0DFF9DFDFF9E0DFFAE0E0FAE0E0FAE0E0FBE1E0FBE1
                E0FBE0DFFAE0DFF9E0DFF9E0DFFAE0DEFAE0DFFAE0E0FBE1E1FCE1E1FDE1E1FD
                E2E1FDE2E1FDE1E0FBE1E0FBE1E0FBE1DFFBE1E0FCE2E1FCE2E2FDE2E2FDE2E2
                FEE2E1FDE2E1FDE2E1FCE1E0FCE0E0FCE1E0FBE1E0FCE2E1FCE2E1FDE2E2FEE2
                E2FEE2E2FEE2E2FEE2E1FDE1E1FDE1E0FBE0E0FBE1E0FCE2E1FDE2E2FDE2E2FE
                E2E2FEE2E2FEE2E2FEE2E2FDE1E2FCE1E0FCE1E0FCE1E1FCE2E1FCE2E2FDE2E2
                FEE2E2FEE2E2FEE2E1FEE2E1FDE1E1FDE1E1FDE1E1FDE2E1FEE2E1FEE2E1FDE1
                E1FDE1E1FDE1E1FDE2E1FDE2E1FEE2E2FEE2E1FDE2E1FDE2E1FDE2E1FDE2E1FD
                E2E1FEE2E1FEE2E2FEE2E2FDE2E2FDE2E2FDE2E2FEE2E2FEE2E2FEE2E1FEE2E1
                FDE1E1FDE2E1FDE2E1FEE1E1FEE1E2FEE2E2FEE2E1FDE2E1FDE2E2FEE2E2FEE2
                E2FEE2E2FEE2E2FEE2E1FEE2E2FDE2E1FEE2E1FEE2E2FEE2E2FEE2E2FEE2E2FE
                E2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2
                FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2
                E1FEE2E2FEE2E2FEE3E3FEE3E3FEE4E4FEE4E4FEE3E4FEE3E3FEE3E3FEE3E3FE
                E3E3FEE3E4FEE4E4FEE4E3FEE3E3FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE3E3
                FEE3E3FEE3E2FEE3E2FEE3E2FEE3E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E1FEE1
                E1FDE0E0FDE0DFFDE0DFFEE0E0FDDFE0FDE0DFFDE1DFFDE1DFFDE0E0FDE0E0FD
                E0E0FDE0E0FEDFE0FDDFDFFDDFDFFEDFDDFCE1DFFCE1E1FDE1E2FEE0E0FEE0E2
                FEE2E1FEE0E2FEE0E1FEE0E0FEDFDFFDDEDEFDE0DEFEDFDDFDDCDCFDDDDEFEDC
                DDFDDBDBFDD9DAFCD8D7FBD6D5FCD2D1FCCCCAFBC6C7FDC4C4FDC4C4FDC4C4FD
                C4C4FDA0A0FB9E9EFB9E9EFBA8A8FC555554555554E0DDF6E0DDF6E0DDF6DEDB
                F6D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D7D6F8D7D6F8D7D6F8D7D6F9D6D5F9D6D5F9D6D5F9D6
                D5F9D7D6F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D7D6F8D7D6F8D7D6F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D7D6F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8DAD7F7DAD9F8DAD9F8DAD8F8D8D7F8D8D7F8D8D7F8D9D8F8D9D8F7
                D9D8F8DAD8F8D9D8F8D8D7F8D8D7F8DAD7F7DBD9F8D8D5F2DDDAF6DEDBF5DFDC
                F5E0DDF6E0DDF6DFDDF6DEDCF6DDDAF7D9D8F8D8D7F8D8D7F8D9D8F8D9D8F8D9
                D7F7DAD8F7DAD8F7DAD8F6DCD9F5DEDCF4DFDBF2E1DDF2E3DEEFDDDBF6DAD8F8
                DCDAF6DEDBF6DDDBF7DBD9F7DAD8F7D9D7F8D9D8F7DDDAF4E3DFF2E5E2F4E7E3
                F2E6E0ECDFDDF3DDDBF6E3DFF1E0DEF4E0DDF6DFDDF6DCDAF6DDD9F5E0DBF2E8
                E2EEE9E3F1E4E0F5E4E1F3E6E0F0E1DEF6DFDCF6E4DFEEE2DEF2E1DDF0DCDAF5
                D9D7F7D8D7F8D8D7F8D8D7F8D8D7F8DFDDF6E0DDF6E0DDF6DEDBF65555545A5A
                59EBDDD5EBDDD5EBDDD5ECDFD7EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEDE2DBEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCED
                E2DBECE0D9EDE1DAEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEDE2DBEEE3DCEEE3DC
                EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE3DCEEE3DCEDE2DBEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEDE2DBEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DAEDE1DAEDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE2DAEEE2DBEEE2DBEEE2DAEDE2DBEEE2DBEEE3DCEEE3DCEEE3DCEF
                E4DDF0E7E1F1E8E2F1E8E2F1E8E2F1E8E2F1E7E1EFE4DEEFE4DDF0E7E1F1E8E2
                F1E8E2F1E8E2F1E8E2F1E7E1EFE4DEEFE4DDF0E7E1F1E8E2F1E7E1F1E8E2F1E8
                E2F1E7E1EFE4DEEFE4DDF0E7E1F1E8E2F1E7E1F0E7E1F0E6DFF0E6E0EFE4DEEF
                E4DDF0E7E1F0E7E0EFE4DDEEE3DCEEE4DDF0E5DFEFE4DEEFE4DDF0E7E1F0E7E0
                EFE4DDEEE3DCEEE4DDF0E5DFEFE4DEEFE4DDEEE3DDEEE3DCEEE3DCEBDDD5EBDD
                D5EBDDD5ECDFD75A5A59D6D6D5FAF6F4FAF6F4FAF6F4FAF7F5FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF9F7FBF9F7FBF9F7F9F7F5FBF9F7
                FBF9F7FBF9F8FCFAF8FCFAF9FAF5F4FBF9F8FCFAF9FCFAF8FBFAF9FCFAF9FCFB
                F9FCFBFAFCFBFAF7F4F3FAF7F6FCFBFAFCF9F8FBF8F6FCFAF9FDFBFAFDFBFAFD
                FBFAFDFBFAFDFBFAFBF9F9FBF7F7FBF7F6FCF9F8FBF9F8FAF6F6FDFAFAFDFBFA
                FDFBFBFDFBFBFDFBFAFCF9F9FDFBFAFDFBFAFBF8F8FDFAFAFDFCFBFDFCFBFDFB
                FAFDFBF9FCFAF8FBF8F6FBF8F6FBF8F6FBF8F6FAF7F5FBF8F6FCFBF9FDFCFBFB
                F9F8FDFCFBFCFAF9FAF8F6FAF7F5FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4
                F8F4F2FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6F9F5
                F4F7F2F0F8F3F1FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF9F7FA
                F6F4F7F2F1F8F3F2FAF7F5F6F0EFFAF6F4FBF7F6FBF9F7FAF7F5FBF8F7FBF9F7
                FBF9F7FBF9F7FCFAF9FCFAFAFBF9F7FCF9F8FCFAF9FCFAF9FCFAF9FCFAF8FBF8
                F6FBF9F7FCF9F8FCF9F8FCFAF8FCFAF8FCFAF8FDFBFAFDFCFBFDFBFBFDFCFBFD
                FCFBFCFAF8FBF8F6FBF8F6FCFAF9FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFA
                FBF9F7FBF8F6FBF8F6FBF9F7FBFAF9FDFBFAFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFDFEFDFCFEFDFCFEFDFCFDFBFAFCFAF8FCFAF8FCFAF8FCFAF9FDFBFAFD
                FCFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFBF8F8FDFCFBFBFAF8
                FDFBFAFBF7F6FEFDFCFEFDFCFEFCFBFCFAF9FCFAF9FBF9F8FEFDFCFEFDFCFDFC
                FBFDFCFBFEFDFDFBF8F8FEFDFCFDFCFCFAF6F6FEFDFCFEFDFDFDFCFBFDFCFCFD
                FBFBFCF9F9FBF9F8FBF8F6FBF8F6FBF8F6FCFAF8FDFCFBFCFBFAFCFBFAFDFCFC
                FEFDFDFEFDFCFDFBFAFCF9F8FAF6F5FCFBFAFEFDFDFEFDFDFEFDFDFDFCFCFEFC
                FCFCFAF9FBF9F7FBF9F7FCF9F8FCFBF9FEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFD
                FAF9FBF8F6FAF7F5FAF7F5FBF8F6FAF8F6FBF8F6FBF8F6FBF8F6FBF8F6FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FBF8
                F6FBF8F6FBF8F6FAF6F4FAF6F4FAF6F4FAF7F5D6D6D55A5A59B2B2FCB2B2FCB2
                B2FCCDCBF6DBD8F4DBD8F4DBD8F4DDDAF5E2DFF5E4E1F5E2DFF5E4E1F6E3E1F6
                DFDDF5DDDCF5DFDDF5E2DFF5E0DDF6E1DEF6E1DFF6E0DCF6DFDCF5E0DDF5E0DE
                F5E1DDF6E1DEF6E0DEF6DFDEF6E0DDF6E0DEF6DFDCF6DEDCF7DEDCF8DEDBF8DE
                DCF8DFDDF7E0DEF7DFDEF7E0DEF7E0DEF7E0DEF7DFDDF7DEDBF7DEDCF7DEDDF7
                DFDDF8DFDEF8DFDEF9DFDEFADFDEFBE0DEF8E0DEF7DFDCF7DEDCF7DEDCF8DEDC
                F8DFDBF8DFDEF9DFDEF9DFDEFCDFDEFDE0DFFBE0DFF9DFDDF7DDDDF8DEDCF8DD
                DBF9DEDDF9DFDEFADFDFFBDFDFFCDFDFFCDFDFFCE0DFFBE0DDF9DEDCF8DEDAF9
                DFDCF8DFDCF9E0DEFAE0DFFCDFDFFEDFDFFDDFDEFDDFDFFEDFDEFBDEDBFADDDC
                F8DDDBF9DFDDF9DFDEFADFDEFCDFDFFDDEDFFEDEDFFEDFDFFEDFDEFBDEDCFADE
                DDF9DFDDF9DFDEFAE0DEFADFDFFCDFDEFDDEDEFEDEDFFEDEDEFDDEDDFBDFDDFB
                DFDEFBDFDDFCDEDEFDDFDEFDDFDDFCDFDDFBDFDDFBDFDDFBDEDDFCDFDEFDDEDE
                FDDDDDFCDEDDFBDFDDFBDEDDFBDEDEFCDDDDFDDDDDFDDEDEFDDEDEFCDEDDFCDE
                DEFCDEDFFDDDDEFDDEDDFDDEDDFDDEDDFCDEDDFBDDDEFCDEDDFDDDDDFDDEDEFD
                DEDEFDDFDEFBDEDDFBDFDEFDDEDEFEDEDDFEDFDEFEDFDEFDDFDDFCDEDDFCDFDD
                FCDFDEFDDEDEFEDEDEFDDEDDFDDEDDFCDFDEFCDEDEFDDEDEFDDEDFFEDEDEFDDF
                DEFDDEDEFCDEDDFCDEDEFCDEDEFDDEDDFEDFDEFEDEDDFDDEDDFCDEDDFCDEDDFC
                DEDDFDDEDEFEDEDEFEDEDEFDDEDFFCDEDEFCDFDEFCE0E0FEE1E1FEE2E1FEE2E1
                FEE1E1FEE0E0FDDFDEFCE0DFFDE0E0FDE1E1FDE1E1FEE1E1FEE0E0FDE0E0FCDF
                DEFCDFDFFCDFDFFDE0DFFDE1E0FDE1E0FDE1E0FDE0DFFCE0DEFCE0DEFDE0E0FE
                E1DFFDE0DEFCDFDEFCDFDEFCDDDCFCDCDBFCD9DAFBD8D7FBD8D8FBD9D6FBD8D8
                FBD7D6FBD8D7FBD8D8FBDAD9FBD9D9FBD9D9FBD8D8FAD7D7FAD7D6FBD5D6FAD5
                D4F9D8D6FAD9D9FBDBDAFDDBDAFDDBDCFDDCDCFDDCDAFCD9DAFBD7D5FBD6D4FC
                D3D2FCD0CFFCCDCEFCCCCCFCCECFFBD0D0FACFD0FACDCCF9CBCAF8C6C5FAC2C0
                F9C4C5F9C2C2FCC0C1FBBFBFFCBFBFFCBFBEFC9E9EFB9E9EFB9E9EFBA6A6FB5A
                5A595A5A59B2B2FCB2B2FCB2B2FCCDCBF6DBD8F4DBD8F4DBD8F4DDDAF5E2DFF5
                E4E1F5E2DFF5E4E1F6E3E1F6DFDDF5DDDCF5DFDDF5E2DFF5E0DDF6E1DEF6E1DF
                F6E0DCF6DFDCF5E0DDF5E0DEF5E1DEF6E1DEF6E0DEF6DFDEF6E0DDF6E0DEF6DF
                DCF6DEDCF7DEDCF8DEDBF8DEDCF8DFDDF7E0DEF7DFDEF7E0DEF7E0DEF7E0DEF7
                DFDDF7DEDBF7DEDCF7DEDDF7DFDDF8DFDEF8DFDEF9DFDEFADFDEFBE0DEF8E0DE
                F7DFDDF7DEDCF7DEDCF8DEDCF8DFDBF8DFDEF9DFDEF9DFDEFCDFDEFDE0DEFBE0
                DFF9DFDDF7DDDDF8DEDCF8DDDBF9DEDDF9DFDEFADFDFFBDFDFFCDFDFFCDFDFFC
                E0DFFBE0DDFADEDCF8DEDAF9DFDCF8DFDCF9E0DEFAE0DFFCDFDFFEDFDFFDDFDE
                FDDFDFFEDFDEFBDEDCFADDDCF8DEDBF9DFDDF9DFDEFADFDEFCDFDFFDDEDFFEDE
                DFFEDFDFFEDFDEFBDEDCFADEDDF9DFDDF9DFDEFAE0DEFADFDEFCDFDDFDDEDEFE
                DEDEFEDEDEFDDEDDFBDFDDFBDFDEFBDFDDFCDEDEFDDFDDFDDFDDFCDFDDFBDFDD
                FBDFDDFBDEDDFCDFDEFDDEDEFDDDDDFCDEDDFBDFDDFBDEDDFBDDDEFCDDDDFDDD
                DDFDDEDEFDDEDEFCDEDDFCDEDEFCDEDFFDDDDEFDDEDDFDDDDDFDDEDDFCDEDDFB
                DDDEFCDEDDFDDDDDFDDEDEFDDEDEFDDFDEFBDEDDFBDFDEFDDEDDFEDEDDFEDEDE
                FEDFDDFDDFDDFCDEDDFCDFDDFCDFDEFDDEDEFDDEDEFDDEDDFDDEDDFCDFDEFCDE
                DEFDDEDEFDDEDFFEDEDEFDDFDEFDDEDEFCDEDDFCDEDEFCDEDEFDDDDDFEDFDEFE
                DEDDFDDEDDFCDEDDFCDEDDFCDEDDFDDEDEFEDEDEFEDEDEFDDEDFFCDEDEFCDFDE
                FCE0E0FEE1E1FEE2E1FEE2E1FEE1E1FEE0E0FDDFDEFCE0DFFDE0E0FDE1E1FDE1
                E1FEE1E1FEE0E0FDE0E0FCDFDEFCDFDFFCDFDFFDE0DFFDE1E0FDE1E0FDE1E0FD
                E0DFFCE0DEFCE0DEFDE0E0FEE1DFFDE0DEFCDFDEFCDFDEFCDDDCFCDCDBFCD9DA
                FBD8D7FBD8D8FBD9D6FBD8D8FBD7D6FBD8D7FBD8D8FBDAD9FBD9D9FBD9D9FBD8
                D8FAD7D6FAD7D6FBD5D6FAD5D4F9D8D6FAD9D9FBDBDAFDDBDAFDDBDCFDDCDCFC
                DCDAFCD9DAFBD7D5FBD6D3FCD3D2FCD0CFFCCDCEFCCCCCFCCECFFBD0D0FACFD0
                FACDCCF9CBCAF8C6C5FAC2C0F9C4C5F9C2C2FCC0C1FBBFBFFCBFBFFCBFBEFC9E
                9EFB9E9EFB9E9EFBA6A6FB5A5A595A5A59E0DDF6E0DDF6E0DDF6DEDCF6DAD8F8
                DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8
                F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DA
                D8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8
                DAD8F8D9D8F8D8D7F8D8D7F8D8D6F7D8D7F8D8D7F8D8D7F8D8D7F8D7D6F8D8D6
                F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8D9D8F8D8D7F8D8D7F8D8D6F7D9D7F8DA
                D8F8DAD8F8DAD8F8D9D7F8D8D6F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8D9D8F8
                D8D7F8D8D7F8D8D6F7D9D7F8DAD8F8DAD8F8DAD8F8D9D7F8D8D6F8D9D7F8DAD8
                F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D8F8D8D7F8D8D7F8D8
                D6F7D9D7F8DAD8F8DAD8F8DAD8F8D9D7F8D8D6F8D9D7F8DAD8F8DAD8F8DAD8F8
                DAD8F8DAD8F8DAD7F7D9D6F6D9D6F5D9D8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8
                F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD7F7D9D6F6D9D6F5D9
                D8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8
                DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D7F8DAD8
                F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DA
                D8F8DAD8F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8
                DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8DBD9
                F7DEDCF7DEDCF7DEDCF7DDDBF7DCDAF8DCDAF8DCDAF7DDDBF7DEDCF7DCD8F4DC
                DAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEE
                E1DEF3DFDBF2E1DDF2E3DEEFDDDBF6DAD8F8DCDAF6DEDBF6DDDBF7DDDBF7DEDB
                F6E2DDF1E3DFF3E4DEEEE7E3F0E6E3F3E8E4F2E7E1EBE1DEF2DFDCF5E4E0F0E0
                DEF4E0DDF6DFDDF6DCDAF6DDD9F5E0DBF2E8E2EEEBE5F0EBE7F2EAE6F1E8E2EF
                E1DEF6DFDCF6E5DFEEE4DFF1E4DFEEE1DEF3DFDBF3DFDCF4E5DDEBEBE5ECEEEA
                F1ECE9F3E9E6F3E5E1F3E0DDF6DFDDF6E5E1F2EAE6F1E9E1E9E6E2F1E2DFF5DE
                DBF7DCD9F8DAD8F8DAD8F8E0DDF6E0DDF6E0DDF6DEDCF65A5A595F5F5DE9DBD3
                EADCD4EBDDD5ECDFD7EFE4DDEFE4DDECDFD8EFE4DDEFE4DDEFE4DDEEE3DCEFE4
                DDEFE4DDEEE3DCEFE3DCEEE3DCEFE4DDECDFD8EDE1DAEFE4DDEFE4DDEEE3DCEF
                E4DDEBDDD6EFE4DDEFE4DDEFE4DDECDFD8EFE3DCEEE3DCEFE4DDEFE4DDEFE4DD
                EEE3DCEFE4DDE9DAD4EFE4DDEEE3DCEFE4DDEBDDD6EFE4DDEFE4DDEFE4DDEEE3
                DCEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEEE3DCEFE3DCEEE3DCEFE4DDEC
                DFD8EFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEBDDD6EFE4DDEFE4DDEFE4DDEEE3DC
                EFE4DDE9DAD4EFE4DDEFE4DDEFE4DDEEE3DCEFE4DDE9DAD4EFE4DDEFE4DDEFE4
                DDEFE4DDEFE4DDE9DAD4EFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEF
                E4DDEEE3DCEFE3DCEFE4DDEEE3DCEFE4DDEFE4DDEEE3DCEFE3DCEFE4DDEEE3DC
                EFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4
                DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEF
                E4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DD
                EFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEFE4
                DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEEE3DCEEE3DCEFE4DDEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCECE0D9EDE2DBEEE3DCEEE3DCEEE3DCEE
                E2DBEDE0D9EEE2DBEEE2DBEEE2DAEDE1DAEDE1DAEEE2DBEEE2DBEEE2DBEEE1DA
                EEE3DCEEE3DCEEE3DCEDE0D9EBDDD6EEE3DCEFE3DCEFE3DCEEE3DCF0E6E0F2E9
                E3F2E9E3F2E9E3F2E9E3F2E9E3F1E8E1EFE4DDF0E6E0F2E9E3F2E9E3F2E9E3F2
                E9E3F2E9E3F1E8E1EFE4DDF0E6E0F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F1E8E1
                EFE4DDF0E6E0F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F1E8E1EFE4DDF0E6E0F2E9
                E3F2E9E3F1E7E1EFE5DEF0E5DFF1E8E1EFE4DDF0E6E0F2E9E3F2E9E3F1E7E1EF
                E5DEF0E5DFF1E8E1EFE4DDF0E6E0F1E6DFEFE4DDEFE4DDEBDDD5EBDDD5EBDDD5
                EBDED65F5F5DD7D7D6F9F6F4FAF6F4FAF6F4FAF7F5FBF8F6FBF8F6FBF8F6FBF8
                F6FAF6F4FAF7F5FAF7F5FBF8F6FBF8F6FCF9F8FCF9F8FAF8F7FCFAF8FBF9F7FC
                FAF8FCFAFAFCFBFAFBF9F8FCFAF9FCFBFAFCFBFAFCFAF9FCFBFAFCFBFAFBFAF9
                FBF9F8FAF8F7FBFAF9FCFBFAFBF8F7FBF8F6FCFBFAFBF9F8FCFAF9FDFBFAFDFB
                FAFDFBFBFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFD
                FBFBFDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFBFBFDFCFBFBF8F7
                FDFAFAFBF9F7FBF8F6F7F2F0F7F1EFFAF7F5FBF8F6FBFAF9FCFAF9FBF8F7FDFC
                FBFCFAF9FBF9F7FCFAF9FCFAF9FCFAF9FBF9F7FBF8F7FBF8F7FBF8F6F6F0EFFA
                F6F4FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF9F7FAF6F4F7F2F1F8F3F2FAF7F5
                F6F0EFFAF6F4FAF6F5FBF8F7FBF8F7FBF8F7FBF8F7FBF8F7FCF8F8FBF9F8FDFB
                FAFDFBFAFDFBFAFBF8F7F9F4F3FAF7F5FCFAF8FBF8F7FBF9F8FBF9F8FBF9F8FB
                F9F8FCFAFAFDFBFBFDFBFAFDFBFAFDFBFBFDFCFBFDFBFAFCF9F8FBF9F7FBF9F7
                FCFAF8FCFAF8FCFBF9FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFA
                F8FBF8F6FBF8F6FCFAF8FEFDFCFEFDFCFEFDFCFDFCFBFDFBFAFEFCFBFCFBFAFB
                F8F7FBF8F7FCF9F7FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFCFEFDFCFEFDFCFDFBFAFDFAF9FDFBFAFDFCFBFDFCFBFDFCFBFDFCFBFEFC
                FCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFAF6F6FDFCFBFCFBFAFDFCFBFD
                FBFAFDFCFBFEFDFCFEFDFDFDFCFCFEFCFBFEFDFCFEFDFCFEFDFCFEFCFBFEFCFC
                FDFBFBFAF6F6FEFDFCFCFBFAFEFDFCFEFDFCFEFDFCFDFBFBFEFCFCFDFCFCFEFD
                FCFDFBFAFCF9F7FBF8F6FBF8F7FAF6F6FEFCFCFEFCFCFEFDFDFEFDFDFDFCFBFD
                FCFBFEFCFBFCFAF9FCFBF9FEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFCFCF6F0F0
                FCF9F7FCF9F8FAF6F6FDFBFBFEFDFDFEFDFDFEFDFDFEFDFDFEFCFBFBF9F8FAF7
                F5FAF7F6FAF6F6FDFBFAFDF9F9FCF9F8FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FBF8F6FBF8F6
                FBF8F6FAF6F4FAF6F4FAF6F4FAF7F5D7D7D65F5F5DA5A5FCACACFCB2B2FCCDCB
                F6D9D6F4D9D6F4D9D6F4DCD9F5E0DBF1E2DFF5E1DDF3E0DCF3E1DFF4DCDAF5DD
                DBF5E1DDF5E3DFF5E2DFF5E1E0F5E3DFF6DFDCF5DDDBF5DFDCF5E2DEF5E1DDF6
                E1DEF6E1DDF6E0DDF5E1DFF5E1DEF5DEDCF5DDDAF6DDDAF6DDDAF7DFDCF7E0DD
                F6E0DEF6E0DEF6E0DDF6E1DEF6DFDDF6DDDBF6DCDAF6DCDAF6DCDBF7DDDCF7DF
                DCF7DFDCF7DDDCF9DDDBF8E0DBF5E0DCF6DFDAF6DCDAF6DCDAF7DCDAF7DEDCF7
                E0DDF6DEDDF8DEDCFADEDBFBDEDBF9E0DCF7DEDAF5DCDAF5DDDAF6DCD9F7DEDB
                F7DDDCF8DEDDF8DCDBF8DBDAFADBDAFADCDAF9DDDAF7DBD9F7DCD9F6DCDBF7DD
                DBF7DFDDF8DDDCF9DCDBFBDBD9FCDBD9FCDCD9FBDCD9F9DAD8F8D9D7F8DCD7F8
                DBDBF8DDDAF8DCDAFADBDBFBD9DAFDDADAFDDBDBFBDDDBF9DBD9F7DCD9F7DCD9
                F8DDD9F8DCD9F9DAD9FAD8D8FBD7D8FDD7D8FDDAD7FBD9D8FADAD9FADAD8FAD9
                D8FBD8D7FCD8D7FCDBD7FBDBD9FADBD9FAD9D8FAD9D8FAD8D8FCD7D6FCD8D8FB
                D8D8FAD8D8FAD8D7FAD7D8FBD7D7FCD6D7FCD7D7FBD8D7FAD9D8FAD8D7FBD8D8
                FBD7D7FCD6D6FCD8D7FBD9D7FAD8D7FAD8D6FBD6D7FCD6D6FCD7D7FCD9D8FBD8
                D9F9D9D9F9D8D8FBD8D7FDD7D6FDD8D7FCD9D8FBD8D8FAD9D8FAD9D7FBD8D6FC
                D8D6FDD8D6FCD9D7FBD9D7FADAD8F9D8D7FBD7D7FCD9D7FCD7D8FCD7D7FBD7D7
                FAD8D8F9D8D6FAD6D7FCD6D6FDD8D7FCD9D6FBD8D7FAD8D7FAD8D7FAD8D7FCD9
                D8FDD8D9FCD8D8FBD9D7F9DAD8F8DCD9FADDDBFCDDDCFCDEDEFDDFDEFEDDDBFB
                DCD9F8DCD9F9DDDBFADDDDFBDDDDFCDDDDFCDCDDFDDCDBFCDBD9FADAD8F9DAD9
                FADCDAFBDCDBFCDCDCFCDDDDFCDCDCFBDCD9F9DBDAFADDDBFBDCDBFDDBDAFCDB
                D9F8DAD8F9D9D7FAD5D4FAD2D1FACFCFFACCCDF9CCCCF9CBCAF9CBCAF8CBC9F9
                CBC9F9CBCBFACFCDF9D2D1F9CFCFF8CCCBF8CAC9F9C8C6F9C7C6F8CAC8F6CDCB
                F9D0CEFAD0CFFCCFCEFBD1D1FBD3D3FAD1D0FACECCF9CAC8FAC7C5FAC5C3FAC4
                C3FBC3C3FBC4C3F9C7C5F8C7C7F7C3C2F7BEBDF8BBBAF8B6B5F9B5B4FAB9BAFA
                BDBCF9C1C1F9BEBEFBBBBBFCBABBFC9E9EFB9E9EFB9E9EFBA1A1FB5F5F5D5F5F
                5DA5A5FCACACFCB2B2FCCDCBF6D9D6F4D9D6F4D9D6F4DCD9F5E0DBF1E2DFF5E1
                DDF3E0DCF3E1DFF4DCDAF5DDDBF5E1DDF5E3DFF5E2DFF5E1E0F5E3DDF6DFDBF5
                DDDBF5DFDCF5E2DEF5E1DDF6E1DDF6E1DDF6DFDDF5E1DEF5E0DEF5DEDCF6DDDA
                F6DDDAF6DDDAF7DEDCF7E0DCF6E0DDF6E0DEF6E0DDF6E0DEF6DFDDF6DDDBF6DC
                DAF6DCD9F6DCDBF7DDDCF7DFDBF7DEDBF7DDDCF9DDDBF8E0DBF5E0DBF6DFDAF6
                DCDAF6DCDAF7DCDAF7DDDCF7DFDDF7DEDDF8DDDCFADEDBFBDEDAF9E0DCF7DEDA
                F5DCDAF6DCDAF6DCD9F7DDDBF7DDDAF8DDDDF8DCDBF8DADAFADBDAFADBD9F9DC
                D9F7DBD9F7DCD9F7DCDBF7DDDBF7DEDCF8DDDCF9DADAFBDBD9FCDAD9FCDCD8FB
                DBD8F9DAD8F8D9D7F8DBD7F8DBD9F8DDDAF8DCDAFADADAFBD9DAFDDADAFDDADB
                FBDCDBF9DBD9F8DCD8F8DBD8F8DDD9F8DCD8F9DAD8FAD8D7FBD7D8FDD7D8FDD9
                D7FBD8D8FADAD9FAD9D7FAD9D8FBD8D7FCD8D7FCDBD7FBDBD9FADBD8FAD9D8FA
                D8D8FAD7D8FCD7D6FCD8D8FBD8D8FAD8D8FAD8D7FAD7D8FBD7D7FCD6D7FCD7D7
                FBD8D7FAD9D8FAD8D7FBD7D8FBD6D7FCD6D6FCD7D6FBD9D7FAD7D6FAD8D6FBD6
                D7FCD6D5FCD7D6FCD9D8FBD8D7F9D9D9F9D8D8FBD7D7FDD7D6FDD8D7FCD8D7FB
                D8D8FAD9D8FAD9D7FBD8D6FCD8D6FCD8D5FCD8D7FBD9D7FADAD7F9D8D6FBD7D6
                FCD7D7FCD7D8FCD7D7FBD7D7FAD8D5FAD8D6FAD6D6FCD6D6FDD7D7FCD9D6FBD8
                D6FAD8D7FAD7D7FAD7D7FCD8D7FCD7D8FCD8D8FBD9D7F9DAD8F8DCD8FADCDAFC
                DDDCFCDDDEFDDFDDFEDDDBFBDCD9F8DCD9F9DDDAFADDDDFBDDDCFCDDDDFCDCDD
                FDDCDBFCDBD9FADAD8F9DAD9FADCDAFBDCDAFCDCDCFCDDDDFCDCDCFBDCD9F9DB
                DAFADCDBFBDCDBFDDBDAFBDBD9F8DAD8F9D8D7FAD5D4FAD2D0FACECFFACCCDF9
                CCCCF9CBCAF9CBCAF9CBC9F9CBC9F9CBCBFACFCDF9D2D1F9CFCFF8CCCBF8CAC9
                F9C9C6F9C7C6F8CAC8F6CDCBF9D0CEFAD0CFFCCFCEFBD1D1FBD3D3FAD1D0FACE
                CCF9CAC8FAC7C5FAC5C3FAC4C3FBC3C3FBC4C3F9C7C5F8C7C7F7C3C2F7BEBDF8
                BBBAF8B6B5F9B5B5FAB9BAFABDBCF9C1C1F9BEBEFBBBBBFCBABBFC9E9EFB9E9E
                FB9E9EFBA1A1FB5F5F5D5F5F5DDCD9F5DEDBF5E0DDF6DFDCF6DCDAF7DCDAF7DC
                DAF7DCDAF7DCDAF7DCD9F6DBD9F5DBD8F5DCD9F6DCDAF7DCDAF7DCD9F6DBD9F4
                DBD8F5DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCD9F6DBD9F4DBD7F4DCDAF7DCDA
                F7DCDAF7DCDAF7DCDAF7DCDAF7DCD9F6DCDAF7DCDAF7DCDAF7DCDAF7DBD9F7DA
                D8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D8F8D8D7F8D9D7F8DBD9F7
                DCDAF7DCDAF7DCDAF7DBD9F7DAD8F8DAD8F8DAD8F8DAD8F8D9D6F6DBD9F8DCDA
                F7DBD9F7D9D7F8D9D7F8DBD9F7DCDAF7DCDAF7DCDAF7DBD9F7DAD8F8DAD8F8DA
                D8F8DAD8F8D9D6F6DBD9F8DCDAF7DBD9F7D9D7F8D9D7F8DBD9F7DCDAF7DCDAF7
                DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DBD9F7DAD8F8DAD8F8DAD8F8DAD8F8D9D6
                F6DBD9F8DCDAF7DBD9F7D9D7F8D9D7F8DBD9F7DCDAF7DCDAF7DCDAF7DCDAF7DC
                DAF7DCDAF7DCDAF7DBD9F7D8D6F5D7D1F0DBD9F7DCDAF7DBD9F7D9D7F8D8D6F7
                DBD8F6DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DBD9F7D8D6F5D7D1
                F0DBD9F7DCDAF7DBD9F7D9D7F8D8D6F7DBD8F6DCDAF7DCDAF7DCDAF7DCDAF7DC
                DAF7DCDAF7DCDAF7DCD9F6DCDAF7DCDAF7DBD9F7D9D7F8D8D6F7DBD8F6DCDAF7
                DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCD9F6DCDAF7DCDAF7DBD9F7D9D7
                F8D8D6F7DBD8F6DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCDAF6DCDAF7DCD9F6DC
                DAF7DCDAF7DBD9F7D9D7F8D8D6F7DBD8F6DCDAF7D8D4F1DDDAF6DEDBF5DFDCF5
                E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6E0DDF6DDDBF6DCDAF7DCDA
                F7DDDAF6DEDBF5DFDCF5DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6
                E3F3E8E4F2E7E1EBE1DEF2DFDCF5E4E0F0E0DEF4E0DDF6E0DDF6DEDCF5E1DBEE
                E7DFEBEAE3EDEBE5F0EBE7F2EAE6F1E8E2EFE1DEF6DFDCF6E5DFEEE4DFF1E4DF
                EEE1DEF3DFDBF3DFDCF4E5DDEBEBE5ECEEEAF1EEEAF2E9E6F3E5E1F3E0DDF6DF
                DDF6E5E1F2EAE6F1E9E1E9E7E3F0E6E3F4E6E2F4EAE6F3EDE9F1EFE9EFF0ECF2
                ECE9F4E6E1EFE1DEF3DFDBF2E5E1F2EDE9F3EBE4EDEBE5F0EAE7F2E9E6F2E3E1
                F4DEDCF6DCDAF7E0DDF6E0DDF6E0DDF6DDDBF55F5F5D646463E5D8D1E7D9D2E8
                DAD3EBDED7EFE5DEEFE5DEEDE2DBEDE2DBEFE4DDEFE5DEEDE3DCEFE5DEEFE5DE
                EFE5DEEEE4DDEDE2DBEADCD5EBDFD8EBDFD8EFE4DDEFE5DEEDE2DBEADCD5EBDF
                D8ECE0D9EFE5DEECE0D9EBDFD8ECE0D9EEE3DCECE1DAEFE5DEEFE5DEEEE4DDEA
                DCD5EBDFD8ECE0D9EEE3DCEADDD6EBDFD8ECE0D9EFE5DEEFE5DEEEE3DCEEE4DD
                EFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEEE4DDEDE2DBEADCD5EBDFD8ECE0
                D9EFE4DDEFE5DEEDE2DBEADCD5EBDFD8ECE0D9EFE5DEEFE5DEEDE2DBEADCD5EB
                DFD8ECE0D9EFE5DEEFE5DEEEE4DDEADCD5EBDFD8ECE0D9EFE5DEEFE5DEEFE5DE
                EADCD5EBDFD8ECE0D9EFE5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5
                DEEEE4DDEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEEE4DDEFE5DEEF
                E5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEEE4DD
                EFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEFE5DEEFE5
                DEEEE4DDEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEF
                E5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEFE5DE
                EFE5DEEEE4DDEFE5DEEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4
                DDEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEF
                E4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DD
                EFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEFE3DCEFE4DDEF
                E4DDEFE4DDEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE3DCF0E6E0F3E9E4F2E9E3
                F2E8E3F2E8E3F2E9E4F2E8E2EFE4DDF0E6E0F3E9E4F2E9E3F2E8E3F2E8E3F2E9
                E4F2E8E2EFE4DDF0E6E0F3E9E4F2E9E3F2E8E3F2E8E3F2E9E4F2E8E2EFE4DDF0
                E6E0F3E9E4F2E9E3F2E8E3F2E8E3F2E9E4F2E8E2EFE4DDF0E6E0F3E9E4F2E9E3
                F2E8E2F0E6E0F1E7E2F2E8E2EFE4DDF0E6E0F3E9E4F2E9E3F2E8E2F0E6E0F1E7
                E2F2E8E2EFE4DDF0E6E0F2E8E3F0E6DFEFE5DEEADCD4E9DBD3E8DAD3E8DCD564
                6463D8D8D8F8F5F3F9F5F4F9F6F4FAF7F5FBF8F7FBF8F7FBF8F7FBF8F7F7F2F1
                FAF6F5FBF8F7FBF7F6FBF9F8FCFAF9FCFAF9FAF7F6FCF9F8FCFAF9FCFAF9FCFB
                FAFCFBFAF9F7F6FBF9F8FCFBFAFCFBFAFBF9F8FCFBFAFCFBFAFBF9F9FBF7F7FB
                F7F6FCF9F8FBF9F8FAF5F5FCF8F7FBF9F8FAF5F5FDFAF9FDFBFAFBF8F8FDFAFA
                FCFBFAFDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFDFBFAFDFCFBFDFBFBFDFBFBFDFB
                FBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFBF9F8FDFCFBFC
                FAF9FAF8F6FAF7F5FBF8F6FAF7F5FBF8F6FCFAF9FDFCFBFAF7F6FDFCFBFBF9F8
                FDFAF8FDFBFAFBF8F8FDFAFAFCFBFAFDFBFAFDFBFAFDFBFAFBF8F7F8F3F2FBF8
                F7FBF8F7FBF8F7FBF8F7FBF8F7FCF8F8FBF9F8FDFBFAFDFBFAFDFBFAFBF8F7F9
                F4F3FAF7F5FBF9F7FBF9F7FBF9F7FBF9F8FCFAF9FCF9F9FDFBFAFDFBFAFBF8F8
                FDFAFAFDFCFAFAF7F5FBF8F7FCFAF8FBF9F8FBF9F8FCF9F8FCF9F8FCF9F8FDFB
                FAFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFAFCF9F8FBF8F7FDFBFAFD
                FCFBFDFCFBFDFCFBFEFDFCFEFDFCFDFCFBFDFBFAFDFCFBFAF7F6FBF9F8FBF8F7
                FBF8F7FCFAF9FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFCFCFCFAF9FCF9F8FCF9
                F8FCF9F8FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFDFBF9FDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFDFCFCFEFDFD
                FEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFCFEFDFCFDFCFBFDFCFBFEFDFDFBF8
                F8FEFDFCFEFDFDFDFCFBFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFCFBFAF9F8F7FCF9F9FEFCFCFEFDFDFEFDFC
                FDFBFAFCF9F8FAF6F5FCFBFAFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFD
                FDFDFBFBFDFBFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFCF8F2F1FBF9F8FC
                F9F8FDFAF9FDFCFCFEFDFDFEFDFDFDFCFCFEFDFCFDFCFBFCF9F7FBF8F7FAF7F5
                FCFBFAFEFDFDFEFDFDFEFDFCFCFAF9FCF9F8FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F6FBF8F7FBF8F7FA
                F6F4F9F6F4F9F6F4F9F6F4D8D8D86464639393FD9A9AFCA1A1FCC6C3F7D6D3F4
                D6D3F4D6D3F4D8D5F5DCD8F0DFDBF4DDDAF5DCDAF4D9D5F3D8D5F5DBD8F5DCDA
                F2E0DBF3DFDAF4DDDAF4DBDBF5D9D8F5D9D7F6DCDAF5E1DBF4DFDCF5E1DBF5E0
                DCF5DDD8F5DBDAF5DAD8F4DAD7F5D8D6F6D8D6F6D9D7F6DCDAF5DEDAF5DFDCF5
                DEDCF5DCDAF4DBD9F4D9D6F5D8D7F5D6D6F5D8D6F6D6D6F6DBD7F5DCD8F5DDD9
                F6DBD7F7D7D4F7D9D3F4DAD6F5D9D5F5D9D5F5D8D5F6D9D7F6DBDAF6DDDBF6DD
                DBF7DAD9F9D7D6FAD6D3F7D8D4F6D7D4F5D7D2F5D7D1F6D6D3F6D6D4F6D6D4F6
                D8D6F7D7D4F8D4D1F9D2D0F7D5D1F7D5D3F6D6D3F6D6D5F6D8D5F6D9D7F5D9D8
                F6D7D5F7D3D2F9D0CFFBD0CFFBD3D2F9D4D2F7D2D1F8D2CFF8D2CFF8D5D1F7D7
                D4F6D9D4F8D4D2FAD0CFFCCFCEFCD2CFFAD3D3F8D6D3F7D6D3F7D4D2F7D4D2F8
                D3D1F8D1D2F9D0CFFACFCDFBCECDFBCFCEF9D1CEF9D2CFF8D2D0F9D0CFFACECD
                FBCECCFBD1CDFAD2CEF9D3CFF8D1D0F9D1CEFACECDFBCDCCFBCDCDF9CFCFF8CF
                D0F9D0CFF9CECEFACCCCFBCCCCFBCDCDFACFCFF9CFCEF9CFCEF9CFCDFACDCCFB
                CDCDFBCDCEFACFCEF9D0CEF9CECDF9CECBFBCCCBFBCDCDFBCECEFAD0CFF8CFD1
                F9D0CEFACECCFCCDCCFCCDCDFBCECDF9D0D0F9D1D0F8CFCFFACDCCFBCDCBFCCD
                CBFBCECDFACFCDF8D0CDF8CFCCF9CDCBFBCCCBFBCDCBFBCCCCF9CDCCF9CDCCF9
                CDCBF9CDCBFACCCBFBCCCCFBCDCDFACFCCF9D0CDF8CDCDF9CCCCFACCCCFBCDCC
                FBD0CDF9D0CDF7D2CFF7D1D1F8D3D2F9D6D6FAD7D5FBD7D6FCD5D2F9D2CFF5D5
                D1F7D5D3F8D5D3F9D7D7FAD8D8FBD5D6FBD2D2F9D2D0F7D1CFF8D1D1F8D4D2F9
                D6D5FAD7D6FAD4D4FBD4D2FAD3D0F8D4D2F7D6D3F9D4D4FAD3D1F9D2CFF6D2CE
                F7CECBF7C9C8F8C6C4F8C2C1F8BEBFF8BEBDF8BEBDF8BDBBF8BCBAF7BEBAF8BF
                BDF8C2C1F8C5C4F7C3C2F7C0BFF6BDBBF8BBBAF9BBB9F8BEBBF8C2C0F8C6C3F9
                C6C4FAC6C5F9C7C6F9C8C6F9C5C3F9C1BEF8BDBBF8BBB7F9B8B6FAB9B8FABBBA
                F9BCBBF9BCBBF8BBBAF7B6B5F7B0B1F8ADACF8ABA9F9A8A9FAABACFAB0B1FABB
                B8F8BBBAFCB7B7FCB5B6FC9A9AFB9393FB8E8EFB9494FC6464636464639393FD
                9A9AFCA1A1FCC6C3F7D6D3F4D6D3F4D6D3F4D8D5F5DCD8F0DFDBF4DDDAF5DCDA
                F4D9D5F3D8D5F5DBD8F5DCDAF2E0DBF3DDDAF4DDDAF4DBD9F5D9D8F5D9D6F5DB
                DAF5DDD8F4DCD8F5DFDAF5DEDAF5DBD8F5DAD8F5D7D8F5D9D6F5D7D5F6D8D4F6
                D9D6F6DAD8F5DBD9F5DCDBF5DDDBF5DCD9F4DAD8F4D7D5F5D7D5F5D6D4F5D5D6
                F6D6D4F6DAD5F5DAD8F5DAD8F6D9D5F7D7D4F7D8D2F5D8D4F5D8D4F5D9D4F5D7
                D5F6D7D5F6D9D7F6DAD9F6DBD9F7D9D8F9D6D4FAD6D3F7D6D4F6D6D3F5D6D1F5
                D6D1F6D6D2F6D5D4F6D6D4F6D7D6F7D6D4F8D3D1F9D2D0F7D4D0F7D4D1F7D4D1
                F6D5D4F6D6D5F6D7D5F6D9D6F6D6D4F7D3D2F9D0CFFBD0CFFBD2D1F9D2D0F7D2
                CFF8D2CFF8D1CFF8D5D0F7D5D3F6D7D3F8D3D0FAD0CEFCCFCEFCD0CFFAD1D2F8
                D5D2F7D5D1F7D4D1F7D3D1F8D3D0F8D1D0F9D0CFFACFCDFBCECDFBCFCEF9D1CE
                F9D2CEF9D1CFF9D0CFFACECDFBCECCFBD1CDFAD2CEF9D3CFF9D1CFF9CFCEFACD
                CDFBCDCCFBCDCDF9CECFF8CFD0F9D0CFF9CECDFACCCCFBCCCCFBCDCDFACFCEF9
                CFCEF9CFCEF9CFCDFACDCCFBCCCCFBCDCEFACFCDF9D0CEF9CECDF9CDCBFBCCCB
                FBCDCCFBCECEFACECEF9CED1F9D0CEFACECCFCCCCCFCCDCDFBCECDF9CFCFF9D0
                CFF9CECEFACDCCFBCCCBFCCDCBFBCECCFACFCDF9CFCCF9CECBF9CDCBFBCCCAFB
                CCCBFBCCCCF9CDCCF9CDCBF9CDCBF9CCCBFACCCBFBCCCCFBCDCDFACFCCF9D0CD
                F8CDCDF9CCCBFACCCCFBCDCCFBCECCF9D0CDF7D1CFF7D1D0F8D2D2F9D5D5FAD6
                D5FBD6D6FCD4D2F9D2CFF5D5D0F7D5D3F8D5D3F9D6D6FAD8D8FBD5D6FBD2D1F9
                D2D0F8D1CFF8D1D1F8D4D2F9D5D4FAD7D5FAD4D4FBD3D2FAD3D0F8D4D2F7D6D3
                F9D4D3FAD3D1F9D2CFF6D2CDF7CDCBF7C9C8F8C6C4F8C2C1F8BFBFF8BEBDF8BE
                BDF8BDBBF8BCBAF7BEBBF8BFBDF8C2C0F8C5C3F7C3C2F7C0BFF6BDBBF8BBBAF9
                BBB9F8BEBBF8C2C0F8C6C3F9C6C4FAC6C5F9C7C6F9C8C6F9C5C3F9C1BEF8BEBB
                F8BBB7F9B8B7FAB9B8FABBBAF9BBBBF9BCBBF8BBB9F7B6B5F7B0B1F8ADADF8AB
                A9F9A8A9FAABACFAB0B1FABBB8F8BBBAFCB7B7FCB5B6FC9A9AFB9393FB8E8EFB
                9494FC646463646463D6D4F2D8D6F3DAD8F4DDDAF5DEDCF7DEDCF7DEDCF7DEDC
                F7DBD6F1DDDBF6DEDCF7D9D5F0DDDBF6DEDCF7DBD6F1DDDBF6DEDCF7D9D5F0DE
                DCF7DCD9F4DEDCF7DEDCF7DBD6F1DDDBF6DEDCF7D9D5F0DEDCF7DEDCF7DCD9F4
                DEDCF7DEDCF7DBD6F1DDDBF6DEDCF7DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DCD9
                F6DCDAF7DCDAF7DCDAF7DCDAF7DBD9F7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DE
                DCF7DDDBF7DCDAF7DCDAF7DCD9F6DCDAF7DBD9F7DBD9F7DAD7F4DDDBF7DDDBF7
                DCDAF7DCDAF7DEDCF7DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DCD9F6DCDAF7DCDA
                F7DCDAF7D8D3EFDCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DEDCF7DDDBF7DD
                DBF7DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DCD9F6DCDAF7DCDAF7DCDAF7D8D3EF
                DCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDC
                F7DDDBF7DCDAF7DCDAF7DBD7F4DAD5F2DCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DE
                DCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DBD7F4DAD5F2
                DCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDC
                F7DEDCF7DEDCF7DCD8F4DCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DEDCF7DD
                DBF7DDDBF7DEDCF7DEDCF7DEDCF7DEDCF7DCD8F4DCDAF7DAD8F8DAD8F7DBD9F7
                DEDCF7DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDCF7DEDCF7DEDCF7DCD8F4DCDA
                F7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1
                DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2DFDDF5DDDBF7DDDBF7DCD8F4DEDCF5
                E4E0F0E0DEF4E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6
                F1E8E2EFE1DEF6DFDCF6E5DFEEE4DFF1E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2ED
                E8EFEFEBF2EEEAF2E9E6F3E5E1F3E0DDF6DFDDF6E5E1F2EAE6F1E9E1E9E7E3F0
                E6E3F4E6E2F4EAE6F3EDE9F1EFE9EFF0ECF2ECE9F4E6E1EFE1DEF3DFDBF2E5E1
                F2EDE9F3EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F0ECF5EA
                E2EAE7E3F0E6E3F4E9E5F4EFEAF2F0EBF2EFEBF2EEEAF2EEE9F1ECE8F1E4E2F5
                DFDDF7DEDBF5DCD9F5DAD7F4DAD7F4646463696967E2D4CFE3D6CFE4D7D0ECE0
                DAF1E8E3F0E6E0F0E5DFF0E6E0EBDDD7EEE2DDEEE3DDF0E6E0F0E6E0F0E6E0EF
                E4DEEDE1DBEDE3DDEEE3DDEFE3DDF0E6E0F0E6E0ECE0DAECE2DCEDE0DAEFE5DF
                F0E6E0EEE4DEEEE3DDF0E6E0ECDED8EFE5DFF0E6E0F0E6E0F0E6E0EDE3DDEDE0
                DAEFE5DFEEE3DDECE2DCEDE0DAEFE5DFF0E6E0F0E6E0EDE1DBEFE5DFF0E6E0EF
                E5DFF0E6E0F0E6E0F0E6E0F0E6E0EFE4DEEDE1DBEDE3DDEEE3DDF0E6E0F0E6E0
                F0E6E0ECE0DAECE2DCEDE0DAEFE5DFF0E6E0F0E6E0ECE0DAECE2DCEDE0DAEFE5
                DFF0E6E0F0E6E0F0E6E0EDE3DDEDE0DAEFE5DFF0E6E0F0E6E0F0E6E0EDE3DDED
                E0DAEFE5DFF0E6E0F0E6E0F0E6E0EFE5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0
                F0E5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E5DFF0E6E0F0E6E0F0E6E0F0E6
                E0F0E6E0F0E5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E5DFF0E6E0F0E6E0F0
                E6E0F0E6E0F0E6E0F0E5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E5DFF0E6E0
                F0E6E0F0E6E0F0E6E0F0E6E0F0E5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6
                E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0
                E6E0F0E6E0EFE5DFEFE5DEEFE5DEEFE5DFEFE5DEEFE5DFEFE5DEEFE5DEEFE5DE
                EFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE4DDEFE5DEEFE5DEEFE5
                DEEEE4DDEFE5DEEFE4DDEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE4DDEFE5DEEF
                E5DEEFE5DEEEE4DDEFE5DEEFE4DDEFE5DEEFE5DEEFE5DEEEE4DDEEE4DDEEE3DC
                EEE4DDEEE3DCEEE4DDEEE3DCEDE1DAEDE2DBEEE4DDEFE4DDEFE5DEEFE5DEEFE5
                DEEEE4DDEEE4DDEEE3DCEEE4DDEEE3DCEFE5DEF1E8E2F3ECE6F2E9E3F1E7E1F1
                E8E2F2EAE4F3EBE5F0E6DFF1E8E2F3ECE6F2E9E3F1E7E1F1E8E2F2EAE4F3EBE5
                F0E6DFF1E8E2F3ECE6F2E9E3F1E7E1F1E8E2F2EAE4F3EBE5F0E6DFF1E8E2F3EC
                E6F2E9E3F1E7E1F1E8E2F2EAE4F3EBE5F0E6DFF1E8E2F3ECE6F2E9E3F1E7E1F0
                E7E1F2E9E3F3EBE5F0E6DFF1E8E2F3ECE6F2E9E3F1E7E1F0E7E1F2E9E3F3EBE5
                F0E6DFF1E8E2F3EBE5F1E7E1F0E6E0E7D9D2E5D8D1E4D7D0E5D7D1696967D9D9
                D9F8F4F3F8F5F3F8F5F3FAF7F6FBF9F8FBF9F7FBF9F7FBF9F7FBF9F7F9F7F5FB
                F9F7FBF9F7FCFAF9FCFAF9FCFAF9FAF5F4FBF9F8FCFAF9FCFBF9FCFBFAFCFBFA
                F7F4F3FAF7F6FCFBFAFDFBFAFBF9F8FCFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFB
                FAFDFBFAFDFBFAFCFAFAFDFBFBFDFBFAFDFBFBFDFBFBFDFBFAFCF9F9FDFBFAFD
                FBFAFBF8F8FDFAFAFDFCFBFDFCFBFBF8F7FDFCFBFDFCFBFDFCFBFDFBFBFDFCFB
                FDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFCFBFAFCFAF9FBF8F7FDFCFBFCFAF9FBF9
                F7FCFAF9FCFAF9FCFAF9FBF9F7FCFAF9FCFBFAF9F6F5FDFBFAFCFAF9FDFBFBFD
                FBFBFDFBFAFCF9F9FDFBFAFDFBFAFBF8F8FDFAFAFDFCFAF9F6F4FBF9F7FBF9F7
                FBF9F7FBF9F8FCFAF9FCF9F9FDFBFAFDFBFAFBF8F8FDFAFAFDFCFAFAF7F5FBF8
                F7FBF9F7FBF9F7FBF9F7FCFAF9FDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFD
                FCFAFBF8F7FBF9F8FCFAF9FCF9F8FCF9F8FCFAF8FCFAF8FCFAF8FDFBFAFDFCFB
                FDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBF9FCFAF8FCFAF8FEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCFBF9FCFAF9FBF9F7FBF9F7FBF9F7FC
                FAF8FDFCFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFBFCFAF9FCFAF8FCFAF9
                FDFBFAFDFCFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFDFC
                FBFEFDFCFCFAF9FDFBFAFCFAF9FEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFDFCFCFE
                FDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFCFBFEFCFCFDFBFBFAF6F6FEFDFC
                FEFDFDFDFCFBFDFCFCFDFBFBFDFBFBFEFDFDFEFDFDFEFDFCFDFCFBFEFDFCFEFD
                FCFCFBFAFCFBFAFDFCFCFEFDFDFCFBFBF9F8F7FAF9F8FBFAF9FDFCFBFEFCFBFC
                FAF9FCFBF9FEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFCFC
                FDFCFCFEFDFDFEFDFDFDFCFCFEFDFCFEFDFCFDFCFBF9F7F6FCFAF9FBF9F8FDFB
                FAFEFCFCFEFDFDFEFDFDFEFDFCFEFDFCFDFCFBFBF9F7FCF9F8FCFBF9FEFDFDFE
                FDFDFEFDFDFEFDFDFCFBFBFDFAF9FBF8F6FAF7F5FAF7F5FBF8F6FAF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FBF8F6F9F5F4F8F5
                F3F8F5F3F8F5F3D9D9D96969678080FD8787FD8E8EFDB3B1F8D4D1F4D4D1F4D4
                D1F4D4D1F5D7D3F5D5D1F2CFCCF3CFCCF5CBC9F5D0CBF5D3CFF4D5D0F2D3D0F4
                D1CDF5CDCBF5CCCAF5CECBF5CDCBF5CECCF4D0CCF2D3CDF2D2CEF5D2CFF6D0CD
                F6CDCCF5CBC9F4CBCAF6CBC9F5CBCAF6CDCBF5CECBF4D0CFF4D1CFF4D2CEF6CF
                CDF6CDCAF5CBC8F4CCCAF5CCCAF5CAC9F4CBC7F4CCC8F4D0CBF3D0CAF4CCCAF6
                CAC9F7CAC6F5CBC8F4CCC9F5CCC9F5CBCAF5CCC8F4CCCAF4CFCDF5D0CDF6CDCA
                F8C9C7F8C8C5F7C9C6F5C9C6F5CAC5F5C9C5F5C9C6F5C9C6F5C9C7F5CBC7F6C9
                C7F8C7C4F9C6C2F8C7C4F7C8C7F6C9C7F5C9C8F5C8C8F4CAC8F4CBCAF5C9C8F5
                C6C5F8C3C1FAC1C1FAC4C3F8C6C4F8C5C4F8C3C3F9C5C3F8C7C5F8C9C6F7C9C6
                F6C7C3F9C2C0FBC0C0FBC3C2F9C8C4F7C9C6F5C8C6F6C7C5F7C5C4F8C6C4F9C6
                C3F9C4C3FAC2C1FBC1C0FAC2C1F9C5C2F7C6C4F7C5C3F8C4C2F9C1BFFAC1C0FA
                C2C2F9C4C3F8C6C4F8C7C3F8C3C1F9C1BFFAC1BFFBC2C0F9C3C2F8C3C4F8C3C2
                F9C2C1F9C0C0FAC0C0FAC1C1F9C3C2F9C5C2F9C4C1F9C2C0F9C0C0FAC0C0FAC1
                C1F9C2C2F8C4C2F9C2C0FAC0BFFBBFBFFBC0C0FAC1C2F9C2C3F8C3C3F8C2C2FA
                C0BFFBBFBDFBBFBEFAC2C1F9C4C4F8C5C3F8C2C2FAC0BFFBBFBEFBBFBDFBC1C0
                F9C2C0F8C2C1F7C2BFF8C0BDF9BFBCFABFBDFAC1BFF9C2C0F7C2C0F8C1BFF8C0
                BEF9BFBEFABFBFFAC1BFF9C2C0F8C2C0F8C1BFF8BFBEF9BDBDFABEBEFAC1BFF8
                C4C1F7C4C1F6C5C3F5C6C5F7CCCAF8CECBF9C8C6FAC4C2F8C5C2F5C5C2F6C6C3
                F5C7C4F6CDCCF8CCCCF9C8C6FAC4C2F8C4C2F5C4C3F7C4C2F7C7C5F7CCC9F8CC
                C9F9C7C6FBC3C3F8C6C4F6C7C5F7C9C6F8C6C5FAC4C2F8C6C2F7C4C0F6C0BDF5
                BBBAF7B8B7F7B5B3F7B3B3F8B1B1F8B2B1F8B1AEF8B0ADF8B1ADF8B2AFF8B6B3
                F7B8B6F7B8B5F7B5B2F7B1B0F8AFAFF9B1AEF8B3B1F8B5B4F9B9B8F9BBBBF9BC
                BBF9BCBBF9BBBAF8B8B7F8B5B3F8B1AFF8AFADF9ADAAF9ADABFAAFAEF9B0B0F9
                B1AFF8AEADF8AAAAF8A8A6F9A5A3F9A3A2F9A0A0FAA0A1FAA4A3F9ACAAF7AFAF
                FBB0B0FCAFB0FC8A8BFC8383FC7D7DFC7E7EFC6969676969678080FD8787FD8E
                8EFDB3B1F8D4D1F4D4D1F4D4D1F4D4D1F5D7D3F5D5D1F2CFCCF3CFCCF5CBC9F5
                D0CBF5D3CFF4D5D0F2D3D0F4D1CDF5CDCBF5CCC9F5CEC9F5CBC9F5CCC9F4CCCA
                F4CECAF4CECBF5CFCCF6CDCAF6CCCAF6CAC8F6CAC8F5CAC9F6CAC8F6CBC8F5CC
                C9F5CECCF5CFCDF5CECCF6CECBF6CCCAF5CAC8F5CBC9F5CAC8F5C9C7F5CAC7F4
                CBC7F4CEC8F3CECAF4CBC8F6CAC7F6C9C6F5CBC7F4CBC7F5CBC7F5CAC9F5CBC8
                F4CCC9F4CDCAF5CDCBF7CBC9F8C9C7F8C8C6F7C8C6F5C9C5F5C9C5F5C9C5F5C8
                C6F5C9C6F5C9C7F5C9C7F7C8C6F8C7C4F9C6C4F8C7C4F7C7C5F6C8C6F5C7C7F5
                C8C7F4C9C8F4C9C8F5C8C7F6C6C4F8C3C2FAC2C2FAC4C3F9C6C4F8C5C4F8C4C3
                F9C5C3F8C7C4F8C8C5F7C8C6F7C6C3F9C3C1FBC2C0FBC4C2F9C5C4F8C7C4F6C8
                C5F7C6C4F7C6C4F8C5C3F9C5C3F9C3C3FAC2C1FBC1C0FAC2C1F9C5C2F8C5C4F7
                C4C3F8C3C2F9C2C0FAC1C0FAC2C1F9C4C3F9C6C4F8C5C3F9C3C1F9C1BFFAC1BF
                FAC2C0F9C3C2F9C3C4F8C3C2F9C2C1F9C0C0FAC0C0FAC1C1F9C3C2F9C5C2F9C4
                C1F9C2C0F9C0C0FAC0C0FAC1C1F9C2C1F8C3C1F9C2C0FAC1C0FBBFC0FBC0C1FA
                C1C2F9C2C3F9C3C3F9C2C2FAC0BFFBC0BEFBC1BFFAC2C1F9C3C3F8C4C3F9C2C2
                FAC0C0FBC0BEFBC0BDFBC1BFF9C2C0F8C2C1F8C1BFF8C0BEF9C0BEFABFBEFAC0
                BFF9C1C0F7C2C0F8C1BFF8C0BEF9BFBEFAC0BFFAC1BFF9C2C0F8C2C0F8C1BFF8
                BFBEF9BEBDFABFBEFAC1BFF8C4C0F7C4C1F7C5C3F6C6C5F7CBC9F8CCC9F9C8C6
                FAC5C3F8C5C2F7C4C2F6C6C3F5C7C4F6CCCBF8CBCBF9C8C6FAC5C3F8C4C2F6C4
                C2F7C4C2F7C6C5F8CBC8F8CBC8F9C7C6FBC3C3F8C6C4F6C7C5F7C8C5F8C5C5FA
                C4C2F8C5C2F7C4C0F6C0BDF5BCBAF7B8B7F7B6B3F8B4B3F8B2B3F8B2B1F8B1AF
                F8B1AEF8B2AEF8B2B0F8B6B4F8B8B6F7B8B5F7B5B2F7B2B0F8B1AFF9B1AFF8B3
                B1F8B6B5F9B9B8F9BBBAF9BBBAF9BBBBF9BBBAF8B8B7F8B5B4F8B1B1F8B0AEF9
                AEAAF9ADACFAAFAEF9B0B0F9B1AFF8AEADF8AAABF8A8A6F9A5A4F9A3A3F9A1A1
                FAA0A1FAA4A3F9ACAAF8AFAFFBB0B0FCAFB0FC8A8BFC8383FC7D7DFC7E7EFC69
                6967696967D0CEF0D2D0F1D4D2F2DFDCF2E5E1F4E1DEF6E0DDF6E0DDF6E0DDF6
                DEDBF3DEDAF2E0DDF6E0DDF6E0DDF6E0DDF6DEDBF3DEDAF2DFDCF4DEDAF2E0DD
                F6E0DDF6E0DDF6E0DDF6DEDBF3DEDAF2DFDCF4DFDBF3DFDCF5E0DDF6DED9F1DF
                DBF4E0DDF6DFDCF4DFDCF5E0DDF6E0DDF6DFDDF6DEDCF7DBD6F1DDDBF6DEDCF7
                DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDD
                F6DEDCF7DBD6F1DDDBF6DDDBF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DF
                DCF6DFDCF5E0DDF6E0DDF6DFDDF6DEDCF7DBD6F1DDDBF6DDDBF7DDDBF7DDDBF7
                DCDAF7DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDDF6DFDDF6E0DD
                F6E0DDF6DFDDF6DEDCF7DBD6F1DDDBF6DDDBF7DDDBF7DDDBF7DCDAF7DCDAF7DC
                DAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6
                DEDCF7DBD6F1DDDBF6DCDAF7DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DD
                F6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6DEDCF7DBD6F1DDDBF6DCDAF7DCDAF7DC
                DAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6
                E0DDF6DDDBF6DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDDF6DFDD
                F6E0DDF6E0DDF6DFDDF6E0DDF6DDDBF6DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0
                DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6E0DDF6DDDBF6DCDAF7DCDAF7
                DDDAF6DEDBF5DFDCF5DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3
                F3E8E4F2E9E1E9E7E3F0E6E3F4E3E0F4DEDCF7DEDCF7DEDCF7DFDCF6E5DFEEE4
                DFF1E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2E9E6F3E5E1F3
                E0DDF6DFDDF6E5E1F2EAE6F1E9E1E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9
                EFF0ECF2ECE9F4E6E1EFE1DEF3DFDBF2E5E1F2EDE9F3EBE4EDEBE5F0EBE7F2ED
                E9F1EEEAF0EFEAF0EFE8EFF1EEF4F0ECF5EAE2EAE7E3F0E6E3F4E9E5F4EFEAF2
                F0EBF2EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F2EFF6EBE5EDEBE5
                F0EBE7F2EDE9F0EEE9EEF4F0F5F1ECF1F0EDF2ECE4EAF2EDF2EEE9F5E3E0F6D8
                D6F3D6D4F2D4D2F2D4D1F26969676E6D6CDED1CCE0D2CDE1D4CEEAE0DAF4ECE7
                F4ECE7F3E9E4F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7
                E1F1E7E1F0E6E0EFE5DFF1E7E1F0E6E0F0E5DFEFE5DFEFE5DFF1E7E1F1E7E1F1
                E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F0E6E0F0E6E0EFE5DFF1E7E1
                F0E6E0EFE5DFEFE5DFF1E7E1F1E7E1F1E7E1F0E5DFF1E7E1F1E7E1F0E5DFF1E7
                E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F0
                E5DFEFE5DFEFE5DFF1E7E1F1E7E1F1E7E1F0E5DFEFE5DFEFE5DFF1E7E1F1E7E1
                F1E7E1F0E6E0F0E6E0EFE5DFF1E7E1F1E7E1F0E6E0F0E6E0F0E6E0F0E6E0F1E7
                E1F1E7E1F1E7E1F1E7E1F0E5DFF1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1
                E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1
                F0E6E0F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F1E7
                E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1
                E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1
                F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7
                E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1
                E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F0E6E0F1E7E1
                F1E7E1F1E7E1F0E6E0F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7
                E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F0E6E0F1E7E1F1E7E1F1
                E7E1F0E6E0F1E7E1F1E6E0F1E7E0F0E5DFF1E7E1F1E7E1F1E7E1F0E6E0F1E7E1
                F0E6E0F1E7E0F0E5DFF1E7E1F1E7E1F1E8E2F2E8E2F1E8E2F1E7E1F0E6E0F2E8
                E3F4EBE6F2E8E3F1E8E2F2E8E2F1E8E2F1E7E1F0E6E0F2E8E3F4EBE6F2E8E3F1
                E8E2F2E8E2F1E8E2F1E7E1F0E6E0F2E8E3F4EBE6F2E8E3F1E8E2F2E8E2F1E8E2
                F1E7E1F0E6E0F2E8E3F4EBE6F2E8E3F1E8E2F2E8E2F1E8E2F1E7E1F1E7E1F2E8
                E3F4EBE6F2E8E3F1E8E2F2E8E2F1E8E2F1E7E1F1E7E1F2E8E3F4EBE6F2E8E3F1
                E8E2F2E8E2F1E7E1F1E7E1E3D6D0E2D4CFE1D3CEDFD2CD6E6D6CDBDADAF7F3F2
                F7F4F2F7F4F3FAF7F6FCFAF9FCFAF9FCFAF8FCF9F8FCF9F8FAF8F7FCFAF8FBF9
                F7FCFAF8FCFAFAFCFBFAFBF9F8FCFAF9FCFBFAFCFBFAFBFAF9FBF9F8FAF8F7FB
                FAF9FCFBFAFBF8F7FAF8F7FCFBFAFBF9F8FCFAF9FDFBFAFDFBFAFDFBFBFDFBFB
                FDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFAFDFBFBFDFBFBFDFB
                FBFDFBFBFDFCFBFDFBFBFCFAFAFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFBF9F8FDFAF8FDFBFA
                FBF8F8FDFAFAFCFBFAFDFBFAFCFAF9FDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFB
                FBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFAFBF8F7FBF9F7FBF9F7FBF9F7FC
                FAF9FDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFAFBF8F7FBF9F8FBF9F8
                FBF9F8FBF9F8FCFAFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFBFAFBF9
                F8FBF9F8FCFAF8FCFAF8FCFAF8FCFBF9FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBFAFEFDFCFEFDFCFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFDFCFAFBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F8FCFAFAFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFEFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFBF8F8FDFCFB
                FBFAF8FDFBFAFBF7F6FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFBFAFAFBFA
                FAFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFCFEFDFCFEFDFCFD
                FBFBFEFCFCFDFCFCFEFDFDFEFDFDFEFDFCFEFDFCFCFAFAFEFDFDFEFDFDFEFCFC
                FEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFDFB
                FBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFCFEFDFDFDFCFCFEFCFCFEFCFCFE
                FDFDFEFDFDFEFDFCFEFDFCFEFDFCFCFBFAFAF8F8FBFAF9FBF9F7FCFAF9FDFCFB
                FDFBFAFEFDFCFEFDFCFEFDFCFDFBF9FCF9F8FAF6F6FDFBFBFEFDFDFEFDFDFEFD
                FDFEFDFDFDFBFAFBF9F8FAF7F5FAF7F6FAF6F6FDFBFAFDF9F9FCF9F8FBF8F6FB
                F8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6F8F5F3F8F4F3F7F4F3
                F7F4F2DBDADA6E6D6C6E6EFD7575FD7C7DFDA8A7F9D1CFF4D2CFF4D2CFF4D2CF
                F4CFCCF5C4BFF3BAB6F7B4B3F7B8B5F7C0BEF7C3C0F5C3C0F5BEBAF5BAB7F7B8
                B6F7B9B6F5BAB6F2B8B6F5B5B1F4B5B0F3B6B1F4B6B4F6B8B7F8B7B6F8B6B5F8
                B8B5F7B9B5F5B8B6F6B3B3F6B3AEF6B6B0F4B6B4F5B7B6F6B8B8F8B9B6F8B8B5
                F7B8B7F6B9B6F4B9B6F5B7B5F5B7B4F4B8B3F4B9B3F5B9B5F5B9B6F7B7B5F7B6
                B6F7B9B6F6B9B7F4B9B5F5B7B4F5B6B2F5B7B2F5BAB6F5BBB8F7BAB9F8B8B6F8
                B7B6F8B8B6F7BAB7F6BAB7F5B9B5F5B8B5F5B8B6F5BAB7F6BAB8F7B9B7F8B8B6
                F9B8B6F9B9B7F8B9B7F6B9B7F5B7B7F4B7B4F3B8B4F4B9B6F5B8B6F6B6B6F8B5
                B5FAB4B4F9B6B4F9B7B6F9B6B7F9B6B6F9B8B5F9B7B5F8B8B7F7B9B7F7B6B5F9
                B3B3FAB4B2FBB5B3FAB7B5F7B9B6F6B9B6F6B7B6F8B7B4F9B7B5FAB7B5FAB6B5
                FAB4B4FAB2B3FAB5B4F9B7B5F8B8B5F8B6B5F8B6B4F9B4B3FAB4B3FAB4B4F9B6
                B5F9B7B6F8B7B6F8B5B3F8B3B3FAB3B1FAB5B3F9B6B5F9B7B5F9B6B5F9B4B4F9
                B4B4FAB4B4FAB4B5F9B6B5F9B7B5F9B6B3F9B4B2F9B4B3FAB3B4FAB4B4F9B5B3
                F9B5B5F9B5B4FAB4B3FBB3B4FBB4B4FAB5B4FAB5B6F9B6B5F9B6B3FAB5B2FBB3
                B0FBB4B3FAB5B3F9B7B5F8B6B6F9B5B5FAB3B2FBB2B2FBB3B1FAB4B3F9B5B3F8
                B4B3F8B3B2F8B3B0F8B2B1F9B3B2F9B4B2F9B5B3F8B5B3F8B4B2F8B2B1F8B2B2
                F9B2B2F9B4B3F9B5B2F8B6B2F8B5B1F7B2B0F8B2B1F9B2B0FAB3B1F8B5B3F7B6
                B2F7B6B3F6B8B6F5BCBAF6BDBBF8B6B6FAB4B1F9B5B1F5B2B0F8B2AFF6B6B4F6
                BBBBF7BCBAF6B8B5FAB3B4F8B5B3F6B5B2F7B3B2F7B6B6F7BCBBF7BCB9F8B6B4
                FAB4B1F8B5B3F6B7B5F7B8B8F6B4B5F9B3B2F9B5B2F7B4B1F7B1AEF7AFACF7AD
                ACF7AAAAF8A9A8F8A8A8F9A8A7F9A8A6F9A8A6F9A8A5F9A8A7F9AAA8F8ACAAF8
                ACAAF8AAA9F8A8A8F8A6A8F9A8A7F9AAA8F9ABAAFAADACFAAFAEF9B0AFF9B0AF
                F9AFAEF8ACACF8AAA9F9A8A6F9A5A5F9A2A3F9A3A3FAA4A3F9A5A4F9A5A4F9A4
                A3F9A2A1F9A1A0FA9F9FFA9E9DFA9B9AFA9899FA9C9CF9A2A1F8A8A7F9A9A9FA
                ACACFC7B7AFC7373FC6D6DFC6767FC6E6D6C6E6D6C6E6EFD7575FD7C7DFDA8A7
                F9D1CFF4D2CFF4D2CFF4D2CFF4CFCCF5C4BFF3BAB6F7B4B3F7B8B5F7C0BEF7C3
                C0F5C3BFF5BEBAF5BAB7F7BAB7F6B9B6F6BAB6F4B9B6F4B7B4F4B7B4F4B8B4F5
                B8B6F6BAB8F8B9B8F8B8B7F8B9B8F7B9B7F6B8B6F6B5B3F5B5B2F5B8B3F4B7B6
                F5B9B8F6B9B8F8B9B9F8BAB7F7B8B7F6B9B7F4B9B7F5B8B6F4B7B4F4B8B4F4BA
                B4F5BAB6F6B9B6F7B7B7F7B7B7F7B9B6F6BAB7F5BAB6F5B8B6F5B7B4F5B9B5F5
                BBB6F6BBB8F7BAB9F8BAB7F8B8B7F8B9B6F7BAB7F6BAB7F5BAB6F5BAB6F5BAB7
                F5BAB7F6BAB8F7B9B8F8B9B7F9B9B7F9B9B7F8BAB8F6B9B8F5B8B7F4B7B5F4B8
                B5F4B9B7F5B9B7F7B7B7F8B6B6F9B5B5F9B6B5F9B8B6F9B6B7F9B8B7F9B9B7F9
                B8B7F8B9B7F7B9B7F8B7B5F9B4B5FAB6B4FBB5B4F9B7B6F8B9B6F6B9B6F7B8B6
                F8B8B5F9B7B5FAB7B6FAB6B6FAB4B5FAB4B5FAB5B5F9B7B6F8B8B7F8B8B6F8B6
                B4F9B5B4FAB5B3FAB5B5F9B7B5F9B7B6F8B7B6F9B6B3F9B4B3FAB4B4FAB5B4F9
                B6B5F9B7B5F9B6B5F9B5B4F9B5B4FAB4B5FAB6B5F9B6B5F9B7B5F9B6B4F9B4B3
                F9B4B4FAB4B4FAB5B5F9B6B5F9B6B5F9B6B5FAB5B5FBB4B4FBB5B5FAB6B6FAB6
                B6F9B7B6F9B6B5FAB5B3FBB4B4FBB5B4FAB5B4F9B7B5F9B7B6F9B6B5FAB5B3FB
                B4B3FBB5B2FAB5B3F9B5B3F8B4B4F8B4B3F8B4B1F8B3B2F9B4B2F9B5B3F9B5B4
                F8B5B3F8B4B3F8B4B2F8B4B3F9B3B2F9B4B3F9B5B3F8B6B3F8B5B2F8B4B1F8B2
                B2F9B3B1F9B5B2F8B6B3F7B7B4F7B8B4F6B8B6F6BCB9F6BCBAF8B8B7FAB6B3F9
                B5B3F6B5B2F7B4B2F6B7B5F6BBBAF7BBBAF7B9B7F9B6B5F8B5B4F7B6B3F7B5B4
                F7B7B6F7BCB9F7BBB8F8B9B5F9B5B4F8B6B5F7B7B6F7B8B7F7B6B5F8B4B4F8B6
                B3F7B5B2F7B1AFF7B0AEF7ADACF7ABABF8AAAAF8A8A8F9A9A8F9A8A7F9A8A6F9
                A8A5F9A8A8F9AAA9F8ACAAF8ACAAF8ABA9F8A9A8F8A8A8F9A9A8F9AAA9F9ACAB
                FAAEADFAAFAEF9B0AFF9B0AFF9AFAEF8ADACF8AAAAF9A8A7F9A5A5F9A4A4F9A4
                A4FAA5A3F9A5A4F9A5A4F9A4A3F9A2A2F9A1A0FAA09FFA9E9DFA9B9BFA9A9AFA
                9C9DF9A2A1F8A8A7F9A9A9FAACACFC7B7AFC7373FC6D6DFC6767FC6E6D6C6E6D
                6CCAC8EECCCAEFCECCF0DDDAF1ECE8F1ECE8F1E8E5F3E7E3F4E7E4F4E5E1EFE3
                DCEDE3E0F2E6E3F4E7E3F4E7E4F4E5E1EFE3DEEFE5E1EFE3DCEDE3E0F2E6E3F4
                E7E3F4E7E4F4E5E1EFE3DEEFE4DFEDE2DDF1E2DDF0E3E0F2E6E3F4E7E3F4E6E3
                F4E5E1EFE3DEEFE4DFEEE1DEF3DFDBF2DFDBF4E0DDF6DFDCF4DFDCF5E1DEF6E1
                DFF6E1DFF6DFDDF6DBD6F1DFDDF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2DFDBF4
                E0DDF6DEDBF5DDDBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E2DD
                F1E4DFEEE1DEF3DFDBF2DFDBF4E0DDF6DEDBF5DDDBF6DDDAF7DCDAF7DCDAF7DD
                DBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3
                DFDBF2DFDBF4DFDCF6DDDBF5DDDBF6DDDAF7DCDAF7DCDAF7DDDBF7DCD8F4DEDC
                F5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2DFDBF4E0
                DDF6DEDBF5DCDAF7DDDBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2
                E1DDF2E4DFEEE1DEF3DFDBF2DFDBF4E0DDF6DEDBF5DCDAF7DDDBF7DCD8F4DEDC
                F5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2DFDDF5DD
                DBF7DDDBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEE
                E1DEF3DFDBF2DFDDF5DDDBF7DDDBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DE
                F3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2DFDDF5DDDBF7DDDBF7DCD8F4DEDCF5E4
                E0F0E0DEF4E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1
                EBE4EDEBE5F0EBE7F2E6E2F2DFDDF6E0DDF6E0DDF6DFDDF6E5E1F2EAE6F1E9E1
                E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2ECE9F4E6E1EFE1DEF3DF
                DBF2E5E1F2EDE9F3EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4
                F0ECF5EAE2EAE7E3F0E6E3F4E9E5F4EFEAF2F0EBF2EFEBF2EEEAF2EEE9F1EFEB
                F0F1EDF2F0ECF1F4F0F4F2EFF6EBE5EDEBE5F0EBE7F2EDE9F0EEE9EEF4F0F5F1
                ECF1F0EDF2ECE4EAF2EDF2F5F0F4F5F1F5F4F2F5F3EEF3F0EBF2EFEBF2EEEAF2
                EEE9F1F1EEF2F6F3F7F7F5F8F7F5F9F7F5F8F8F5F8F5F3F9E7E5F7D2D0F1D0CE
                F0CECCEFCCCAEF6E6D6C737271DBCECADCCFCBDED0CCE9DED9F4ECE8F4ECE8F4
                EBE6F1E7E1EFE4DEF1E8E2F0E7E1F0E5E0EFE6E0EFE5DFF1E8E2F0E7E1F0E5E0
                EEE3DEEEE2DCEFE5DFF0E7E1F1E8E2EEE3DEEEE2DCF1E8E2EFE5DFEFE4DFEEE2
                DDEFE4DEEEE3DDF1E8E2F1E8E2F1E8E2F1E8E2EFE4DFF0E5DFF1E8E2F1E8E2EE
                E3DEEEE2DCF1E8E2F1E8E2F1E8E2F1E7E1F0E6E0F1E8E2F0E6E0F1E8E2F1E7E1
                F0E7E1EFE5DFF1E8E2F0E7E1EFE4DFEEE2DDEFE4DEEDE1DBF0E7E1F1E8E2EEE3
                DEEEE2DCF1E8E2F1E8E2F1E8E2F1E8E2EEE3DEEEE2DCF1E8E2F1E8E2F1E8E2F1
                E8E2EFE4DFF0E5DFF1E8E2F1E8E2F1E7E1F0E7E1F0E7E1F0E5DFF1E8E2F1E8E2
                F1E8E2F1E8E2F0E7E1F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8
                E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2
                F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8
                E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2
                F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8
                E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F0E7E1F1E8E2F1E8E2F1E8E2
                F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F0E7
                E1F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F0E7E1F1E8E2F3EAE6
                F4ECE7F1E8E2F1E8E2F1E8E2F1E8E2F0E7E1F1E8E2F3EAE6F4ECE7F1E8E2F1E8
                E2F1E8E2F1E8E2F0E7E1F1E8E2F3EAE6F4ECE7F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F3EAE6F4ECE7F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F3EAE6
                F4ECE7F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F3EAE6F4ECE7F1E8E2F1E8
                E2F1E8E2F1E8E2E0D3CDDFD1CCDDD0CBDCCFCB737271DCDCDBF6F3F2F6F3F2F7
                F3F2F9F7F5FCFAF9FCFAF9FCFAF9FCFAF9FCFAF9FAF7F6FCF9F8FCFAF9FCFAF9
                FCFBFAFCFBFAF9F7F6FBF9F8FCFBFAFCFBFAFBF9F9FBF7F7FBF7F6FCF9F8FBF9
                F8FAF5F5FDF9F8FBF9F8FAF5F5FDFAF9FDFBFAFBF8F8FDFAFAFDFCFBFDFCFBFD
                FBFAFDFBFAFDFCFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFBFAFDFBFAFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFCFBFAF9F6F5FDFBFAFCFAF9FDFBFBFDFBFBFDFBFAFC
                F9F9FDFBFAFDFBFAFBF9F9FDFBFBFDFBFAFDFCFBFDFBFBFDFBFBFDFBFBFDFBFB
                FDFBFBFDFBFBFDFCFBFDFCFBFDFBFAFBF9F8FBF9F8FBF9F8FBF9F8FCFAFAFDFB
                FBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFBFAFBF9F8FBF9F8FCF9F8FCF9F8FC
                F9F8FDFBFAFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFAFCF9F8FCF9F8
                FBF8F7FDFBFAFDFCFBFDFCFBFDFCFBFEFDFCFEFDFCFDFCFBFDFBFAFDFCFBFAF7
                F6FDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFEFDFCFEFDFCFE
                FDFCFDFCFBFDFBFAFEFCFBFCFBFAFBF9F8FBF9F8FBF9F8FBFAF9FDFBFAFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFC
                FCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFAF6F6FDFCFBFCFBFAFD
                FCFBFDFBFAFDFCFBFEFDFCFEFDFDFEFDFDFDFCFCFBFAFAFBFAF9FCFBFAFDFCFC
                FDFBFBFDFBFBFEFDFDFEFDFDFEFDFCFDFCFBFEFDFCFEFDFCFCFBFAF9F8F7FCF9
                F9FEFCFCFEFDFDFEFDFCFEFDFCFEFDFCF7F2F2FDFCFCFEFDFDFEFDFDFEFDFDFD
                FCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFCFCFDFCFCFEFDFD
                FEFDFDFDFCFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFDFCFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFCFCFEFDFCFEFDFDFDFBFAFBFAF9FCFBFAFAF7F7FB
                F9F9FDFCFCFDFBFBFCFAF9FCF9F8FDFAF9FDFCFCFEFDFDFEFDFDFDFCFCFEFDFC
                FDFCFBFCF9F7FBF8F7FAF7F5FCFBFAFEFDFDFEFDFDFEFDFCFCFAF9FCF9F8FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F7F8F5F3F7F3F2F6F3F2F6F3F2DC
                DCDB7373715C5CFD6262FD696AFD9C9BF8CDCAF4CFCBF4CECCF4CCC9F5C6C5F6
                B1B1F7A7A8FAA9A9F9ABABF9AEADF8ADABF7ABA9F7A9A7F7A7A6F8A7A5F9A7A6
                F7A9A5F6A6A4F4A29FF3A19BF2A39DF5A3A1F8A6A3F9A5A5FAA4A6F9A6A5F9A7
                A5F7A6A3F5A29EF4A09BF3A09CF4A4A0F6A3A3F8A6A5F9A5A6F9A6A6F9A8A7F8
                AAA6F6A8A5F5A5A5F4A3A1F2A3A0F2A4A1F5A6A2F7A7A5F8A7A6F9A8A5F9A8A8
                F8AAA8F6A9A6F5A6A1F4A4A0F3A4A2F4A7A3F6A9A7F8AAA9F9A9A9F9AAA9F9AA
                A9F8ACA9F7ACA8F6ABA7F5AAA7F5ABA7F4AAA8F6AAA8F8ABAAF9AAAAFAACABFA
                ADAAF9ACAAF7ABA8F5AAA6F3A5A5F2A6A6F4A8A6F6AAA9F8ABAAF9AAAAFAA9A9
                F9A8AAF9ABAAF9ABABFAABABFAACABFAACABF9ABA9F8ABA9F8ABA9F8A9A8FAA9
                A7FBAAA8FAACA7F8ABA8F7AAA8F6AAA8F8AAA9FAAAA9FAA9AAFAAAA8FAA9A9FA
                A8A9FAA9A9F9ABA9FAACABF9ACAAF9AAA8F9AAA7FAA9A9FAA9A9F9AAA8F9AAAA
                F9A9A8F9A9A7F9A8A8FAA8A7FAA9A9F9AAA9FAABAAFAABA9F9A9A7F9A9A8F9A9
                A9F9AAAAF9ABAAFAABA9FAA9A9F9AAA8F9A9A7F9AAA9F9AAAAF9AAA9F9AAA9FA
                ABAAFBAAABFBA9AAFBABABFAACABFAABAAFAACABFAABA9FBA9A9FBAAA9FBABA9
                FAABA9FAACA9FAACAAFAABAAFBAAA9FBA9A9FBA9A8FAAAA8F9AAA8F9AAA9FAAA
                A8F8AAA8F7A9A7F8A9A7F9AAA7F9ABA9F9ACAAF9ABA9F8AAA8F8A8A8F9A8A7F9
                A9A9F9AAA8F9ABA8F9AAA7F8AAA7F7A8A6F9A8A8F9A8A8F8AAA8F8AAA8F8ABA6
                F7ACA8F7AEABF7AEABF6AAA9F8A8A7F8A8A7F8A9A7FAA9A5F7A9A5F4ACAAF7AD
                A9F7ABA8F8A7A6F8A8A7F8A9A8F9A7A8F8A8A6F5ADAAF7ADAAF7ABA9F8A8A6F8
                A8A6F8A9A8F8ABAAF8AAA7F9A7A6F8A8A5F8A9A6F8A6A6F8A4A4F7A4A4F8A4A1
                F9A3A2F9A2A2FAA1A1FAA1A1FAA0A1FAA1A0FAA1A0FAA1A1F9A2A1F9A2A1F9A1
                A1F9A0A1F9A1A1F9A1A1FAA1A0FAA3A1FAA4A2FAA4A3F9A4A4F9A5A4F9A4A3F9
                A2A3F9A1A1FAA0A0FA9E9EFA9D9CFA9C9CFA9A9BF99B9AF99B9AF99B9AF99B9A
                FA9C9AFB9C9BFB9B9AFB9898FA9797F99898F99E9EF9A2A2F8A4A3F8A6A6FB6A
                6AFC6363FD5C5CFD5757FD7372717373715C5CFD6262FD696AFD9C9BF8CDCAF4
                CFCBF4CECCF4CCC9F5C6C5F6B1B1F7A7A8FAA9A9F9ABABF9AEADF8ADABF7ACA9
                F7A9A7F7A9A6F8A9A6F8A9A6F7A9A5F6A9A6F4A6A3F3A6A3F4A6A2F5A7A4F7A9
                A7F9A9A7FAA9A8F9A8A9F8AAA8F7A9A6F6A6A1F4A4A1F3A5A0F4A6A4F6A7A6F7
                A8A8F8A8A8F8AAA8F8AAA9F8ABA8F6A9A7F5A8A6F4A8A3F4A7A4F3A9A5F5A9A4
                F7AAA7F8A9A9F8AAA9F8AAA9F8ACA9F6ABA7F5A9A5F5A8A4F4A8A4F4AAA7F6AB
                A9F8ACABF9ACACF9ABABF9ACAAF8ADAAF7ADAAF6ABA9F5ABAAF5ACA9F5ACA9F6
                ABABF8ACACF9ACABFAADACFAAEACF9ADAAF7ACA9F5ABA8F4A9A7F3A9A8F4AAA9
                F6ACAAF8ACABF9ABAAF9AAAAF9ACAAF9ACABF9ACACFAADADFAADADFAADACF9AD
                ABF8ADACF8ACAAF9AAABFAABAAFAACA9FAADA9F8ACA9F7ACA9F7AAA8F8ACA9F9
                ABAAFAACABFAABAAFAAAAAFAA9ABFAABABF9ACABF9ADABF9ADABF9ACABF9ABA9
                FAABA9FAAAAAF9ACABF9ACAAF9AAA9F9ABA8F9AAA9FAA9A9FAABAAF9ABABFAAB
                ABFAABAAF9ABA9F9AAA9F9AAABF9ABABF9ABABFAACAAFAABAAF9ABA8F9AAA9F9
                AAAAF9ABAAF9ABABF9ABAAFAACABFBABACFBAAABFBACABFAACABFAADACFAADAC
                FAACABFBAAA9FBACAAFBABA9FAACABFAADABFAACACFAABABFBACABFBABA9FBAB
                A8FAABAAF9ACA9F9ABABF9ABAAF8ABA9F7AAA9F8AAA8F9AAA9F9ACAAF9ACAAF9
                ABAAF8ABAAF8AAA9F9AAA9F9AAA9F9ABAAF9ABA9F9AAA9F8AAA8F8AAA8F9A9A8
                F9A9A8F8AAAAF8ABA9F8ADA9F7ACAAF7AFABF7AFADF8ABABF8AAA9F8ABA9F8AA
                A7F8AAA7F8ACA8F6ADABF7AEABF8ABA9F8A9A8F8ABAAF8AAA9F9AAA9F8AAAAF8
                ADABF7AEACF8ADA9F8ABA8F8AAA7F8ABAAF8ACABF8ABA9F9AAA8F8A9A6F8A9A7
                F8A6A7F8A6A4F8A5A4F8A4A3F9A3A2F9A2A2FAA2A2FAA1A1FAA1A1FAA1A1FAA2
                A1FAA2A1F9A3A1F9A2A1F9A2A1F9A2A1F9A1A1F9A1A1FAA2A1FAA3A2FAA4A3FA
                A5A3F9A5A4F9A5A4F9A4A4F9A2A3F9A2A2FAA0A0FA9F9FFA9E9DFA9D9DFA9C9C
                F99C9BF99C9BF99C9BF99C9AFA9C9BFB9C9BFB9B9AFB9998FA9898FA9899F99E
                9EF9A2A2F8A4A3F8A5A6FB6B6AFC6363FD5C5CFD5757FD737271737271C4C2EC
                C6C4EDC8C7EDDAD7EFEDE9F1EDE9F1EDE9F1EDE9F1EDE9F1EAE2E9ECE7EEECE8
                F1EBE8F2EDE9F1EDE9F1EAE2E9ECE7EEEAE3EAECE7EEECE8F1EBE8F2EDE9F1ED
                E9F1EAE2E9ECE7EEE9E1E9E8E4F0EBE6EFECE8F1EBE8F2EDE9F1ECE8F0EAE2E9
                ECE7EEE9E1E9E7E3F0E6E3F4E7E3F4E6E3F4E5E1EFE3DEEFE3E1F3E3E1F5E3E1
                F5E2DFF5E0DDF6E2DFF3E8E1EBECE7EEE9E1E9E7E3F0E6E3F4E7E3F4E4E1F5DF
                DDF5DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9
                E7E3F0E6E3F4E7E3F4E4E1F4E0DEF5DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDC
                F7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E5
                E2F4E1DEF5DFDDF6DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDCF7DFDCF6E5DFEE
                EBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E7E3F4E5E2F4E1DE
                F3DDDBF7DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9
                E1E9E7E3F0E6E3F4E7E3F4E5E2F4E1DEF3DDDBF7DEDCF7DEDCF7DFDCF6E5DFEE
                EBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E3E0F4DEDCF7DEDC
                F7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6
                E3F4E3E0F4DEDCF7DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3
                E8E4F2E9E1E9E7E3F0E6E3F4E3E0F4DEDCF7DEDCF7DEDCF7DFDCF6E5DFEEE4DF
                F1E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EF
                EBF2EEEAF2E7E2F0E2DEF2E4DFEEE1DEF3DFDBF2E5E1F2EDE9F3EBE4EDEBE5F0
                EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F0ECF5EAE2EAE7E3F0E6E3F4E9E5
                F4EFEAF2F0EBF2EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F2EFF6EB
                E5EDEBE5F0EBE7F2EDE9F0EEE9EEF4F0F5F1ECF1F0EDF2ECE4EAF2EDF2F5F0F4
                F5F1F5F4F2F5F3EEF3F0EBF2EFEBF2EEEAF2EEE9F1F1EEF2F6F3F7F7F5F8F7F5
                F9F7F5F8F8F5F8F8F6F9F8F6F9F8F5F8F5F1F3F6F2F6F1ECF1F0EDF2ECE4EAF3
                EEF2F6F2F5F0EAEBF4EFF0F8F5F6F9F6F7F8F5F7EAE8F5CDCBEFCAC8EEC8C6ED
                C6C4ED737271777775D8CBC7D9CCC8DACDC9E6DCD7F4EDE8F4EDE8F4EDE8F3EB
                E6F2E9E3F1E7E1F1E6E0F2E9E3F1E7E1F1E8E2F0E7E1F1E6E0F1E6E0F2E9E3F1
                E8E2F1E7E1F2E9E3F2E8E2F2E9E3F1E7E1F1E8E2EFE5DFF2E9E3F1E7E1F0E6E0
                F2E8E2F1E8E2F2E8E2F2E9E3F2E9E3F2E9E3F0E7E1F2E9E3F2E8E2F2E9E3F0E7
                E1F0E6E0F2E9E3F2E9E3F2E9E3F2E9E3F1E7E1EEE2DCF2E8E2F1E8E2F2E9E3F2
                E9E3EEE4DEEEE1DBF2E8E2F0E7E1F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F0E7E1
                F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F0E7E1F2E9E3F2E9E3F2E9E3F2E9E3F2E9
                E3F0E7E1F2E9E3F2E9E3F2E9E3EFE5DFF2E9E3F0E7E1F2E9E3F2E9E3F2E9E3F2
                E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3
                F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9
                E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2
                E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3
                F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9
                E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2
                E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2
                F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9
                E3F2E8E2F1E8E2EFE5DFF2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2
                E9E3F2E9E3F2E9E3F2E9E3F2E8E2F1E8E2EFE5DFF2E9E3F2E8E2F2E9E3F2E9E3
                F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9
                E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2
                E9E3F2E9E3F2E8E2F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2E9E3F2E9E3F1E7E1
                F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2E9E3F2E9E3F1E7E1F2E8E2F2E9E3F2E9
                E3F2EAE4F4ECE6F2E9E3F2E9E3F1E7E1F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2
                E9E3F2E9E3F1E7E1F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2E9E3F2E9E3F2E8E2
                F2E9E3DCCFCBDBCECADACDC9D9CCC8777775DDDDDCF5F2F1F5F2F1F6F2F1F9F6
                F5FCFAF9FCF9F8FCFAF9FCFAF9FCFAF9FAF5F4FBF9F8FCFAF9FCFBF9FCFBFAFC
                FBFAF7F4F3FAF7F6FCFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFA
                FDFBFBFDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFBFBFDFCFBFBF8
                F7FDFCFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFC
                FBFAFCF9F8FDFCFBFCFBFAFCFAF9FDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFDFCFB
                FDFCFBFCFBFAFBF9F8FDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFAFDFB
                FBFDFBFBFDFBFBFDFBFBFDFBFAFCFBFAFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFD
                FBFBFDFCFBFDFCFBFDFBFAFCF9F8FCF9F8FCF9F8FCF9F8FDFBFAFDFBFBFDFCFB
                FDFCFBFDFBFBFDFCFBFDFCFBFDFBFAFCF9F8FCF9F8FCFAF8FCFAF8FCFAF8FDFB
                FAFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBF9FCFAF8FCFAF8FCFAF8FE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCFBFAFDFCFBFEFDFC
                FEFDFCFEFDFCFEFCFBFDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFCFCFCFAF9FCF9F8FCF9F8FCF9F8FCFAF9FDFCFBFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFD
                FDFCFCFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFCFEFDFCFDFCFBFDFCFBFEFD
                FDFBF8F8FEFDFCFEFDFDFEFDFDFEFDFDFEFCFCFCFAF9FDFBFBFEFCFCFDFCFCFE
                FDFDFEFDFDFEFDFCFEFDFCFCFAFAFEFDFDFEFDFDFEFDFDFCFBFBF9F8F7FAF9F8
                FBFAF9FDFCFBFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFD
                FDFEFDFDFEFDFDFDFBFBFEFDFDFEFDFDFDFCFCFEFCFCFEFCFCFEFDFDFEFDFDFE
                FDFCFEFDFCFEFDFCFCFBFAFBF9F9FBFAFAFCFBFBFCFBFBFCFBFBFDFCFCFDFCFC
                FEFDFDFEFDFCFDFCFCFEFDFDFEFDFDFEFCFCFDFCFCFEFDFDFEFDFDFEFDFDFEFD
                FCFCFAF9FDFBFAFCF9F8FDFAF9FEFCFCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFB
                F9F8FCF9F8FCFBF9FEFDFDFEFDFDFEFDFDFEFDFDFCFBFBFDFAF9FBF8F6FAF7F5
                FAF7F5FBF8F6FAF8F6FBF8F6FBF8F6F7F4F3F6F3F2F6F2F1F5F2F1DDDDDC7777
                754949FD5050FE5857FE918FF9C9C5F5C9C7F4BEBDF6B6B4F8AEACF8A4A1F9A0
                9FFA9FA0FBA0A0F99F9EF89B9CF79A99F79A99F79D9BF89E9DF89E9EF99E9DF7
                9C9AF59894F29892F19995F59B98F99C9BF99C9CFA9D9DFA9F9EF99E9DF89C99
                F69895F19891F19892F19996F79B98F99C9BF99D9CF99E9EF99F9EF89F9EF89D
                9AF69B98F29A95F39897F39A97F59B99F89C9CF99D9CF99F9DF9A09EF9A09EF8
                9D9BF69C97F49A96F29A96F49B99F69C9CF89D9FF9A0A0F9A1A1F9A2A1F8A29F
                F7A29FF6A09DF59F9CF59F9CF59F9EF69F9FF8A1A0F9A2A1FAA3A2FAA2A1F9A2
                A0F7A09EF59F9AF39C98F29C9AF49D9CF69F9FF8A2A1FAA2A1FAA1A2F9A1A0F9
                A2A1FAA3A3FBA4A4FBA3A3FAA4A2FAA3A2F9A3A0F8A29FF9A2A0F9A2A1FAA2A1
                FAA2A1F9A2A0F8A19BF79F9CF8A1A0F9A2A1FAA2A1FAA1A0FBA1A1FAA1A1F9A2
                A2F8A2A2FAA3A3FAA3A2FAA2A1FAA1A1FAA2A0F9A2A1F9A2A1FAA2A1FBA19FF9
                A0A0F9A0A0F9A1A1F9A1A1F9A2A2FAA2A1FAA29FF9A2A1F9A1A1F9A2A2F9A1A2
                F9A2A1FAA2A1FBA2A1F8A1A1F9A19FF9A2A1F9A3A2F9A3A3FAA3A3FAA4A3FBA3
                A3FBA2A3FAA3A2FAA3A2FAA4A2FAA4A3FAA3A2FBA3A3FBA3A2FAA3A2FAA3A1FA
                A3A2FAA4A2FBA3A3FBA3A3FBA2A2FAA2A2FAA2A1F9A3A2FAA4A3FAA3A2F9A3A1
                F9A3A2F9A2A1F9A2A0F9A3A2F9A3A2FAA4A2F9A3A2F9A2A2F9A2A2F9A2A1F9A3
                A2FAA3A2FAA3A2F9A3A2F9A2A1F9A2A1F9A2A0F8A2A1F9A3A2FAA3A2F9A4A3F9
                A4A3F9A5A3F9A2A2F7A29FF7A2A1F9A3A2FAA3A2FAA3A3FBA4A3F9A5A3F8A4A0
                F8A19FF7A2A1F9A3A2FBA3A2FAA3A3F9A4A3FAA4A3F9A3A1F8A1A0F6A2A1FAA3
                A3FAA4A3F9A2A1F9A2A1F8A2A1F9A1A0FA9F9FF99E9EF99D9EFA9D9DFA9D9CFA
                9D9CFB9D9CFB9C9CFB9C9CFB9C9BFA9B9BFA9B9AFA9B9AFA9A9AFA9B9AFA9B9B
                FA9B9BFA9B9BFA9B9BFA9B9AFA9B9AFA9B99F99B9AF99B9AF99B9BF99B9BFA9B
                9BFA9B9BFB9A9AFB9898FA9696F99493F99393F99292F99493F99593FA9796FB
                9998FB9999FB9897FA9695FA9999FA9F9EFA9F9FFAA0A0FBA2A2FB5959FD5252
                FD4C4CFD4646FD7777757777754949FD5050FE5857FE918FF9C9C5F5C9C7F4BE
                BDF6B6B4F8AEACF8A4A1F9A09FFA9FA0FBA0A0F99F9EF89B9CF79A99F79C9BF7
                9D9BF89E9DF8A09EF89F9EF79F9BF59C98F49C97F49C98F59D9AF79D9CF99F9D
                FA9F9FFAA09FF99F9EF89D9BF69B97F49B95F39A97F49B99F69C9BF89E9CF99F
                9EF9A0A0F9A19FF89F9FF79F9DF69D9BF49D99F49C99F49C99F59D9CF79F9DF8
                9E9FF9A0A0F9A1A0F8A19FF7A09EF69E9AF49C99F49D9BF59E9BF69F9FF89FA0
                F9A1A1F9A2A1F9A3A2F8A3A1F7A3A0F6A19FF5A09EF5A09EF5A19FF6A29FF8A2
                A1F9A3A2FAA3A2FAA4A2F9A4A1F7A2A0F5A09CF39E9CF39E9EF4A09DF6A29FF8
                A3A2F9A3A2F9A2A2F9A3A1F9A3A2FAA4A3FBA5A4FBA5A3FAA4A3FAA4A3F9A3A2
                F9A3A2F9A3A2FAA3A2FAA3A2FAA3A2F9A3A0F8A1A1F8A29FF8A3A1F9A2A2FAA3
                A2FAA2A2FAA3A2FAA2A2F9A2A3F9A4A3FAA4A3FAA4A3FAA4A3FAA3A2FAA3A1FA
                A3A2F9A3A3FAA3A2FAA3A1F9A2A1F9A2A1F9A1A1F9A3A2FAA3A2FAA3A2FAA3A1
                F9A2A1F9A2A2F9A3A2F9A2A2F9A3A2FAA4A3FAA3A2F9A3A2F9A2A0F9A3A2F9A3
                A2F9A4A3FAA4A3FAA4A4FBA3A4FBA3A4FAA4A3FAA5A4FAA5A4FAA5A3FAA4A4FB
                A4A4FBA4A3FAA4A3FAA4A2FAA5A3FAA5A3FBA4A4FBA4A4FBA4A3FAA3A2FAA4A2
                FAA4A3FAA4A3FAA4A4F9A4A3F9A4A2F9A3A2F9A4A3F9A4A3F9A4A3F9A4A3F9A3
                A3F9A3A3F9A3A3F9A3A2F9A4A2FAA4A2FAA4A3F9A3A2F9A3A2F9A2A1F9A3A2F9
                A3A2F9A4A3F9A5A3F9A5A3F9A6A4F9A5A4F8A4A3F8A2A2F8A2A1F9A3A2FAA3A2
                FAA4A3F9A5A4F9A6A3F9A4A3F9A3A2F9A3A2F9A3A3FAA4A3FAA4A3F9A5A3F9A5
                A3F9A4A3F9A3A1F9A3A2F9A4A3F9A4A3F9A3A2F9A2A1F8A2A1F9A2A0FAA0A0F9
                9E9FF99D9EFA9E9DFA9D9CFA9D9CFB9D9CFB9C9CFB9C9CFB9C9BFA9B9BFA9B9A
                FA9B9AFA9B9AFA9B9BFA9B9BFA9B9BFA9B9BFA9B9BFA9B9AFA9B9AFA9B9AF99B
                9AF99B9BF99C9BF99B9BFA9B9BFA9B9BFB9A9AFB9898FA9797F99695F99594F9
                9494F99594F99594FA9796FB9898FB9999FB9897FA9796FA9999FA9F9EFA9F9F
                FAA0A0FBA1A1FB5959FD5252FD4C4CFD4646FD777775777775BEBDEAC0BFEAC2
                C1EBD7D4EEEEE9F1EEE9F1EEE9F1EEE9F1EEEAF1EBE3EBECE5EDEEEAF2EEEAF2
                EEE9F1EEEAF1EBE3EBECE5EDEBE4ECECE5EDEEEAF2EEEAF2EEE9F1EEEAF1EBE3
                EBECE5EDEBE4ECEBE5F0ECE5EEEEEAF2EEEAF2EEE9F0EEEAF1EBE3EBECE5EDEB
                E4ECEBE5F0EBE7F2EDE9F1ECE8F0EAE2E9ECE7EEE8E2EDE5E2F5E5E2F5E6E2F5
                E6E3F4E7E3EFE9E2ECECE5EDEBE4ECEBE5F0EBE7F2ECE8F1E7E4F2E0DEF5E0DD
                F6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EB
                E7F2EDE9F1E7E3F2E0DCF4E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6
                E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EAE6F2E7E3F3E0DD
                F4DFDCF5E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEB
                E4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EBE7F2EDE9F1EAE6F1E4DFF1DFDDF6
                E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5
                F0EBE7F2EDE9F1EAE6F1E4DFF1DFDDF6E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEB
                E4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EBE7F2E6E2F2DFDDF6E0DDF6E0DDF6
                DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EBE7F2E6E2
                F2DFDDF6E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EB
                E4EDEBE5F0EBE7F2E6E2F2DFDDF6E0DDF6E0DDF6DFDDF6E5E1F2EAE6F1E9E1E9
                E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0F0EC
                F1EDE9F2EAE6F2E9E1E9E7E3F0E6E3F4E9E5F4EFEAF2F0EBF2EFEBF2EEEAF2EE
                E9F1EFEBF0F1EDF2F0ECF1F4F0F4F2EFF6EBE5EDEBE5F0EBE7F2EDE9F0EEE9EE
                F4F0F5F1ECF1F0EDF2ECE4EAF2EDF2F5F0F4F5F1F5F4F2F5F3EEF3F0EBF2EFEB
                F2EEEAF2EEE9F1F1EEF2F6F3F7F7F5F8F7F5F9F7F5F8F8F5F8F8F6F9F8F6F9F8
                F5F8F5F1F3F6F2F6F1ECF1F0EDF2ECE4EAF3EEF2F6F2F5F0EAEBF4EFF0F8F5F6
                F9F6F7F9F6F7F8F5F6F7F4F5F8F6F8F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6
                F9F9F7F9F9F7F8F9F7F8FAF8F8F9F7F8EBE9F6C7C6EDC4C3ECC2C1EBC0BEEA77
                77757D7C7AD4C8C5D5C9C6D7CAC7E5DAD7F5EDE9F5EDE9F5EDE9F5EDEAF5EEEA
                F3EAE5F1E7E3F4ECE7F4EBE6F3EAE6F5EDE9F2E9E4F0E5E1F4EBE6F4ECE8F5EC
                E8F5EEE9F2EAE5F1E6E2F3EAE5F5EDE9F5ECE8F5EDE9F2E9E4EFE3DFF3EAE5F5
                EDE9F5EDE9F4ECE8F3EAE5F1E7E2F2E9E4F5ECE8F5EDE9F5EEEAF2E9E4F0E4E0
                F3EAE5F5EDE9F5EEEAF5EEEAF2E9E4EFE3DFF1E7E2F0E5E1F3E9E4F3EBE6F0E6
                E1EFE3DFF1E7E2F0E5E1F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F2E7E3F3E9E4F3
                EAE5F3EAE5F2E9E4F3EAE5F1E6E2F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F1E6E2
                F3E9E4F3EAE5F3EAE5F1E8E3F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EA
                E5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3
                EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5
                F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EA
                E5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3
                E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5
                F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EA
                E5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3
                EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4
                F3EAE5F1E7E2F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EA
                E5F3EAE5F3EAE5F3E9E4F3EAE5F1E7E2F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3
                EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5
                F3EAE5F3EAE5F3EAE5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EA
                E5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EAE5F3E9E4F3E9E4F3
                EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EAE5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5
                F4EBE6F3EAE5F3EAE5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EA
                E5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EAE5F3EAE5F3EAE5D9
                CCC8D8CBC8D6CAC7DDD1CE7D7C7ADEDEDEF4F1F0F4F1F1F5F2F1F8F6F5FCFAF9
                FCFAF9FCFAF9FCFAFAFCFBFAFBF9F8FCFAF9FCFBFAFCFBFAFBFAF9FBF9F8FAF8
                F7FBFAF9FCFBFAFBF9F8FCFAF9FDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFD
                FBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFBF9F9FDFCFB
                FDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFBF9
                F8FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFC
                FBFAFDFBFBFDFBFBFDFBFAFDFCFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFC
                FBFDFCFBFCFBF9FCFAF8FCFAF8FCFAF8FCFAF8FDFBFAFDFCFBFDFBFBFDFCFBFD
                FCFBFDFCFBFDFCFBFCFBF9FCFAF8FCFAF8FCFBF9FDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBFAFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCF9F9FDFCFBFEFDFCFE
                FDFCFDFBF9FDFCFBFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFDFCFBFCFAF9FCFAF8FCFAF8FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFDFC
                FCFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFCFBFEFCFCFDFBFBFAF6F6
                FEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFBF9F9FCF9F9FEFCFCFEFDFDFEFD
                FCFEFDFCFEFDFCF7F2F2FDFCFCFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFCFEFDFC
                FEFDFCFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFCFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFE
                FDFCFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFCFCFBFAFAF8F8
                FBFAF9FBF9F7FCFAF9FDFCFBFDFBFAFEFDFCFEFDFCFEFDFCFDFCFAFCFAF8FAF6
                F6FDFBFBFEFDFDFEFDFDFEFDFDFEFDFDFDFBFAFBF9F8FAF7F5FAF7F6FAF6F6FD
                FBFAFDF9F9FCF9F8FBF9F7F6F3F2F5F2F1F5F2F1F6F3F3DEDEDE7D7C7C3837FE
                3D3DFE4646FE807EF9B1AFF7A6A6FAA4A3F9A3A1FBA19EFA9E99F79A99F89A99
                F99998F89694F79292F6908EF6918FF69393F79796F89998F99998F89795F694
                91F4928DF39390F59494F79696F99797FA9898FA9A99FA9A99F99796F79391F3
                928EF2928EF39390F69593F89796F99897F99999F99A9AF99A99F89896F69592
                F49290F3928FF49491F59594F79797F99897F99998F99A99F99A98F89896F796
                93F49390F49391F49592F69596F89798F99898F99A99F99B9AF99B99F89B98F7
                9997F69694F59794F59895F69896F89A98F99B9AFA9B9BFA9B9AF99B99F89997
                F69693F39492F39693F49894F69A98F89C9BFA9C9CFA9A9BF99A9BF99C9CFA9D
                9DFB9E9EFB9D9DFA9D9DFA9C9CFA9B9BF99C9BF99D9BFA9D9CFA9D9CFA9C9CFA
                9C9BFA9B99F99B97F89C9BF99D9CFA9D9CFA9D9CFA9C9AFA9C9BF99B9CF99D9D
                FA9D9CFA9D9DFA9D9CFA9C9CFA9C9CF99B9CF99C9CFA9B9BFA9999F99B9BFB9B
                9BFA9C9BF99C9AF99C9CFA9B9AFA9A98FA9B9BFA9C9CFA9C9CF99D9CF99D9CFA
                9C9BFA9C9AF99B9BF99C9BFA9D9BFA9D9CFA9E9DFA9E9EFB9E9EFB9E9EFB9D9D
                FA9D9DFA9D9BFA9E9DFA9E9EFA9E9EFB9E9EFB9D9DFA9D9CFA9E9DFA9E9DFB9E
                9EFA9E9EFB9E9EFB9D9DFA9D9CFA9E9CFA9E9DFB9E9EFB9E9EFB9E9EFB9D9DFA
                9C9CFA9D9CFA9E9DFA9E9EFA9E9EFB9E9EFA9D9DFA9D9CFA9D9DFA9E9DFB9E9E
                FB9E9EFB9E9EFA9D9DFA9D9CFA9C9CFA9E9DFB9E9EFA9E9EFB9E9EFB9F9EFAA0
                A0FA9F9FFA9C9BFA9E9DFB9E9EFB9E9EFB9E9EFB9E9FFAA0A0FA9F9FFA9C9DFA
                9E9EFA9E9EFB9E9EFB9E9EFB9E9EFAA09FFA9F9FFA9D9CFA9E9DFA9F9EFAA0A0
                FA9F9FFA9D9CFA9D9DFA9C9BFA9A9AFA9999FA9898FB9898FB9898FB9998FB98
                98FB9898FB9797FB9696FA9595FA9494F99493F99594FA9595FA9696FA9797FA
                9797FA9696FA9594F99493F99392F99392F99392F99493F99594FA9696FA9696
                FB9696FB9494FA9192F99090F98F8DF98F8EF98E8DF9908FF99392FA9595FB97
                96FA9795FA9697FA9998FB9C9DFB9C9CFB9D9DFB9D9CFB4849FD4242FD3B3BFD
                5050FD7D7C7A7D7C7C3837FE3D3DFE4646FE807EF9B1AFF7A6A6FAA4A3F9A3A1
                FBA19EFA9E99F79A99F89A99F99998F89694F79292F6908EF69190F69393F797
                96F89998F99998F89895F69693F59591F49491F59594F79796F99897FA9998FA
                9A99FA9A98F99796F69593F49490F3938FF49491F69694F89796F99898F99999
                F99A9AF99A99F89996F69795F59492F49491F49592F59694F79797F89898F99A
                98F99A99F99A98F89997F79794F59692F49592F49695F69797F89998F99A9AF9
                9B9AF99C9AF99C9AF89B99F79A97F69995F59897F59996F69998F89B99F99B9A
                FA9C9BFA9C9BF99C9AF89A99F69896F49894F49796F59896F69B99F89C9BF99C
                9CF99B9CF99C9CF99D9DFA9E9DFB9E9EFB9E9EFA9E9DFA9D9CFA9D9CF99D9CF9
                9D9CFA9D9CFA9D9DFA9D9CFA9D9BF99C9BF99B99F99C9CF99D9CFA9D9CFA9D9C
                FA9D9CFA9D9DFA9D9DFA9E9DFA9E9EFA9E9EFA9D9DFA9D9DFA9D9CFA9D9CF99D
                9DFA9C9CFA9C9CFA9C9CFA9C9CFA9D9BFA9D9CFA9D9CFA9D9CFA9B9BFA9C9CFA
                9D9CFA9D9DF99D9DF99D9CFA9D9CFA9D9CF99D9CF99D9CFA9D9BFA9E9DFA9E9E
                FA9F9EFB9E9EFB9E9EFB9E9DFA9E9DFA9E9CFA9E9EFA9F9EFA9F9EFB9E9EFB9E
                9EFA9E9DFA9E9DFA9E9EFB9E9EFB9F9EFB9E9EFB9E9DFA9E9DFA9E9EFA9E9EFB
                9E9EFB9F9EFA9F9EFA9E9DFA9E9DFA9E9DFA9F9DFA9F9EFA9E9EFA9E9EFA9E9D
                FA9E9DFA9E9DFA9E9DFB9F9EFB9E9EFA9E9EFA9D9DFA9D9DFA9E9DFA9E9DFA9E
                9EFA9E9EFA9F9EFAA09EFAA09FFA9F9FFA9F9DFA9E9EFA9E9EFB9E9EFB9E9EFA
                9F9FFAA09FFA9F9EFA9F9EFA9F9EFA9F9EFB9E9EFB9F9EFBA09FFAA09FFA9F9F
                FA9F9EFA9F9EFA9F9FFAA09FFA9F9FFA9E9EFA9D9DFA9C9BFA9A9AFA9999FA99
                99FA9898FB9898FB9898FB9898FB9797FB9797FB9696FA9595FA9494F99494F9
                9594FA9695FA9696FA9797FA9797FA9696FA9595F99494F99493F99492F99493
                F99494F99595FA9696FA9696FB9696FB9494FA9392F99190F98F90F98F8FF990
                90F99190F99392FA9595FA9695FA9795FA9696FA9898FB9C9CFB9C9CFB9D9DFB
                9C9BFB4849FD4242FD3B3BFD5050FD7D7C7A7D7C7AB8B7E8BAB9E8BCBBE9D4D1
                EDEFEAF0EFEAF0EFEAF0EFEAF1EFEBF1ECE6EBEEE9F0EFEBF1EFEBF1EFEAF1EF
                EBF1ECE6EBEEE9F0EEE9EFEEE9F0ECE6ECEFEBF1EFE9F0EFEBF1ECE6EBEEE9F0
                EEE9EFEFEBF2EEEAF1EDE7EEEEEAF1EDE6EEEFEAF0ECE6EBEEE9F0EEE9EFEFEB
                F2EEEAF2EEE9F1EEEAF1EBE3EBECE5EDECE5EDECE7F3ECE8F4ECEAF2ECE8F0EB
                E3EAECE6ECEEE9F0EEE9EFEFEBF2EEEAF2EDE8F1E7E3F1E1DDF2E4DFEEE1DEF3
                DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2EDE8
                F1EAE6F1E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2E1DDF2EA
                E5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEBF2EBE7F2E4E1F4E5E1F0E3DEEF
                E4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEB
                F2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2EEE9F1ECE9F1E5DFEFE2DEF2E4DFEEE1
                DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2
                EEE9F1ECE9F1E5DFEFE2DEF2E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEB
                F2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2E7E2F0E2DEF2E4DFEEE1DEF3DFDBF2E1
                DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2E7E2F0E2DEF2
                E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEB
                F2EEEAF2E7E2F0E2DEF2E4DFEEE1DEF3DFDBF2E5E1F2EDE9F3EBE4EDEBE5F0EB
                E7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F2EFF5F2EEF4
                EEEAF3EBE4EDEBE5F0EBE7F2EDE9F0EEE9EEF4F0F5F1ECF1F0EDF2ECE4EAF2ED
                F2F5F0F4F5F1F5F4F2F5F3EEF3F0EBF2EFEBF2EEEAF2EEE9F1F1EEF2F6F3F7F7
                F5F8F7F5F9F7F5F8F8F5F8F8F6F9F8F6F9F8F5F8F5F1F3F6F2F6F1ECF1F0EDF2
                ECE4EAF3EEF2F6F2F5F0EAEBF4EFF0F8F5F6F9F6F7F9F6F7F8F5F6F7F4F5F8F6
                F8F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6F9F9F7F9F9F7F8F9F7F8FAF8F8FA
                F8F8F9F7F8F9F7F9F8F6F9F8F6F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F6F7
                F9F7F8F9F7F8FAF6F7F7F4F6EBE8F5C1C0EBBEBDEABCBBE9C5C4EB7D7C7A8281
                7FD1C4C3D2C6C4D3C7C4E6DCD8F5EEEAF5EEEAF5EEEAF6F1EDF8F3F0F8F2F0F7
                F0EEF8F3F0F8F2EFF8F3EFF8F3F0F8F2F0F7F0EEF8F3F0F8F2EFF8F3EFF8F3F0
                F8F2F0F7F0EEF8F3F0F8F2EFF8F3EFF8F3F0F8F2F0F7F0EEF8F3F0F8F2EFF8F3
                EFF8F3F0F8F2F0F7F0EEF8F3F0F8F2EFF8F3EFF8F3F0F8F2F0F7F0EEF8F3F0F8
                F2EFF8F3EFF8F3F0F8F2F0F7F0EEF8F4F1F8F4F1F9F4F1F5EFECF7F1EFF7F0EE
                F8F4F1F8F4F1F9F4F1F9F4F1F9F4F2F9F4F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5
                F2F8F4F2F8F4F2F7F0EDF8F3F0F9F5F2F9F5F3F9F5F3F9F5F3F7F1EEF7F2EEF8
                F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EF
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EF
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EF
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EF
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3F0
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3F0
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF6F0ECF4ECE7D6C9C6D4C8
                C5D3C7C4DACFCC82817FE0DFDFF3F0F0F4F1F0F4F1F0F9F6F5FCFBFAFCFBFAFC
                FBFAFCFBFAFCFBFAF9F7F6FBF9F8FCFBFAFCFBFAFBF9F9FBF7F7FBF7F6FCF9F8
                FBF9F8FAF5F5FDFAF9FDFBFAFBF8F8FDFAFAFDFCFBFDFCFBFDFCFBFDFBFBFDFC
                FBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFCFBFAFCFAF9FCF9F8FDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBFAFDFCFB
                FDFCFBFDFCFBFDFCFBFDFBFAFCFBFAFCFBFAFBF9F8F9F6F5F8F4F3FCF9F9FDFC
                FBFDFCFBFBF8F7FDFCFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFD
                FCFBFDFCFBFDFBFAFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFEFDFCFEFDFCFDFCFBFDFBFAFD
                FCFBFAF7F6FDFCFBFDFCFBFEFDFCFEFDFCFEFCFBFEFDFCFEFDFCFEFDFCFDFCFB
                FEFDFCFEFDFCFEFDFCFDFCFBFDFBFAFEFCFBFEFDFCFEFDFCFCF9F8FAF8F8FBFA
                F9FDFCFBFEFDFCFEFDFCFBF9F9FBF9F9FCFAFAFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFCFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFC
                FEFDFCFEFDFCFEFDFCFDFCFBFEFDFCFEFDFDFEFDFDFDFCFCFBFAFAFAF9F9F9F8
                F8FBFAFAFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFCFEFDFCFE
                FDFCFDFBFBFDFBFBFEFDFDFCFBFBFAF9F8F9F8F7FAF9F8FBFAF9FDFCFBFEFDFC
                FEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFD
                FCFCFAF7F7FAF8F8FBFAFAFCFBFBFCFBFBFCFBFBFDFCFCFDFCFCFEFDFDFEFDFC
                FDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FCFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFDFCFCFEFDFCFEFCFCFEFDFCFEFDFDFD
                FBFAFBFAF9FCFBFAFAF7F7FBF9F9FDFCFCFDFBFBFCFAF9FBF9F8FCFAF9FDFCFC
                FEFDFDFEFDFDFDFCFCFEFDFCFDFCFBFCF9F7FBF8F7FAF7F5FCFBFAFEFDFDFEFD
                FDFEFCFBFCFAF9F6F2F2F4F1F0F4F1F0F6F3F2E0DFDF82817F2524FD2B2BFE34
                33FE5455FD9696FB9C9CFB9A9BFB9B9AFB9998F99795F79594F89593F89392F7
                908FF68D8AF68A89F58A8AF68E8DF79291F89494F99595F99492F7918EF58E8B
                F48B8AF48F8DF69192F89393F99494F99696FA9795F99593F7918FF58D8CF48E
                8AF48E8CF5908FF89491F99393F99494F99597F99696F99493F7918FF58E8DF4
                8D8BF48F8DF5918FF79292F89393F99493F99695F99694F99593F79290F68F8D
                F48F8DF3908EF59190F79393F99494F99594F99695F99695F99593F89391F692
                8FF5908DF5918EF69391F79493F89594F99695F99695F99794F89492F79190F5
                908FF3918EF5928FF79593F99796FA9797FA9696F99697F99797FA9999FB9999
                FB9999FA9998FA9897FA9797FA9897FA9898FA9998FA9999FA9999FA9898FA97
                96FB9797FA9899FA9998FA9998FA9999FB9898FB9898FA9999FA9999FB9999FA
                9999FA9999FB9898FB9898FA9999FA9A9AFA9596FA9696FA9A98FB9898FB9897
                FA9998FA9999FB9796FA9696FA9899FA9898FA9898FA9998FA9999FA9696FA96
                96F9999AFA9898FB9898FA9998FA9A99FB9A9AFB9A9AFB9A9AFB9999FB9898FA
                9999FA9A9AFB9A9AFB9A9AFB9A9AFB9999FB9998FA9999FA9999FB9A9AFB9A9A
                FB9A9AFB9999FB9998FA9999FA9A9AFB9A9AFB9A9AFB9A9AFB9999FB9898FA99
                99FA9A99FB9A9AFB9A9AFB9A9AFB9999FA9899FA9999FA9A99FB9A9AFB9A9AFB
                9A9AFB9999FB9898FA9999FA9A99FB9A9AFB9A9AFB9A9AFB9B9BFB9C9DFB9C9C
                FB9A9AFA9A9AFB9A9AFB9A9AFB9A9AFB9B9BFB9D9CFB9C9CFB9B9BFA9B9BFB9A
                9AFB9A9AFB9A9AFB9B9BFB9D9CFB9C9CFB9B9BFA9B9BFB9A9AFB9D9DFB9C9CFB
                9B9BFA9A9AFA9797FB9595FA9494FA9494FA9494FA9493FB9493FA9393FA9292
                FA9191FA8F8FFA8E8DF98E8DF98E8DF98F8EF99190F99292FA9393FA9393FA92
                91F9908FF88E8CF78C8CF88B8BF98C8BF98D8DF98F8EF99191FA9292FA9392FA
                9291FA908FFA8E8EFA8D8BFA8B8AFA8B8BF98D8CF98E8EF9908FF99091F99191
                F99393FA9696FB9998FA999AFB9A9AFB9899FB3738FE3232FE2B2BFE4242FD82
                817F82817F2524FD2B2BFE3433FE5455FD9696FB9C9CFB9A9BFB9B9AFB9998F9
                9795F79594F89593F89392F7908FF68D8AF68A89F58C8AF68E8DF79291F89493
                F99594F89492F7928FF5908CF48E8DF58F8FF69191F89393F99494F99695F996
                95F99493F7928FF5908DF48F8CF4908DF5918FF79391F89493F99494F99595F9
                9595F89493F79290F5908EF48F8DF4908EF59190F79292F89393F99493F99694
                F99694F89593F79390F6918EF48F8DF4908FF59291F79393F99494F99594F996
                95F99695F99594F89492F69390F59290F59391F69491F79493F89594F99695F9
                9695F99694F89493F79291F5918FF4928FF59390F79593F99796FA9797FA9697
                F99697F99797FA9898FB9999FB9999FA9998FA9897FA9897FA9898FA9898FA99
                98FA9999FA9998FA9898FA9897FA9897FA9898FA9998FA9998FA9998FB9898FB
                9898FA9999FA9999FA9999FA9999FA9999FB9998FB9998FA9999FA9999FA9897
                FA9797FA9898FA9898FA9898FA9998FA9998FA9897FA9797FA9898FA9898FA98
                98FA9998FA9898FA9896FA9897FA9898FA9898FA9998FA9998FA9A99FB9A9AFB
                9A9AFB9A9AFB9999FB9999FA9999FA9A99FB9A9AFB9A9AFB9A9AFB9999FB9999
                FA9999FA9999FB9A9AFB9A9AFB9A9AFB9999FB9999FA9999FA9A9AFB9A9AFB9A
                9AFB9A9AFB9999FB9999FA9999FA9A99FA9A9AFB9A9AFB9A9AFB9999FA9999FA
                9999FA9A99FB9A9AFB9A9AFB9A9AFB9999FB9998FA9999FA9A99FB9A9AFB9A9A
                FB9A9AFB9B9BFB9C9CFB9C9BFB9B9AFB9A9AFB9A9AFB9A9AFB9A9AFB9B9BFB9C
                9CFB9C9CFB9B9BFA9B9BFB9A9AFB9A9AFB9A9AFB9B9BFB9C9CFB9C9CFB9B9BFA
                9B9BFB9B9BFB9C9CFB9C9CFB9B9BFA9999FA9797FA9595FA9494FA9494FA9493
                FA9493FA9493FA9393FA9292FA9191FA8F8FFA8E8EF98E8EF98E8EF98F8FF991
                90F99292FA9392FA9392FA9291F9908FF98E8EF88D8DF88D8DF98D8CF98E8EF9
                8F8FF99191FA9292FA9292FA9191FA908FFA8F8EFA8E8CFA8C8CFA8D8CF98D8C
                F98E8EF9908FF99190F99191F99393FA9696FA9898FA9999FB9A9AFB9797FB38
                38FE3232FE2B2BFE4242FD82817F82817FB2B1E5B4B3E6B6B6E7D6D3ECF0EBF0
                F0EBF0F0EBF0F0EBF1F0ECF1EDE7ECF0EBF1F0ECF1F0EBF0F0EBF1F0ECF1EDE7
                ECF0EBF1F0ECF1F0EBF0ECE3E8F1EDF3EFE9EFF0ECF1EDE7ECF0EBF1F0ECF1F1
                ECF1EFEBF1EFE8EFEFEBF1ECE6ECEFEAF0EDE8EEEFEBF2EEEAF1EFE9EFF0ECF1
                EFE9F0EFEBF1ECE6EBEEE9F0EEE9EFEFEBF2EFEBF3EFEAF2EEEAF1EBE3EBECE6
                EDEFEAF2EEEAF1EFE9EFF0ECF1EEE9F0EBE7F2E8E4F2E9E1E9E7E3F0E6E3F4E7
                E3F4EBE7F3EDE9F1EFE9EFF0ECF2F0EDF5F0ECF4EFE9EFF0ECF1EEE8F0ECE7EF
                ECE7EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9
                F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0ECE8F2E5E1F2E8E1EBECE7EEE9E1E9E7
                E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2
                F0EDF5F0EDF5EFEAF0F0ECF1EFE9F0EEEAF1EAE5EEE9E5F2E9E1E9E7E3F0E6E3
                F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0F0ECF1EFE9F0EE
                EAF1EAE5EEE9E5F2E9E1E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2
                F0EDF5F0EDF5EFEAF0F0ECF1EDE9F2EAE6F2E9E1E9E7E3F0E6E3F4E7E3F4EBE7
                F3EDE9F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0F0ECF1EDE9F2EAE6F2E9E1E9E7
                E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0F0ECF1
                EDE9F2EAE6F2E9E1E9E7E3F0E6E3F4E9E5F4EFEAF2F0EBF2EFEBF2EEEAF2EEE9
                F1EFEBF0F1EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2F7F5F3F8F4F0F4F1ECF1F0
                EBF2EFEBF2EEEAF2EEE9F1F1EEF2F6F3F7F7F5F8F7F5F9F7F5F8F8F5F8F8F6F9
                F8F6F9F8F5F8F5F1F3F6F2F6F1ECF1F0EDF2ECE4EAF3EEF2F6F2F5F0EAEBF4EF
                F0F8F5F6F9F6F7F9F6F7F8F5F6F7F4F5F8F6F8F8F6F9F8F6F9F7F5F9F7F5F8F8
                F5F8F8F6F9F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F7F8F9F7F9F8F6F9F8F6F9
                F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F6F7F9F7F8F9F7F8FAF6F7F9F6F7F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8F9F7F9F9
                F7F8F9F7F8F5F2F6EBE8F4BAB9E8B8B7E8B6B5E7C1C0EA82817F868684CDC1C0
                CFC2C1D0C3C2E5DBD8F5EEEAF5EEEAF5EFEBF7F2EFF8F2EFF7F1EEF4ECEAF8F4
                F1F8F4F2F8F3F0F8F2EFF7F1EEF4ECEAF8F4F1F8F4F2F8F3F0F8F2EFF7F1EEF4
                ECEAF8F4F1F8F4F2F8F3F0F8F2EFF7F1EEF4ECEAF8F4F1F8F4F2F8F3F0F8F2EF
                F7F1EEF4ECEAF8F4F1F8F4F2F8F3F0F8F2EFF7F1EEF4ECEAF8F4F1F8F4F2F8F3
                F0F8F2EFF7F1EEF4ECEAF8F4F1F9F5F3F9F4F1F5ECEAF9F4F1F5EDEBF8F4F1F9
                F5F3F9F5F3FAF5F3FAF6F3F5EDEBF8F4F1F9F5F3F9F5F3FAF5F3FAF6F3F5EEEB
                F6F1EEF9F5F2FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF5F2FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3F8F3EFF5EEE9D2C6C4D1C4C3D0C3C2
                D8CDCB868684E1E1E0F2EFEFF3F0EFF3F0F0F8F6F5FCFBFAFCFBFAFCFBFAFCFB
                FAFCFBFAF7F4F3FAF7F6FCFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFD
                FBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFBF8F7FDFCFBFCFBFAFCFAF9FDFC
                FBFDFCFBFDFCFBFAF7F6FDFCFBFDFCFBFDFCFBFCFBFAFBF9F8FDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFCFCFBFAFAF8F7FAF7F6FBFAF9FDFCFCFDFCFCFDFCFBFDFBFB
                FCFAFAFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFB
                FAFDFCFBFCFBFAFCFAF9FDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFDFCFBFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFDFBFAFDFCFBFAF7F6FDFCFBFDFCFB
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCFBFAFDFC
                FBFEFDFCFEFDFCFEFDFCFEFDFCFDFBFAFDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFCFCFCFBFBFDFBFBFDFCFCFEFDFCFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFBF8F8FEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFBFEFDFCFEFDFCFCFBFAF8F7
                F6F4F3F2F2F1F1F6F5F4FCFBFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFEFDFDFEFDFDFDFCFCFEFCFC
                FEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFE
                FDFDFEFDFDFDFCFCFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFCFDFCFCFEFDFDFEFDFDFEFCFCFDFC
                FCFEFDFDFEFDFDFEFDFDFEFDFCFCFAF9FDFBFAFCF9F8FCF9F8FEFCFCFEFDFDFE
                FDFDFEFDFCFEFDFCFEFDFCFBF9F8FCF9F8FCFBF9FEFDFDFEFDFDFEFCFCFDFBFA
                FCFAF9F4F1F0F3F0F0F3F0F0F5F2F2E1E1E08686841214FE1919FF2020FE4644
                FD8E8CFB9595FB9796FB9897FB9494F99190F7918FF68F8EF68E8CF58C8BF68A
                88F68887F68886F68A89F68D8CF8908FF99190F9928FF88F8DF68B89F48986F4
                8988F48D8DF78F8EF88F8FF79291FA9492F99391F88F8DF68B8AF38987F48B88
                F58D8BF78F8EF88F8FF88F90F89191F99192F99190F78F8DF68C8AF48B89F48B
                8AF58E8CF78F8EF88F8EF8908DF89190F89391F89390F88F8DF68C89F48A88F4
                8C8AF58E8CF78F8EF9908FF99090F99191F99290F9918FF88F8DF68D8BF58D8A
                F58D8BF58E8DF7908FF8908FF89190F89290F99290F9918FF78F8DF58C8BF58C
                8BF58E8BF79190F99392FA9393FA9292F99192F99393FA9494FB9494FB9494FA
                9493FA9493FA9493FA9494FA9494FA9494FA9595FA9595FA9594FA9493FB9494
                FA9494FA9494FA9594FB9795FB9594FB9494FA9595FB9696FB9494FA9595FA97
                95FB9594FB9494FA9595FB9896FB9493FB9291F89696FA9594FB9494FA9595FB
                9695FA9493FA9291F99795FA9594FA9494FA9594FA9496FB9493FB9391F89495
                FA9594FB9494FA9594FB9595FB9595FB9595FB9595FB9595FB9494FA9595FA95
                95FB9595FB9595FB9595FB9595FB9494FA9595FB9596FB9595FB9595FB9595FB
                9595FA9494FA9595FB9696FB9595FB9595FB9595FB9595FB9494FA9594FB9595
                FB9595FB9595FB9595FB9595FA9494FA9595FA9595FB9595FB9595FB9595FB95
                95FB9494FA9595FB9695FB9595FB9595FB9595FB9898FB9999FB9999FB9797FB
                9696FB9696FB9696FB9595FB9898FB9A9AFB9999FB9898FA9797FB9696FB9696
                FB9595FB9898FB999AFB9999FB9898FA9797FB9797FB9999FB9999FB9898FA96
                96FA9393FA9190F98F8FF98F8EF98F8EF98F8EF98F8EF98E8DF98D8CF98B8AF9
                8987F98787F98787F98788F98A89F98D8BF98E8DF98E8EF98E8EF98D8DF98B8B
                F88888F88687F88686F98686F98887F98A89F98C8CF98E8DF98E8DF98E8DF98F
                8DF98E8DFA8D8CFA8B8AFA8A8AF98A89F98A89F98A89F88A8AF98C8AF98E8EF9
                9393FA9595FA9595FB9595FB9495FB2727FE2121FE1B1BFE3535FD8686848686
                841214FE1919FF2020FE4644FD8E8CFB9595FB9796FB9897FB9494F99190F791
                8FF68F8EF68E8CF58C8BF68A89F68987F68886F68A89F68D8CF8908FF99190F9
                908EF88F8CF68D8AF58B89F48A8AF58D8DF78F8EF8908FF89291F99391F99190
                F88F8DF68C8AF38B88F48B89F58D8CF78F8EF88F8FF89090F89091F99191F990
                8FF78F8DF68D8BF58C89F48C8BF58E8DF78F8EF88F8EF8908FF89190F89290F8
                928FF78F8DF68D8BF58C8AF48D8AF58E8CF78F8EF9908FF99090F99191F99290
                F9918FF8908DF68E8CF58E8CF58E8CF68F8DF7908FF8908FF89190F89290F992
                90F8918FF78F8DF58E8BF58D8BF58F8CF7918FF99392FA9393FA9293F99293F9
                9393FA9494FB9494FB9494FA9493FA9493FA9493FA9494FA9494FA9494FA9594
                FA9594FA9494FA9493FA9494FA9494FA9494FA9594FA9594FB9494FB9494FA95
                95FA9695FA9594FA9595FA9595FB9594FB9494FA9595FA9594FA9493FA9492F9
                9495FA9594FA9494FA9594FA9693FA9493F99393F99494FA9494FA9494FA9594
                FA9494FA9493FA9392F99494FA9494FA9494FA9594FA9595FB9595FB9595FB95
                95FB9595FB9494FA9595FA9595FA9595FB9595FB9595FB9595FA9494FA9594FA
                9595FB9595FB9595FB9595FB9595FA9494FA9595FA9595FB9595FB9595FB9595
                FB9594FB9494FA9594FA9595FA9595FB9595FB9595FB9595FA9594FA9594FA95
                95FA9595FA9595FB9595FB9595FA9594FA9594FA9595FB9595FB9595FB9695FB
                9797FB9898FB9898FB9797FB9796FB9696FB9696FB9796FB9898FB9999FB9999
                FB9898FA9797FB9697FB9696FB9796FB9898FB9999FB9999FB9898FA9798FB97
                98FB9899FB9999FB9898FA9696FA9393FA9191F98F8FF98F8EF98F8EF98F8EF9
                8F8EF98E8DF98D8CF98B8AF98A89F98887F98888F98989F98A8AF98C8BF98D8D
                F98E8EF98E8EF98D8DF98B8BF88989F88889F88788F98888F98888F98A89F98C
                8CF98D8DF98E8DF98E8DF98E8DF98D8CFA8C8BFA8B8AFA8A8AF98A89F98A8AF9
                8A8AF98B8AF98C8AF98E8EF99392FA9595FA9595FB9595FB9394FB2828FE2121
                FE1B1BFE3535FD868684868684ACACE3AEAEE4B0B0E5D5D1EBF1ECF0F1ECF0F1
                ECF0F1ECF0F1ECF0ECE5E9EDE5E9F1ECF0F1ECF0F1ECF0F1ECF0EDE5E9ECE3E7
                F1EDF1EEE9EEF1ECF1F2EEF2F1ECF0F1ECF0EDE5E9ECE3E7F1EDF1EEE8EDF0EC
                F2EFE9EFF0ECF1EDE7ECF0EBF1F0ECF1F1ECF1EFEBF1EFE8EFF0ECF2EFE9EFF0
                ECF1EDE7ECF0EBF1F0ECF1F1EBF0F0ECF1EFE9F0EFEBF1ECE6EBEEE9F0F0EBF0
                EFEBF1EFE8EFF0ECF2EFE9EFEEEAF1EAE6F0EBE4EDEBE5F0EBE7F2EDE9F1EEEA
                F0EFEAF0EFE8EFF1EEF4F4F1F7F3EFF5F0E9F0F0ECF2EFE9EFEEE9F0ECE5EDEB
                E4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EF
                F1EEF4F4F1F7F4F1F7F2EDF3EEEAF3E8E4EFE9E2ECECE5EDEBE4ECEBE5F0EBE7
                F2EAE6F1EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4
                F1F7F2EDF3F1EDF3EFE9EFF0ECF1EDE7EDECE8F1EBE4EDEBE5F0EBE7F2EDE9F1
                EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F1EDF3EFE9EFF0ECF1EDE7
                EDECE8F1EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4
                F1F7F2EDF3F2EFF5F2EEF4EEEAF3EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0
                EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F2EFF5F2EEF4EEEAF3EBE4EDEBE5F0EBE7
                F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F2EFF5F2EEF4EE
                EAF3EBE4EDEBE5F0EBE7F2EDE9F0EEE9EEF4F0F5F1ECF1F0EDF2ECE4EAF2EDF2
                F5F0F4F5F1F5F4F2F5F5F0F4F6F4F7F7F5F9F7F5F9EFE7EBEFE7EBF5F1F5F1EC
                F1F0EDF2ECE4EAF3EEF2F6F2F5F0EAEBF4EFF0F8F5F6F9F6F7F9F6F7F8F5F6F7
                F4F5F8F6F8F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6F9F9F7F9F9F7F8F9F7F8
                FAF8F8FAF8F8F9F7F8F9F7F9F8F6F9F8F6F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7
                F8F8F6F7F9F7F8F9F7F8FAF6F7F9F6F7F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8FA
                F8F8FAF8F8FAF8F8FAF8F8F9F7F8F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F6F7
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8FAF7F8F9F7F8F9F7F8F8F6F8F3EF
                F1EFEBF3EBE7F3B4B4E6B2B1E5B0AFE5BDBCE88686848B8B88CABEBECBBFBFCC
                C0C0E3DAD8F5EFEBF5EFEBF4EEEBF7F2EEF7F1EFF3EBE9F6EFEDF8F3F1F9F5F3
                F9F4F1F7F1EFF3EBE9F6EFEDF8F3F1F9F5F3F9F4F1F7F1EFF3EBE9F6EFEDF8F3
                F1F9F5F3F9F4F1F7F1EFF3EBE9F8F2F0F8F3F1F9F5F3F9F4F1F7F1EFF3EBE9F8
                F2F0F8F3F1F9F5F3F9F4F1F7F1EFF3EBE9F8F2F0F8F3F1F9F5F3F9F4F1F7F1EF
                F3EBE9F8F2F0F8F3F1F9F5F3F9F4F1F9F4F2F4EDEBF8F2F0F8F3F1F9F5F3F9F5
                F3FAF6F4F9F5F3F8F2F0F8F3F1F9F5F3F9F5F3FAF6F4F9F5F3F8F2F0F8F3F1FA
                F6F4F9F5F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4F9F5F3FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF5F3F8F3F1FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4
                FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F3FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F3FAF6F4F9F5F3F9F4F2FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6
                F4F9F5F3F9F4F2FAF6F4FAF6F4F8F3EFF5EEEACFC2C1CDC1C0CCC0C0D5CBC98B
                8B88E2E2E1F2EFEFF2EFEFF2EFEFF8F6F5FCFBFAFCFBFAFCFAFAFBFAF9FBF9F8
                FAF8F7FBFAF9FCFBFAFBF9F8FCFAF9FDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFDFB
                FBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFCFBFAF9F6F5FDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBFAFDFBFAFDFCFBFDFCFCFDFCFCFDFC
                FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFCF9F9FDFCFBFDFCFBFDFBFAFD
                FBFAFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFBFAFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCFBFAFDFCFBFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCF9F9FDFCFB
                FEFDFCFEFDFCFDFBFAFDFCFBFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFB
                FBFAF6F6FEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFCFEFDFCFCFAFAFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFDFCFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFBFBFEFCFCFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFDFEFD
                FDFEFDFCFEFDFCFEFDFCFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFDFE
                FDFCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFD
                FEFDFDFEFDFCFCFBFAFAF8F8FBFAF9FBF9F7FCFAF9FDFCFBFDFAF9FEFDFCFEFD
                FCFEFDFCFDFCFAFCFAF8FAF6F6FDFBFBFEFDFDFEFDFDFCFBFBFCFAF9FCFAF9F3
                F0EFF2EFEFF2EFEFF4F2F1E2E2E18B8B880101FE0606FF0E0EFF3637FD8686FA
                9191FA9394FB9695FB9291F98F8EF68C8AF48A87F58988F58989F68887F68686
                F68685F68785F68988F88C8BF98E8CF98E8CF88C8BF68987F48684F48786F58A
                8AF88B89F88B8AF78C8CF9908DF98E8DF88C8BF68988F48885F48886F58A89F7
                8D8BF98C8CF78A8CF88C8CF98D8DF98D8CF88C8AF68A88F58986F58888F58B8A
                F88C8CF88C8AF88A89F88D8BF88E8DF88E8DF78D8AF68888F48886F48986F58C
                89F88C8BF98C8BF98C8CF98D8CF88E8CF88D8CF78C8AF68A88F48A87F58A88F5
                8B89F68C8BF78C8BF78D8CF88D8CF88E8CF88E8CF78C8BF58988F48A88F58B89
                F78E8DF98F8FFA908FFA8F8FFA8E8FFA8F8FFA9090FA9090FA8F8FF98F8EF98F
                8EF9908FF99090FA9090FA9090FA9090FA908EF98F8EF9908FF99090F99090F9
                9090FA8F8FFA9090F99090FA9090FA9090FA9190F88F8FF98F8FF99090FA9090
                FA9090FA8F8FFA918FF88F8EF88F8EF89090F99090FA9090FA8F8FFA918FF88F
                8EF88F8EF89090F99090FA9090FA8F8FFA918FF88F8EF88F8EF89090F99090FA
                9090FA8F8FF99090F99090FA9090FA9090FA9090FA9090FA8F8FFA9090F99090
                FA9090FA9090FA9090F99090FA8F8FFA9090F99090FA9090FA9090FA9090F890
                90FA8F8FFA9090F99090FA9090FA9090FA9090FA908FFA8F8FFA9090F99090F9
                9090FA9090FA9090F9908FFA908FFA9090F99090F99090FA9090FA9090FA908F
                F98F8FFA908FF99090FA9090FA9090FA9392FB9595FB9595FB9494FB9393FA93
                93FB9393FA9393FB9595FB9595FB9595FB9494FA9494FA9393FB9393FA9393FB
                9595FB9595FB9595FB9494FA9494FA9494FB9595FB9595FA9494FA9292FA8F8F
                F88C8BF98A8AF98989F88988F88988F88988F88988F88887F88685F98383F983
                83F98282F98482F98684F98887F98988F88988F88988F88888F88787F88585F8
                8484F88182F98182F98383F98684F98787F88988F88988F78A88F78B89F88D8A
                F98C8AF98A89F98988F98787F98685F98584F98583FA8584FA8888F98D8CF990
                8FF99090FA9090FA8F8FFA1717FE1111FF0B0BFF2727FE8B8B888B8B880101FE
                0606FF0E0EFF3637FD8686FA9191FA9394FB9695FB9291F98F8EF68C8AF48A87
                F58988F58989F68887F68686F68685F68785F68988F88C8BF98D8CF98E8BF88C
                89F68A87F58885F48887F58A8AF78B8AF88C8BF88D8CF98E8DF98E8DF88C8BF6
                8A88F48987F48988F58A89F78C8BF88C8CF78A8CF88C8CF98D8DF98D8CF88C8A
                F68A88F58A87F58A88F68B8AF78C8CF88C8BF88C8BF88D8BF88E8CF88D8BF78C
                8AF68A88F48887F58A87F68C89F88C8BF98C8BF98C8CF98D8CF88D8CF88D8CF7
                8C8AF68A88F58A87F58B89F68B8AF68C8BF78C8BF88D8CF88D8CF88E8CF88D8C
                F78C8AF58B89F48A88F58B89F78E8CF98F8EFA908FFA8F8FFA8E8FFA8F8FFA90
                90FA9090FA8F8FF98F8EF98F8EF9908FF99090FA9090FA9090FA9090FA908FFA
                908FF9908FF99090F9908FF9908FFA8F90FA9090F99090FA9090FA9090FA9090
                FA908FF99090FA9090FA9090FA9090FA908FFA918FF9908FF9908FF99090F990
                90FA9090FA908FF9918EF88F8EF88F8FF89090F99090FA9090FA8F8FF9918FF9
                908EF9908EF99090F99090FA9090FA9090F99090F99090FA9090FA9090FA9090
                FA9090FA908FF9908FF99090FA9090FA9090FA908FF9908FF8908FF9908FF990
                90FA9090FA9090F99090F89090F98F8FFA9090F99090FA9090FA9090FA908FF9
                908FF9908FF9908FF99090F99090FA9090FA908FF9908FF9908FF9908FF99090
                F99090FA9090F9908FF9908FF9908FFA908FF99090FA9090FA9190FA9392FA94
                94FA9494FA9494FB9393FB9393FB9393FA9393FB9494FB9595FA9595FA9494FA
                9393FA9393FA9393FA9393FB9494FB9595FB9595FB9494FA9494FA9494FB9494
                FA9594FA9493FA9292FA8F8FF98C8CF98A8AF98989F98989F98989F98988F889
                88F88887F98685F98484F98483F98383F98484F98686F98887F98988F98989F8
                8989F88888F88787F88686F88484F88383F98383F98485F98686F98887F88988
                F88A88F88A88F88B89F88B89F98A89F98A89F98888F98787F98686F98585F985
                85F98686F98989F98D8CF9908FF99090FA9090FA8E8DFA1717FE1111FF0B0BFF
                2727FE8B8B888B8B88A6A6E1A8A8E2AAAAE3D2CFE9F2EDF0F2EDF0F2EDF0F2ED
                F0F1ECEFF0EBF0EFE8ECF2EDF0F2EDF0F2EDF0F1ECEFF1ECF0EEE6EAF1ECF0ED
                E5E8F2EDF0F3EFF2F3EEF1F1ECEFF1ECF0EEE6EAF1ECF0EEE7EAF1EDF1F1ECF0
                F1ECF0EDE5E9ECE3E7F1EDF1EEE8EDF0ECF2EFE9EFF1ECF0F2EDF1F1ECF0EDE5
                E9ECE3E7F1EDF1EDE7ECEFECF1F0EBF0F0EBF0EDE6EBF0EBF1F0EBF0F1EDF2EF
                E9EFF1ECF0F2EDF1F0ECF0ECE6EFEDE8F0EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2
                F0ECF1F4F0F4F5F2F7F3F0F5F0EAF0F1ECF0F2EDF1F0EBEFEDE7ECEEE8EEEFEB
                F2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F6
                F3F8F6F4F9F5F2F7F2EEF4EDE5ECECE6ECEEE9F0EEE9EFEFEBF2EEEAF2EBE7F2
                EDE8F0EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2
                F7F4F0F5F3EFF3F1EDF1EDE5E9ECE4EAEFEAF1EFEBF2EEEAF2EEE9F1EFEBF0F1
                EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2F7F4F0F5F3EFF3F1EDF1EDE5E9ECE4EA
                EFEAF1EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2
                F7F5F3F8F5F2F6F1ECF1F0EBF2EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4
                F0F4F6F3F8F6F4F9F5F2F7F5F3F8F4F0F4F1ECF1F0EBF2EFEBF2EEEAF2EEE9F1
                EFEBF0F1EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2F7F5F3F8F4F0F4F1ECF1F0EB
                F2EFEBF2EEEAF2EEE9F1F1EEF2F6F3F7F7F5F8F7F5F9F7F5F8F8F5F8F8F6F9F8
                F6F9F8F6F9F7F5F7F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F7F5F9
                F7F5F8F8F5F8F8F6F9F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F7F8F9F7F9F8F6
                F9F8F6F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F6F7F9F7F8F9F7F8FAF6F7F9
                F6F7F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8
                F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F6F7FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8F9F7F8FAF7F8F9F7F8F9F7F8F8F6F8F4F0F1F5F1F2F9F5F9F9F7F8FAF7F8FA
                F7F8FAF7F8FAF7F8FAF7F8F9F7F8F9F7F8F9F7F8F8F6F9F7F5F9F3F0F6EDE9F3
                EDE9F3AEAEE4ACACE3AAAAE2B9B8E68B8B88908F8DCABEBECABEBECABEBEE1D8
                D7F6EFECF6EFECF5EDEAF7F1EEF5EEECF4EDEAF3EBE8F3EDEBF8F4F1F8F4F1F8
                F3F1F4EDEAF3EBE8F3EDEBF8F4F1F8F4F1F8F3F1F3EDEBF3EBE8F3EDEBF8F4F1
                F8F4F1F8F3F1F2ECEAF2EBE9F8F5F3F8F4F1F8F4F1F8F3F1F2ECEAF2EBE9F8F5
                F3F8F4F1F8F4F1F8F3F1F2ECEAF2EBE9F8F5F3F8F4F1F9F5F2F9F5F3F2ECEAF2
                EBE9F9F6F4F8F4F1F9F5F2F9F5F3F2ECEAF2EBE9F9F6F4F8F3F1F8F2F0F8F2F0
                F6F2F0F4EEECF9F6F4F8F3F1F8F2F0F8F2F0F6F2F0F4EEECF9F6F4F9F6F4F8F2
                F0F9F3F1F8F5F3F8F5F3FAF7F5FAF7F5F8F3F1F9F4F2FAF7F5F9F6F4FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F8F4F2F9F6F4FAF7F5FAF7F5FAF7F5
                FAF7F5F2EAE9FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F2EAE9FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5F2EAE9FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F2EAE9FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5F2EAE9FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F3ECEB
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F3ECEBFAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5F3ECEBFAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F7F3F1FAF7F5FAF7F5FAF6F4F9
                F5F3FAF6F4F9F5F3FAF6F4FAF6F4F9F5F3F9F5F3FAF6F4FAF6F4FAF6F4FAF6F4
                F8F4F2F9F4F2FAF6F3FAF6F3FAF6F4FAF6F3F9F5F2F9F5F3FAF7F4FAF6F3F9F5
                F3FAF6F3F9F5F2F9F5F3FAF7F4FAF6F3F8F3F1F6F0EDFAF6F4FAF6F3FAF6F4FA
                F6F3F9F5F2F9F5F3FAF7F4FAF6F3F9F5F3FAF6F3F9F6F3F9F5F2F9F4F2F8F3F0
                FAF6F3FAF6F4FAF6F4FAF6F3F9F5F2F9F5F3FAF7F4FAF6F3F9F5F3FAF6F3F9F6
                F3F9F5F2F9F4F2F8F3F0FAF6F3FAF6F4FAF6F4FAF6F3F8F4F1FAF5F2FAF6F4FA
                F6F4FAF6F3F9F5F2F7F2F0FAF6F4F8F4F2F9F4F1FAF6F4F9F3F1FAF6F3F9F5F2
                F7F2F0FAF6F4F7F3F1F5EEEBFAF6F4FAF5F3F6F0EDF7F2EFF7F2F0FAF6F4F7F3
                F1F5EEEBFAF6F4FAF5F3F6F0EDF7F2EFF7F2F0FAF6F4F7F3F1F5EEEBFAF6F4FA
                F5F3F4ECE9F9F5F2F8F3F1F9F4F2F7F3F1F5EEEBFAF6F4FAF5F3F4ECE9F9F5F2
                F8F3F1F9F4F2F7F2F0F5EEEAF5EFEBCBBFBFCABEBECABEBED5CAC9908F8DE3E3
                E2F2EFEFF2EFEFF2EFEFF7F5F5FDFBFAFDFBFAFCFAF9FAF8F8FBF7F7FBF7F6FC
                F9F8FBF9F8FAF5F5FDFAF9FDFBFAFBF8F8FDFAFAFDFCFBFDFCFBFDFCFBFDFBFB
                FDFCFBFDFCFBFDFCFBFCFBFAFCFAF9FDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFDFC
                FBFDFCFBFCFBFAFAF8F7FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFBFAFCFBFAFC
                FBFAFBF9F8F9F6F5F8F4F3FBF9F8FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFBFB
                FEFCFCFEFCFCFEFDFCFDFCFBF9F5F4FAF7F6FDFCFBFCFAF9FCF9F8FDFCFBFCFB
                FAFCFAF9FDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFCFBFAFEFDFCFEFDFCFEFDFCFD
                FCFCFEFDFCFEFCFCFEFDFCFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCF9F9FDFCFBFEFDFCFEFDFCFEFDFCFEFD
                FCFDFCFBFEFDFCFEFDFCFEFDFCFDFCFBFDFBFAFEFCFBFEFDFCFEFDFCFCF9F8FA
                F8F8FBFAF9FEFDFCFEFDFCFEFDFCFEFDFCFBF9F9FBF9F9FCFAFAFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFDFBFBFEFDFCFEFDFCFDFBFBFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFC
                FEFDFCFEFDFCFDFBFBFDFBFBFEFDFDFEFDFDFCFAFAFAF8F8FCF9F9FEFCFCFEFD
                FDFEFDFCFEFDFCFEFDFCF7F2F2FDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFD
                FCFCFEFDFCFEFDFDFDFBFBFEFDFDFEFDFDFDFCFCFEFCFCFEFDFDFEFDFDFEFDFD
                FEFDFCFEFDFCFEFDFCFDFCFCFAF7F7FAF8F8FBFAFAFCFBFBFCFBFBFCFBFBFDFC
                FCFDFCFCFEFDFDFEFDFCFAF7F7F8F4F4FDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFD
                FCFCFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFCFAFAFEFDFDFEFDFCFEFDFDFEFDFDFBF8F8FBF9F9FEFDFCFEFDFCFBF9
                F9FBFAFAFEFDFDFEFDFDFEFDFCFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFDFCFCFE
                FDFCFEFCFCFEFDFCFEFDFDFBF8F7FAF8F7FDFCFBFBF9F8FAF8F8FDFBFBFDFBFB
                FCFAF9FBF9F8FCFAF9FDFCFCFDFBFBFDFCFBFCFBFAFCFBFAFCFBFAF2EFEFF2EF
                EFF2EFEFF4F2F1E3E3E2908F8D0100FF0000FF0301FF2929FE8383FB8C8BFA8E
                8EFA9090FA8E8EF78B8AF58987F38784F58784F68786F88686F78585F78584F7
                8584F88685F98887F98987F98A89F88B89F58785F38481F48482F58787F88887
                F98887F98888F88989F98989F88A88F68886F38685F48685F68887F88988F989
                88F98788F98887F98988F98988F88988F58886F68785F58785F58889F88989F9
                8988F98988F88988F88988F98A88F78987F58785F38584F38785F68887F88988
                F98988F98988F98988F88988F88988F78887F58785F48785F58785F68887F789
                88F78988F88988F98989F98989F88A89F78C88F48886F28784F58987F78B8AF9
                8C8CFA8C8BFA8C8BFA8B8BFA8B8BFA8B8BFA8B8BF98B89F88889F88A8AF78C8B
                F98C8CFA8C8CFA8C8CFA8C8CFA8B8BFA8B8AF98C8BF88B8AF78A89F88A8AF88C
                8CFA8C8CFA8C8CFA8C8CFA8C8CFA8B8BFA8A8AFA8B8BF98C8CF98C8CFA8C8BF9
                8C8CFA8B8BFA8A8AFA8C8BF88C8CF98C8CFA8C8BF98B8AF68A87F58A89F88C8B
                F88C8CF98C8CFA8C8BF98B8AF68B8AF48B89F88C8BF88C8CF98C8CFA8C8BF98B
                8AF78B89F68C8BF88C8CFA8C8CFA8C8CFA8C8CFA8B8AF78B87F38C8BF88C8CFA
                8C8BF88B87F58B87F18B8AF78A88F48C8BF88C8CFA8C8BF88B87F28B86F18B8A
                F78A89F48C8BF88C8CFA8C8BF88B88F48C88F48B8AF78B88F38C8BF88C8CFA8C
                8BF88B89F38C88F48B8AF78A87F38C8BF88C8CFA8C8AF68B89F48C89F68B8AF7
                8A86F18C8BF78C8BFA8C89F68D8BF68F8FF99090FA9090FA9090FA8F8FFA9090
                F99090FA9090FA9090FA9090FA908FF98F8FFA8F8FFA9090F89090FA9090FA90
                90FA9090FA908FF98F8FFA8F8EF99090F99090F9908FF98F8DFA8C8CF98887F9
                8585FA8483F98483F98483F98483F88483F88383F98282F98181F9817FF9807F
                F98081F98382F98584F98585F88584F88584F88584F88484F88383F88282F980
                80F97F80F98082F98383F98584F88584F88484F88684F88785F88987F78987F8
                8887F88685F88484F88283F98081F98080F98182F98584F88989F88B8AF98C8C
                FA8C8CFA8B8BFA0606FF0000FF0000FF2323FE908F8D908F8D0100FF0000FF03
                01FF2929FE8383FB8C8BFA8E8EFA9090FA8E8EF78B8AF58987F38784F58784F6
                8786F88686F78585F78584F78584F88685F98887F98988F98A88F88987F68785
                F58682F58583F58786F88887F98987F98988F98989F98A89F88988F78886F487
                85F58685F68887F88988F98988F98788F98888F98988F98988F88988F68886F6
                8785F58785F68888F88989F98988F98988F88988F88988F98A88F78987F58785
                F38685F58786F68887F88988F98988F98988F98988F88988F88988F78887F587
                86F58785F68785F68887F78988F78988F88988F98989F98989F88A89F78B88F4
                8886F38885F68987F88B89F98C8CFA8C8BFA8B8BFA8B8BFA8B8BFA8B8BFA8B8B
                F98B89F9898AF88A8AF78B8BF98C8CFA8C8CFA8C8CFA8C8CFA8B8BFA8B8AF98C
                8BF88B8AF78B8AF88B8BF98C8BFA8C8CFA8C8CFA8C8CFA8C8CFA8B8BFA8B8BFA
                8B8BF98C8CFA8C8CFA8C8BFA8C8CFA8C8BFA8B8BF98B8BF98C8CF98C8CFA8C8B
                F98B8AF88B89F78B8AF88B8BF88C8CF98C8CFA8C8BF98B8BF88B8AF78B8AF88C
                8BF98C8CF98C8CFA8C8BF98B8BF88B8AF78C8BF88C8CFA8C8CFA8C8CFA8C8BFA
                8B8AF78B89F88C8BF98C8CFA8C8BF88B89F78B89F48B8AF88B88F68C8BF98C8C
                FA8C8BF98B8AF68B89F48B8AF88B8AF78C8BF98C8CFA8C8BF98C89F68C89F78B
                8AF88B89F68C8BF88C8CF98C8BF98C8AF78C89F68B8AF88A89F68C8BF88C8CF9
                8C8BF98C8AF78C8AF98B8AF88B89F78C8BF88C8BFA8C8BF88D8CF98F8FF9908F
                F9908FF9908FF98F8FF9908FF9908FF99090FA9090F9908FF98F8FF98F8FF98F
                8EF98F90F98F90FA9090FA908FF9908FF9908FF98F8FFA8F8EF98F8FF9908FF9
                8F8EF98E8DFA8C8BF98888F98685F98585F98584F98584F98484F88484F88483
                F98282F98181F98181F98180F98281F98383F98584F98585F98585F88584F885
                84F88484F88383F88282F98180F98081F98182F98484F98585F98585F88684F8
                8684F88786F88887F78787F88786F88685F88484F88283F98182F98181F98182
                F98584F88988F88B8AF98C8CFA8C8CFA8A8AFA0606FF0000FF0000FF2323FE90
                8F8D908F8DA6A6E1A6A6E1A6A6E1CFCCE8F3EEEFF3EEEFF3EEEFF3EEF0EFE7EA
                F0EBEDEDE7E7F2EDEEF3EDEEF3EEF0EFE7EAF1ECEDECE5E5F0E9EBEDE5E7F4EF
                F1F4F0F2F4F0F2EFE7EAF0EBEBECE4E4EFE8EAF0EAECF2EEF1F3EEF1F1ECEFF2
                EDF0EFE7EAF1ECF0EEE7EAF1EDF1F1ECF0F2EEF1F5EFF2F2EFF2F1ECF0EEE6EA
                F1ECF0EDE4E7F1ECEFF3EFF3F1EDF1ECE2E6EFE7EBF3EFF3F3EFF3F2EDF1F2EE
                F1F5EFF2F2EFF2F1ECF2F0EBF3EFEAF0F0ECF1EEE8EEF3EFF4F6F1F5F6F2F6F5
                F3F6F6F3F7F4F0F4F2EDF1F2EEF1F5EFF2F2EFF2F1EBF0EEE8EEEFEAEFF0ECF2
                F0EDF5F0EDF5EFEAF0F0ECF1EEE8EEF3EFF4F6F1F5F6F2F6F6F4F7F7F5F9F7F5
                F9F7F5F9F6F3F7EFE9EFECE7EDEFEAF2EEEAF1EFE9EFF0ECF2F0EDF5F0EDF5EF
                EAF0F0ECF1EEE8EEF3EFF4F6F1F5F6F2F6F5F3F6F5F1F5F6F4F7F7F4F8F7F3F7
                F6F3F7F3EFF3F1ECF0F3EDF1F5F2F7F2EEF3F1EDF2EDE6ECF2EEF3F6F1F5F6F2
                F6F5F3F6F5F1F5F6F4F7F7F4F8F5F1F5F3EDF1F2EDF1F2EDF1F4EEF2F4F0F4F0
                EAEFF0ECF1EDE6ECF2EEF3F6F1F5F6F2F6F5F2F5F5F1F5F6F4F7F7F5F9F7F5F9
                F7F5F9F6F3F7F5F2F6F1ECF1F0EDF2ECE4EAF2EDF2F5F0F4F5F1F5F4F1F4F4EF
                F3F6F4F7F7F5F9F7F5F9EFE7EBEFE7EBF5F1F5F1ECF1F0EDF2ECE4EAF2EDF2F5
                F0F4F5F1F5F4F2F5F5F0F4F6F4F7F7F5F9F7F5F9EFE7EBEFE7EBF5F1F5F1ECF1
                F0EDF2ECE4EAF3EEF2F6F2F5F0EAEBF4EFF0F8F5F6F9F6F7F9F6F7F8F5F6F7F4
                F5F8F6F8F8F6F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F8F6F7F9F7F8F9F7F8FAF6F7F9F6F7F9F7F8F9F7F8F9F7F8F9F7F8
                F9F7F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8F9F7F9F9F7F8F9F7F8FAF8F8FAF8
                F8F9F6F7FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8FAF7F8F9F7F8F9F7F8F8
                F6F8F4F0F1F5F1F2F9F6F9F9F7F8FAF7F8FAF7F8FAF7F8FAF7F8FAF7F8F9F7F8
                F9F7F8F9F7F8F8F6F9F8F6F9F7F5F8F3EEEFF4EFF1F8F6F8F9F7F8F9F7F8F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F6F8F5F2F5F1EDF3EFEBF2EFEBF2A8
                A8E2A6A6E1A6A6E1B8B7E5908F8D959592CABEBECABEBECABEBEE1D8D7F6F0EC
                F6F0ECF6F0ECF6F0EDF6F1EEF7F2EFF8F2EFF8F2EFF8F3F0F9F4F1F7F2EFF7F2
                EFF8F2EFF8F2EFF8F3F0F9F4F1F8F3F0F7F2EFF8F2EFF8F2EFF8F3F0F9F4F1F9
                F4F1F8F4F1F8F3F1F8F3F0F8F3F0F9F4F1F9F4F1F9F5F2F9F4F2F8F3F0F8F3F0
                F9F4F1F9F4F1F9F5F2FAF5F3F6F1EEF5EDEBF8F1EFF9F4F2FAF6F3FAF6F3F7F3
                F1FAF5F3FAF5F3FAF5F3FAF6F3FAF6F3F7F3F0F7F2F0F7F1EFFAF5F3FBF7F5FB
                F7F5FAF7F4FAF7F5FAF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5
                FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7
                F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FB
                F7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5
                FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7
                F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FB
                F7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5
                FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FAF7F5FAF7
                F5F5EEEDFAF7F5FAF7F5FBF7F5FAF6F4FBF7F5FBF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF6F4F9F4F2FAF6F4FBF7F5FBF7F5FBF7F5FAF6F4F9F5F3
                FAF6F4FBF7F5FBF7F5FBF7F5FAF6F4FAF6F4FBF7F5FBF7F5FAF6F4F9F4F2FAF6
                F4FBF7F5FBF7F5FBF7F5FAF6F4F9F5F3FAF6F4FBF7F5FBF7F5FAF6F4FAF6F3FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FBF7F5FAF6F4FAF6F4FBF7F5
                FBF7F5FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6
                F4F9F5F3F9F5F3FBF7F5FBF7F5FAF6F4FAF6F4FAF6F4FBF7F5FAF6F4F9F5F3FB
                F7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5F9F5F3FBF7F5FBF7F5FBF7F5
                FBF7F5FBF7F5FBF7F5FBF7F5F9F5F3FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7
                F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF6F4FAF5F3FBF7F5FBF7F5FBF7F5FB
                F6F4F9F4F1F7F0EDF6EFEBCABEBECABEBECABEBED5CAC9959592E4E4E4F2EFEF
                F2EFEFF2EFEFF7F5F5FDFBFAFDFBFAFDFBFAFCFAF9FDFBFAFDFBFAFDFBFAFDFB
                FAFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFCFBFAFAF8F7FAF7
                F6FBFAF9FDFCFCFDFCFCFDFCFCFEFCFCFEFCFCFEFCFCFEFDFCFEFDFCFDFBFAFC
                F9F9FCF9F9FDFCFBFEFDFCFEFDFCFEFDFCFDFCFBFCFAF9FDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFCFAF9FCFAFAFDFCFBFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFCFCFCFBFBFDFBFBFDFCFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFC
                FBFAF8F7F6F4F3F2F2F1F1F3F2F1F5F4F4F9F8F7F9F8F7FAF9F8FBFAF9FDFCFB
                FEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFD
                FCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFCFEFD
                FCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFDFEFDFDFEFDFDFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFC
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFCFDFC
                FCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFBF9F8FDFBFAFC
                F9F8FCF9F8FEFCFCFCF9F9FDFCFBFDFBFAFDFBFAFDFBFAF2EFEFF2EFEFF2EFEF
                F4F2F1E4E4E49595920100FF0000FF0201FF2524FD7F7FFB8787FA8788FA8888
                F98786F58786F68584F78483F78483F88484F98484F98383F88383F98383F984
                84FA8584FA8585FA8585F98685F78584F78483F88485F88586F98685FA8685FA
                8685FA8585FA8685F98685F88685F78484F78485F88685F98786FA8785FA8585
                FA8585FA8585FA8585F98685F88586F98585F88685F88585F98686FA8686FA86
                86F98687F98585F88583F68584F58585F58584F68584F88585F98687FA8786FA
                8685FA8585F98585F98583F78583F78584F78484F78485F88585F98686F98685
                F98685F98586F98585FA8685F68684F48684F68584F88686F98786FA8787FA87
                87FA8787FA8787FA8787FA8787FA8786F98786F88686F98686F98787FA8787FA
                8787FA8787FA8787FA8787FA8787FA8787F98787F98786FA8787FA8786F98787
                FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA87
                87FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA
                8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787
                FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA87
                87FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA
                8787FA8787FA8787FA8787FA8787FA8787FA8787F98787FA8787FA8787FA8787
                FA8787FA8787FA8787FA8787F98787FA8787FA8787FA8787FA8786FA8787FA87
                87F98787FA8787FA8888FA8A8AFA8B89F68B88F38C88F48B8AF68A86F08C8BF7
                8C8CFA8C89F58B88F48B88F78A89F88A89F88986F28B8AF78B8BFA8C89F58B88
                F48B88F78A89F88A89F88987F68A88F58B88F78A89F88987F88583F68282F97F
                7FF98080F98080F98080F98080F98180F98080F97F7FF97F7FF97F7FF98080F9
                8282FA8384FA8383F98282F98281F98282F98282F98281F98180F98080F9807F
                F98181FA8282FA8484F98382F98281F98281F98282F98483F88484F88482F884
                82F88282F88181F97F80F97F7EF97F7EF78282F88584F98686F98787FA8787FA
                8784FA0001FF0000FF0000FF2222FE9595929595920100FF0000FF0201FF2524
                FD7F7FFB8787FA8788FA8888F98786F58786F68584F78483F78483F88484F984
                84F98383F88383F98383F98484FA8584FA8585FA8685F98685F78584F78483F7
                8485F88584F98685FA8685FA8585FA8585FA8685F98685F88684F78484F78484
                F88585F98786FA8685FA8585FA8585FA8585FA8585F98585F88586F98585F886
                85F88585F98686FA8686FA8686F98686F98585F88584F68584F58585F68584F6
                8584F88585F98686FA8786FA8685FA8585F98585F98583F78584F78584F78484
                F78485F88585F98685F98685F98685F98585F98585FA8685F88685F58684F685
                84F88686F98786FA8787FA8787FA8787FA8787FA8787FA8787FA8786F98686F8
                8686F98686F98787FA8787FA8787FA8787FA8787FA8787FA8787FA8787F98787
                F98786FA8786FA8786FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA87
                87FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA
                8786FA8786F98787F98787FA8787FA8787FA8787FA8787FA8787FA8787FA8787
                FA8787FA8787FA8787FA8787F98787FA8787FA8787FA8787FA8787FA8786FA87
                86FA8787FA8787FA8787FA8787F98786F98787FA8787FA8787FA8787FA8787FA
                8787F98786F98786F98787FA8787F98787FA8787FA8787FA8787FA8787FA8786
                F98787F98787F98787F98787FA8786FA8787FA8786F98787F98787FA8787F987
                86FA8786FA8786F98787FA8786F98787FA8787FA8888F98989F98B89F78B89F5
                8C89F78B8AF68B88F48B8BF78C8CFA8C8AF68B89F68A88F78A89F98A89F88A88
                F68A8AF88A8BFA8C89F68B88F58A89F78A89F88A89F98988F78A89F78989F889
                89F98987F88583F68382F98181F98180F98180F98181F98081F98181F98080F9
                7F7FF97F7FF97F7FF98080F98282FA8383FA8383F98282F98281F98282F98282
                F98281F98180F98080F9807FF98181FA8282FA8484F98382F98281F98282F983
                83F98483F88484F88483F88483F88382F88181F98080F97F80F98080F78383F8
                8584F98686F98787FA8787FA8683FA0001FF0000FF0000FF2222FE9595929595
                92A6A6E1A6A6E1A6A6E1D0CDE8F3EEEFF3EEEFF3EEEFF3EFF0F3EFF0F4EFF0F4
                EFF0F4EFF0F3EEEFF3EFF0F3EFF0F4F0F1F4F0F1F4F0F1F4F0F1F4F0F1F4F0F2
                F4F0F2F5F0F2F5F1F2F5F1F2F5F1F2F5F1F2F5F1F3F5F1F3F2EDEFF3EEF0F1EB
                EBF0EAEBF0EAECF2EEF1F3EFF1F4F0F2F6F2F5F5F0F3F3F0F0EEE7E7EEE7E9F0
                EBEDF3F0F2F5F1F4F4F1F4F4EFF2F5F1F3F6F3F5F6F3F5F5F2F4F5F1F3F6F2F5
                F5F0F3F3EFF0F0EAEDF1EBF0F1EDF2F3EFF3F7F4F7F7F5F8F7F4F7F7F4F7F7F4
                F6F6F3F5F5F2F4F5F1F3F6F2F5F6F1F4F5F1F2F2EDF0F2EEF2F3F0F5F5F2F7F4
                F1F7F2EDF3F1EDF3F3EFF3F7F4F7F7F5F8F8F5F8F8F6F9F8F6F9F8F6F9F8F6F9
                F7F5F9F3F0F4EFEBF1F0EBF0EFEBF1EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F1ED
                F3F3EEF3F7F4F7F8F6F9F8F6F9F8F6F9F8F6F9F6F3F6F3EDEFF3EDEFF5F0F3F8
                F6F9F8F6F9F8F6F9F8F6F9F7F5F8F6F3F8F6F3F6F8F5F8F8F6F9F8F6F9F8F6F9
                F8F6F9F7F4F7F5F1F4F6F2F4F7F3F6F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F7F5
                F9F7F4F7F8F5F8F8F6F9F8F6F9F8F6F9F8F6F9F8F5F8F8F6F9F8F6F9F8F6F9F8
                F6F9F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9
                F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6F9F8F6
                F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F7F5F9F7
                F5F8F8F5F8F8F6F9F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F7F8F9F7F9F8F6F9
                F8F6F9F9F7F9FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8F9F7F8F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F7F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8F9F7F8FAF7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F6F9F9F7F8
                FAF7F8FAF7F8FAF7F8FAF7F8FAF7F8F9F7F8F9F7F8F9F7F8F8F6F9F8F6F9F8F6
                F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F8F6F9F8F6F9F9F7F9F9F7F8FAF8F8FAF8F8F9F7F8
                F9F7F8FAF8F8FAF8F8F9F7F8F8F5F7F4F1F5F1EEF3F0ECF2F0ECF2A6A6E1A6A6
                E1A6A6E1B9B8E59595929A9997B8B0AFCABEBECABEBEE1D9D7F6F0ECF6F0ECF6
                F0ECF6F0EDF6F0EDF6F1EDF6F1EEF7F2EFF6F1EEF6F1EEF6F1EEF7F2EEF7F2EE
                F7F2EFF7F2EFF7F2EFF7F2EFF7F2EFF8F2EFF8F3F0F8F3F0F8F3F0F8F3F0F8F3
                F0F8F3F0F8F3F0F8F3F1F9F4F2F8F4F1F8F4F1F8F4F1F9F4F1F9F4F1F9F4F2F9
                F4F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F3F9F5F3F9F5F3F9F5F3F9F6F3FAF6F3
                FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF7F4FAF7F4FAF7F5FAF7F5FAF7
                F5FAF7F5FBF7F5FBF7F5FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF7F5FBF7F5FAF7
                F4FBF7F5FBF8F5FBF7F5FAF7F5FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF7F5FBF7F5FAF7F5FBF7F5FBF8F6FBF8F6FBF8F6FBF8F5FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FAF7F4F8F4F1CCC0C0CABEBECABEBEACA7A69A9997E6E5E5EDEBEBF2EFEFF2
                EFEFF7F5F5FDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFBFDFBFBFDFBFB
                FDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
                FDFCFCFDFCFCFDFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFEFDFCFEFDFCFDFCFCFEFDFCFE
                FCFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FDFCFCFBFAFAFAF9F9F9F8F8FBFAFAFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFC
                FCFBFBFBFAFAFBFAFAFBFAFAFCFBFBFCFBFBFCFBFBFDFCFCFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFCFEFDFDFEFDFCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFCFBFBFCFAF9FDFB
                FAFDFCFCFEFCFCFEFDFDFEFDFDFEFDFCFDFCFBF2EFEFF2EFEFF2EFEFEAE9E9E6
                E5E59A99973B3AD80001FE0100FF2422FE7D7CFA8282FA8282FA8282FA8282F9
                8282F88282F98281F98281FA8281FA8181F98181FA8181FA8181FA8181FA8282
                FA8282FA8282F98282F98282F98282F98282F98282FA8282FA8282FA8282FA82
                82FA8282F98282F98282F98282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282F98282F98282F98282F98282F98282FA8282FA8282FA8282FA8282
                FA8282F98282F98281F88282F98282F88282FA8282FA8282FA8282FA8282FA82
                82F98282F98281F98282F98282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282F98282FA8282FA8282F88282F98282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8383FA8585FA8686FA8686FA8686FA8585FA8585FA8484FA85
                85FA8484FA8383FA8383FA8383FA8383FA8383FA8383FA8484FA8383FA8383FA
                8383FA8282FA8282FA8383F98383FA8383F98383F98281FA8080FA7E7EF97E7E
                F97E7EF97E7EF97F7FF97F80F97E7EF97E7DF97E7EF97E7EF97F7FF98180FA81
                81FA8180FA8080FA8080FA8081FA8080FA8080FA807FFA8080FA7F80FA8080FA
                8181FA8181FA8280FA8080FA8080FA8081F98081F98081F98181F98281F98281
                F98181F97F7FF97F7FF98081FA8282F98282FA8282FA8282FA8282FA8182FA01
                00FF0000FF0000FF605FBE9A99979A99973B3AD80001FE0100FF2422FE7D7CFA
                8282FA8282FA8282FA8282F98282F88282F98281F98281FA8281FA8181F98181
                FA8181FA8181FA8181FA8282FA8282FA8282F98282F98282F98282F98282F982
                82F98282FA8282FA8282FA8282FA8282F98282F98282F98282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282F98282F98282F98282F98282F98282
                FA8282FA8282FA8282FA8282FA8282F98282F98281F88282F98282F88282FA82
                82FA8282FA8282FA8282FA8282F98282F98281F98282F98282FA8282F98282FA
                8282FA8282FA8282FA8282FA8282FA8282F98282FA8282FA8282F88282F98282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8384FA8584FA8585F98686FA86
                85FA8585F98584FA8484FA8584F98484F98483F98383FA8483F98383F98383FA
                8484F98484F98483F88483F98383FA8383FA8382FA8383F98383FA8383F98382
                F98281FA8080FA7F7EF97E7EF97E7EF97E7EF97F7FF97F7FF97E7EF97E7EF97E
                7EF97E7EF97F7FF98180FA8181FA8180FA8080FA8080FA8080FA8080FA8080FA
                807FFA807FFA7F7FFA8080FA8180FA8181FA8280FA8080FA8080F98081F98081
                F98081F98181F98281F98181F98180F97F7FF97F7FF98081F98282F98282FA82
                82FA8282FA8282FA8182FA0100FF0000FF0000FF605FBE9A99979A9997A1A1C5
                A6A6E1A6A6E1D0CDE8F4EFEFF4EFEFF4EFEFF4F0EFF5F0EFF5F0EFF5F0F0F5F0
                F0F5F0F0F5F0F0F5F0F0F5F1F0F5F1F0F5F1F1F5F1F1F5F1F1F5F1F2F5F1F2F6
                F1F2F6F2F2F6F2F2F6F2F2F6F2F2F6F2F3F6F2F3F6F2F3F6F2F3F6F3F3F6F3F3
                F6F2F3F6F2F4F7F3F4F7F3F4F7F3F4F7F3F4F7F4F4F7F4F5F7F4F5F7F3F4F6F3
                F4F7F3F5F7F4F5F7F4F5F7F5F6F8F5F6F8F5F6F8F5F6F8F4F5F8F4F5F7F4F5F7
                F4F5F8F5F6F8F5F7F8F5F6F8F5F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7
                F8F6F7F8F5F6F8F5F6F8F6F7F9F7F8F9F7F8F8F6F7F8F6F7F8F6F8F8F6F8F7F5
                F8F8F5F7F9F6F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F7
                F5F6F5F1F5F1ECF1F1EDF2F0EBF1F4F1F5F6F3F8F6F4F9F5F2F7F6F2F6F8F5F7
                F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
                F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
                F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8FAF7F8FAF7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8FAF7F8FAF8F8FAF8F8FAF8F8FAF8F8FBF8F8FAF7F8FAF7F8FAF7F8F9F7F8
                F9F7F8F9F7F8F9F7F8FAF7F8FAF7F8F9F7F8FAF7F8FAF7F8FAF7F8FAF7F8FAF7
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
                F9F7F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8F9F7F8FAF8F8FAF8F8FAF8F8FAF8
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F5F7F5F2F5A6A6E1A6A6E1A6A6E1
                9F9EB39A9997FFFFFF9F9E9CD5CBCACABEBEE1D9D7F6F0EDF6F0EDF6F0EDF6F1
                EEF7F1EEF7F1EEF7F1EEF7F2EEF7F2EEF7F2EFF7F2EFF8F2EFF8F2EFF8F2EFF8
                F2EFF8F3EFF8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F4F1F9F4F1
                F9F4F1F9F4F1F9F4F1F9F4F1F9F4F2F9F4F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5
                F2F9F5F3FAF5F3FAF5F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F4FAF6F4FAF6F4FA
                F6F4FAF7F4FAF7F4FAF7F5FAF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF8F5FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6E1DBDBD1C6C6DBD1D09F9E9CFFFFFFFFFFFFE7E7E6F4F2F2F2EFEFF7F5
                F5FDFBFAFDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFDFCFCFDFC
                FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFEFCFCFEFCFCFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFDFCFCFDFCFCFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFD
                FCFCFCFBFBFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFC
                FCFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFDFCFCFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDF7F6F6F3F1F1F6F3F3E7E7E6FFFFFFFFFF
                FF9F9E9C2120FC0000FD2322FD7B7BF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97F7FF97F7FF97F7FF97F7FF97F7FF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97D7EF97D7CF97D7DF97D7CF9
                7C7CF97D7DF97D7DF97D7CF97D7CF97D7CF97D7DF97E7EF97D7EF97E7DF97E7D
                F97D7DF97E7DF97D7DF97D7EF97E7EF97E7DF97E7DF97D7DF97D7DF97E7EF97E
                7EF97E7DF97E7EF97D7DF97D7DF97E7EF97E7FF97E7FF9807EFA8080FA807EFA
                7E7EFA7F7DF97F7EF97F7EF97E7EF97E7EF97E7EF97E7EF97E7EF90000FF0000
                FF2F2FFD9F9E9CFFFFFFFFFFFF9F9E9C2120FC0000FD2322FD7B7BF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97F7FF97F7FF97F7FF97F7FF97F7F
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7D7EF97D7CF97D7CF97C7CF97C7CF97D7DF97D7DF97D7CF97D7CF97D7CF97C7D
                F97E7EF97D7DF97E7DF97E7DF97D7DF97D7DF97D7DF97D7DF97E7DF97E7DF97E
                7DF97D7DF97D7DF97E7EF97E7EF97E7DF97D7EF97D7DF97D7DF97E7EF97E7FF9
                7E7EF9807EFA7F7FFA807EFA7E7DFA7F7DF97E7EF97F7EF97E7EF97E7EF97E7E
                F97E7EF97D7DF90001FF0000FF2F2FFD9F9E9CFFFFFFFFFFFF9F9E9CBAB9E5A6
                A6E1D1CEE8F5F0EFF5F0EFF5F0EFF5F0EFF6F0EFF6F0EFF6F0F0F6F1F0F6F1F0
                F6F1F0F6F1F0F6F2F0F6F2F0F6F2F1F6F2F1F6F2F1F6F2F2F7F2F2F7F2F2F7F3
                F2F7F3F2F7F3F2F7F3F2F7F3F3F7F3F3F7F3F3F7F3F3F7F4F3F7F4F3F7F4F4F7
                F4F4F8F4F4F8F4F4F8F4F4F8F4F4F8F5F4F8F5F5F8F5F5F8F5F5F8F5F5F8F5F5
                F8F5F5F8F5F5F8F6F6F9F6F6F9F6F6F9F6F6F9F6F6F9F6F6F9F6F7F9F6F7F9F7
                F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7FAF7F8FAF7F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8F9F6
                F6F7F4F6F6F2F5F6F2F5F6F4F8F7F5F9F8F6F9F8F6F9F9F7F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8A6A6E1A6A6E1C3C2E79F9E9CFF
                FFFFFFFFFFA4A3A0A6A5A2D5CBCADED4D3F6F1EEF6F1EEF6F1EEF6F1EEF7F1EE
                F7F1EEF7F1EFF7F2EFF7F2EFF7F2F0F7F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F3
                F0F8F3F1F8F3F1F8F3F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F2F9F4F2F9F4F2F9
                F4F2F9F5F2F9F5F2F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F6F3F9F6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F6FAF7F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F7FBF8F7FB
                F8F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FAF7F6F9F5F3D4
                CACADBD2D0A4A3A0A4A3A0FFFFFFFFFFFFE8E8E7E9E8E8F4F2F2F7F4F4FDFBFB
                FDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
                FDFCFCFDFCFCFDFDFCFDFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFDFCFCF4F2F2F6F4F3E8E8E7E8E8E7FFFFFFFFFFFFA4A3A0
                9A98A61F1FFD2829FC7877F87979F97979F97979F97979F97979F87979F97979
                F97979F97979F97979F97979F8797AF97A7AF87A79F87979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97A79F87979F97979F97979F97979F97A7AF97979F97A79F97A79
                F97979F87979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97A79F97979F8797AF97979F87979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F87979F97979F979
                79F87A79F87A79F9797AF8797AF9797AF8797AF97A7AF97979F97B79F87A79F9
                7979F77A79F97A79F87A7AF97A7AF8797AF87A79F87979F97979F97A7AF97979
                F97979F87979F97979F9797AF97A79F97A7AF97A7AF77B7BF97A7AF97A7BF97A
                7AF9797AF97979F87979F97979F97979F97979F97979F90F0FFE2E2EFDA4A3A0
                A4A3A0FFFFFFFFFFFFA4A3A09A98A61F1FFD2829FC7877F87979F97979F97979
                F97979F97979F87979F97979F97979F97979F97979F97979F8797AF97A7AF87A
                79F87979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F87979F97A79F87A79F87979F97979F97A79F97979
                F97A7AF97979F97A79F97A79F97979F87979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97A79F9
                7979F8797AF97979F87979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F879
                79F97979F77979F9797AF87979F87A79F87B7AF9797AF8797AF9797AF8797AF9
                7A7BF97979F97B79F87A7AF97979F77A79F77A79F77A7AF87A7AF8797AF87A79
                F77979F97979F97A7AF87979F97A79F87979F8797AF9797AF97A7AF87A7AF87A
                7AF77B7BF97A7AF97A7BF87A7AF8797AF97979F87979F97979F97979F97979F9
                7979F90F0FFE2E2EFDA4A3A0A4A3A0FFFFFFFFFFFFA4A3A0A4A3A4BAB9E5C9C7
                E7F6F0EFF6F0EFF6F0EFF6F1EFF6F1EFF6F1EFF6F1F0F6F2F0F6F2F0F6F2F0F6
                F2F0F7F2F0F7F2F1F7F2F1F7F2F1F7F3F1F7F3F2F8F3F2F8F3F2F8F3F2F8F3F2
                F8F3F2F8F3F2F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F4F8F4F4F9F5
                F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F5F9F5F5F9F5F5F9F6F5F9F6F5F9F6F5F9
                F6F6F9F6F6FAF6F6FAF6F6FAF6F6FAF7F6FAF7F6FAF7F7FAF7F7FAF7F7FAF7F7
                FAF7F7FAF7F7FAF8F7FAF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FAF8F8FAF7F8FAF7F8FAF7F8FAF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FAF7F7FAF7F7FAF7F7FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FBF8F8FBF8F8FBF8F8FAF7F7F8F4F4B0B0E3C4C2E7A4A3A0A4A3A0FFFFFFFFFF
                FFFFFFFFA9A8A5A9A8A5ABA9A7F8F3F0F7F2EFF7F2EFF7F2EFF8F2EFF8F2EFF8
                F2F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F1
                F8F3F1F8F3F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4
                F1F8F4F1F8F4F2F8F4F2F9F4F2F9F4F2F9F4F2F9F4F2F9F5F2F9F5F2F9F5F2F9
                F5F2F9F5F2F9F5F2F9F5F2F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3
                F9F5F3F9F5F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF7F5FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FCF9F8FCF9F8FCF9F8FCF9F8FC
                F9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8
                FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9
                F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FC
                F9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8
                FCF9F8FCF9F8FCF9F8FBF8F7FAF7F5F9F5F2F8F3F0F8F3F0F8F3F0ADABA8AFAC
                AAA9A8A5FFFFFFFFFFFFFFFFFFFFFFFFE9E9E8E9E9E8EAE9E9FDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD
                FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
                FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFCFDFC
                FBFDFCFBFDFCFBEAEAE9EBEAEAE9E9E8FFFFFFFFFFFFFFFFFFFFFFFFA9A8A5A9
                A8A59C9DAC7575F87574F77676F77776F77777F67777F67778F57778F57776F6
                7677F47776F47776F47879F57778F57B78F77775F57776F77776F57676F47575
                F77577F77775F77575F87476F77475F87774F97877F87576F77677F77575F676
                77F77676F57976F67877F47875F67675F67977F47876F67775F67778F37877F5
                7675F67775F87776F77475F87675F87475F97475F97476F77575F87475F87776
                F87474F87476F87578F77676F77877F77675F57678F87575F47675F57676F775
                75F87477F77575F87677F47476F67774F67674F67575F97575F67674F87578F7
                7676F77577F87674F87575F87475F77475F77475F87574F87574F97574F87476
                F87575F97574F97474F97474F97474F87474F97474F97475F97474F87474F974
                74F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F9
                7474F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474
                F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F974
                74F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F9
                7474F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474
                F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F974
                74F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F9
                7474F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474
                F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F974
                74F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F9
                7474F97575F97475F87575F77677F77877F47878F5797AF27979F37A7AF17978
                F27A79F07C7BF07A7BF17C7CF47B79F0797BF2787BF27A79F4797BF37C7BF17B
                7AEF7C7BF07B7CF17C7AF27A7BF2797DF2797BF27D79F57A79F4777AF3777AF3
                7777F4777BF4777BF47B7BF17B7AF17979F27B7BF27B7BF17A7BF07B7AF27979
                F47778F67878F77578F57474F97574F97474F99493B08988B6A9A8A5FFFFFFFF
                FFFFFFFFFFFFFFFFA9A8A5A9A8A59C9DAC7575F87574F77676F77776F77777F6
                7777F67778F57778F57776F67677F47776F47776F47879F57778F57B78F77775
                F57776F77776F57676F47576F67777F77776F77575F87477F77475F77774F979
                77F87676F77877F77675F57679F67676F47977F67877F37875F57675F67A77F4
                7877F67776F67778F37977F47675F57775F87777F77576F87776F87575F97475
                F97476F77575F87575F77776F77474F77577F77678F67776F77877F77675F576
                78F87575F47675F57676F77575F87477F67575F87678F37577F67774F67674F6
                7676F97676F67675F87579F77676F77577F87674F77575F77576F77475F77477
                F77574F87574F97574F67576F77675F87574F97475F97574F97476F87474F975
                75F97475F97475F87574F97674F87574F97474F97474F97474F97474F97574F9
                7474F97474F97575F87475F87574F97574F97474F97574F97475F87475F97475
                F87475F87474F87575F97474F87475F87474F97476F97474F97474F97475F974
                74F87574F97475F87474F97474F97475F87574F97474F97575F97475F97475F8
                7474F77575F77574F87474F87474F87474F87474F97574F87474F87474F97474
                F87476F97574F97675F97574F97474F97476F87575F97474F97474F97475F874
                74F77474F87475F77474F77476F97475F97574F97474F87474F97474F87475F8
                7575F97476F97575F97475F67474F97476F77576F77675F97474F87476F87676
                F87474F87675F87574F77675F97477F87774F77475F97577F67574F77474F875
                75F97576F77576F97675F87675F87575F97575F97675F87576F87575F87676F7
                7575F87576F77476F97474F87475F67776F87577F77677F77678F77977F4787B
                F47B7CF07979F27C7BF07A78F27B79EE7C7DED7C7BF07D7DF27D7BEF797BF178
                7CF07B79F47A7CF27C7CF17B7BEF7C7CEF7C7DEF7D7AF17A7BF27980F07A7CF2
                7D7AF47B79F3777AF2787AF27777F3777CF2787BF37D7CF07B7CEF7A7BF27C7C
                F07C7CEF7C7DEE7B7BF2797AF47779F57978F67578F57474F97574F97474F994
                93B08988B6A9A8A5FFFFFFFFFFFFFFFFFFFFFFFFA9A8A5A9A8A5A9A8A9F8F3F0
                F7F2EFF7F2EFF7F2EFF8F2EFF8F2EFF8F2F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3
                F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F1F8F3F1F8F3F1F8F4F1F8F4F1F8F4F1F8
                F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F2F8F4F2F9F4F2F9F4F2
                F9F4F2F9F4F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F3F9F5
                F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF7F5
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9
                F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FC
                F9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8
                FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9
                F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FBF8F7FAF7F5F9
                F5F2F8F3F0F8F3F0F8F3F0A9A8ADA8A8B0A9A8A5FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAD
                AAAEADABAEADAAAEACAAACADACADACABADABACADABACACACABACACADABADACAC
                ADACADAAADADADADADABABAEACABADACABACACACABABACADADADAEACAAADADAB
                ADADAAADACAAAEADAAAEADACAEADABACACAAAEACABAEADABAEADABAEADADADAC
                ABADACAAADABACADACAAAEADADAEABADADABADACACAAADABACAEADACAEABADAD
                ACABAEADAAAEACABAEADAAAEADAAAEADAAAEADAAAEADACAEADADAEAAACADADAB
                ACABABADACAAAEACACADADAAAEADAAAEADABAEADABABADAAAEADABAAADAAADAC
                ABAEACABADABADAEABAAADABABADACABAEADABAEADABACACAAADACABAEADAAAE
                ADAAAEACAAAEADAAAEACAAAEADAAAEADACAEACAAAEACAAAEADAAAEADAAAEADAB
                AEADAAAEADAAAEADAAAEADAAACADAAAEADAAADADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAADADAAAEADAAAD
                ADAAAEADAAADACABACADACADACACADABACACACADABAAAEACAAAEA9ACB0ABA9B0
                AEAAACAAABADAAAAAEACABAEACA8ADAAAAB0AAA9AEADABADA9AAACAAA9AEABAA
                AEACA9AEA7A9AEAAAAADAAABADACAAACACACACACABACABABAEADABABACACACAC
                ABB0ADADACABABACADAAABABA9ACACA8AFAAA9AFAAAAAFADABAFACAAADABADAC
                ACABACAEADABAEADAAAEADAAAEADAAAEADAAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFAEADAAAEADABAEADAAAEACAAACADACADACABADABACAD
                ABACACACABACACADABADACACADACADAAADADADADADABABAEACABADACABACACAC
                ABABACADADADAEACAAADADABADADAAADACAAAEADAAAEADACAEADABACACAAAEAC
                ABAEADABAEACABAEADADADACABADACAAADABADADABAAAEADADAEABADADABAEAC
                ACAAADABACAEADACAEABADADACABAEADAAAEACABAEADABAEADAAAEADAAADADAA
                ADADACAEADADAEAAACACACABACABABADACAAAEACACACADABAEADAAAEADABAEAC
                ACABADABAEADABAAADAAADACACADACABADABADADABAAADABABADACABAEADABAE
                ACABACACAAACACABAEADAAAEADAAAEACAAAEADAAAEACACAEADAAAEADACAEACAA
                AEACAAAEADAAAEADAAAEADABAEADAAAEADAAAEADABAEADAAACADAAAEADAAADAD
                ABADADAAADADABAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAADADAAAE
                ADAAAEADAAADADAAAEADAAAEADAAAEADAAAEADABAEADAAAEADAAAEACAAAEADAA
                ADADAAAEADAAAEADAAAEADAAAEADABAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEACACAEADAAAEADAAAEADAAAEADAAAEACAAAEADABAE
                ADAAAEADAAAEACAAAEADAAADADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEACAA
                AEACABAEADAAAEADAAAEADAAAEADAAAEADAAADADAAAEADAAADADAAAEADAAAEAD
                AAAEADAAAEADAAAEACAAAEADAAAEACAAAEADAAAEADAAAEADAAAEADAAAEADABAE
                ADAAAEADAAAEACABAEADABAEACAAAEADABAEACAAAEADAAADACABAEADAAAEADAA
                AEADABAEADABAEADABAEACABAEADAAADACAAADADABAEADAAAEACAAAEADABAEAD
                AAADACAAADADAAAEADAAAEACAAADADABAEACAAAEACABAEACABAEACAAAEACAAAD
                ADAAADADABADACAAAEADABADADABAEADAAADACADACACADADABACACAAACACACAF
                ABAAAEACAAAFA9ACB1ABA9B1AEAAACA9ABADAAA9AFACA9AEACA8ADAAAAB1AAA9
                AFADABAEA9A9ACAAA9AEABAAAFACA9AFA7A8AEAAAAAEAAABAEACAAACACACADAC
                ABACABAAB0ACAAABACACACACABB0ACADACABABACABAAACAAA9ACACA7AFAAA8B0
                AAA9AFACABB0ACA9AEABACACACABADADADABAEADAAAEADAAAEADAAAEADAAFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = sbEsportaRigheSelezionateClick
            end
            object sbEsportaTutto: TSpeedButtonRollOver
              Left = 357
              Top = 23
              Width = 260
              Height = 25
              Cursor = crHandPoint
              Caption = 'Invia TUTTO!'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                127D0100424D127D010000000000360000002800000014050000190000000100
                180000000000DC7C0100120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFF3838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
                CDCDCDCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838393838383839393838383A38393939
                383838383A393A3A393A383B3A393A3A3A3B3A3B3A3C3C3B3B3C3C3D3E3D3E3D
                3C3D3F3F403E413F3E40403F4042414142424243434143444345434346454447
                46454846464847484A47494A49494C4A484C4A494D494A4C4B4C4C4B4A4E4A4C
                4C4B4A4E4C4B4D4B4A4D4B4B4D4A4C4E4B4B4D4C4C4F4B4A4E4C4A4D4B4D4D4B
                4B4E4C4A4E4B4B4D4B4A4E4B4A4B4B4A4C4B4A4D4A4C4D4C4B4C4C4C4C4A4D4D
                4B4B4D4C4C4F4B4A4D4B4C4D494A4D4B4B4D4B4D504D4B4D4B4B4F4C4B4F4C4C
                4D4E4C4F4C4E50494D4D4D4B4F4E4C4D4B4D4E4B4A4C4A4A4F4A494E4B4C4E49
                4B4D4A4B4E4B4B4D4E4B4F4B4A504D4D524C4B4E4D4D4F4F4E4E4D50504D5050
                524E4F4E4F514C4D4F4C4C514D504F4F4E4E4C4D504E4C4F4C4F4E4F4E4F4B4B
                4D494A4947494C474849444544424244423F423F3F413E3F3E3C3B3B393B3A3B
                393B3A3A3838383938383838393938393839393A39393A3838383A393A3A3A39
                3A3B3B38393A393939393839393939393938393938393A3A39393A3A38393939
                393A3A3838393838383838383939383838383839383838383838383838383A38
                3839383938383938383839383838383839383939383838393838383838383938
                3939383939393B393A3B39393D3A3B3C3D3D3B3B3D3E3E3E3C3B3C3D3C3F3E3E
                3E3F3D3E3E3E3D3C3F3C3B3A3A3B3A393A393D3A3A3938383B39393939393A3A
                3A3A39383A3838393A3A39393A393D3B3A3A3C3A3B3A39393A3A3A3C393C3A3A
                3A38383A3A3938393A3A3B38383A3A3A38383839383839383838393838393838
                3838383838383838383838383838393838383838383838383838383838383838
                3838383838383938383838393838393838383A38383839383838383838383838
                383838383838383838383838383838383838FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF38383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                383838383838383838383838383838383838383838383B383A3B383C3A393839
                3A3B393A3A3C3A39393A3B3B3A3C39393C3D3B3C3C3C3D3C3D3D3E3B3E3D3D3F
                3C3E3E3D3F3F3E42413F3F424340424040424242434245434643454546474645
                4947454A48464949484C49494C484B4B4A4B4B49484A4A484B47484B46464845
                4647424344413F403D3D3F3B3A3B393A3A393939383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                383838383838383838383838383838383838383838383838383838383838FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                3838383838383838383838383838383838383838383838383838383838383838
                38383838383838383838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D3C3D
                3D3C3D3D3CEBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EB
                DDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4
                EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDD
                D4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD4EBDDD43D3D3C3D3D3C3D3D3CFFFFFFFF
                FFFFFFFFFFFFFFFFCECECECECECECECECEFAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4CE
                CECECECECECECECEFFFFFFFFFFFFFFFFFFFFFFFF3D3D3C3D3D3C3D3D3CDDDCFD
                E2E0FAE5E3F8E5E3F8E6E3F8E6E3F8E6E3F8E6E4F8E6E4F8E6E4F9E6E4F9E6E4
                F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E5FAE6E5FAE6E5FAE6
                E4FAE6E4FAE7E5FAE6E5FAE7E4FBE7E5FAE6E5FAE6E6FAE6E4FAE6E5F9E5E5F9
                E4E4F8E4E3F7E3E3F7E2E1F6E0E0F7DCDCF5DCDBF4DCDDF5DADBF2DBDAF2D9DA
                F2D8D7F0D9D7EFD7D8EED6D5ECD5D4EBD4D2E9D6D4E8D4D6E9D3D3E8D2D4E5D2
                D1E5D3D2E5D3D1E4D2D0E5D1D0E2D1D0E1D0D0E1CFCFE0CFCFE1CFCEE0CFCEE0
                D0CFDFCFCFE0D0CFE1CDCEE0CFCEDFCFCFE1CECEE0CFCDE1CFCEDFCFCFE0CFCE
                E1CFCEE0CECEE0CECFDFCECFE0CECDE0CFD0E0CECEDFCFCFE1CFCDE0CDCEE1CF
                CEE1CFCEE0CED1E1CECFDFD0CEDFD0CEE1CECCDDCECDDECECDDFCDCBDCCCCBDE
                CBCCDECBCAE0CBCDDECDCEDCCBCDDECECCDDCBCDDFCDCBDFCDCCDECBCDDCCBCA
                D9CACADECBCBDDC9C9DBCBCBDAC5C8DBCACBDDCAC9D9C9C8D6C8C6D4C9C7D9CA
                C7D6C8C9D7C7C6D7C8C6D6C7C7D5C8C4D8C7C7D8C7C4D7C6C9D7C8C8D9CBCADB
                CCCDDDCED0E0D2D2E1D5D5E8D7D9EBDDDBF0DFDBF1E1E2F4E4E6F7E5E6FCE6E5
                FBE6E7FDE7E7FEE8E8FDE6E6FBE6E6FBE4E6FCE6E7FAE5E7FBE6E5F9E5E5FAE6
                E4FBE6E3FBE7E6F9E6E7FBE7E8FBE5E8FCE7E6FBE8E7FBE7E6FBE6E7FAE7E7FC
                E8E9FBE7E7FDE8E8F9E8E8FCE7E7FEE7E8FBE7E6FEE7E8FCE8E8FCE9E8FCE7E6
                FCE8E8FDE7E9FDE8E8FCE8E9FDE9E8FDE9E8FBE8E7FBE9E8FCE7E6FDE8E7FCE6
                E7FCE6E6FAE3E6FAE3E3F6E3E3F4E1E0F2E1E2F1E2E1F0E0E1F2E1E3F3E1E1F2
                E2E1F2E1E2F3E4E6F4E4E5F4E7E5F7E9E8F9EAEAF9E9E9FAEAE8FBEBEAFBEAE9
                FCE9EAF7E8EAF9E9EAFBE6E7F8E7E9F7E9E8F8E9E9F9E7E8F9E8E8F7E8E8FAEB
                EAF7E7EAFAE8E9FAE8EBFCE8EAFCEAEAFCEBEAFDEBEDFEECEBFEEDEDFDEDEBFE
                EDECFDEDEDFDEBEDFDEDEBFEEBECFCECECFDEDEDFCEAECFDECECFEECEBFDEBEB
                FEEBEBFBECEBFEECEDFDECECFCEBEDFDEDEDFEECEBFEECEBFEEBEBFEE6E6FEE2
                E2FEDCDCFEDBDBFEDBDBFE3D3D3C3D3D3C3D3D3CFFFFFFFFFFFFFFFFFFFFFFFF
                3D3D3C3D3D3C3D3D3CDDDCFDE2E0FAE5E3F8E5E3F8E6E3F8E6E3F8E6E3F8E6E4
                F8E6E4F8E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6E4F9E6
                E4F9E6E5FAE6E5FAE6E5FAE6E4FAE6E4FAE7E5FAE6E5FAE7E4FBE7E5FAE6E5FA
                E6E6FAE6E4FAE6E5F9E5E5F9E4E4F8E4E3F7E3E3F7E2E1F6E0E0F7DCDCF5DCDB
                F4DCDDF5DADBF2DBDAF2D9DAF2D8D7F0D9D7EFD7D8EED6D5ECD5D4EBD4D2E9D6
                D4E8D4D6E9D3D3E8D2D4E5D2D1E5D3D2E5D3D1E4D2D0E5D1D0E2D1D0E1D0D0E1
                CFCFE0CFCFE1CFCEE0CFCEE0D0CFDFCFCFE0D0CFE1CDCEE0CFCEDFCFCFE1CECE
                E0CFCDE1CFCEDFCFCFE0CFCEE1CFCEE0CECEE0CECFDFCECFE0CECDE0CFD0E0CE
                CEDFCFCFE1CFCDE0CDCEE1CFCEE1CFCEE0CED1E1CECFDFD0CEDFD0CEE1CECCDD
                CECDDECECDDFCDCBDCCCCBDECBCCDECBCAE0CBCDDECDCEDCCBCDDECECCDDCBCD
                DFCDCBDFCDCCDECBCDDCCBCAD9CACADECBCBDDC9C9DBCBCBDAC5C8DBCACBDDCA
                C9D9C9C8D6C8C6D4C9C7D9CAC7D6C8C9D7C7C6D7C8C6D6C7C7D5C8C4D8C7C7D8
                C7C4D7C6C9D7C8C8D9CBCADBCCCDDDCED0E0D2D2E1D5D5E8D7D9EBDDDBF0DFDB
                F1E1E2F4E4E6F7E5E6FCE6E5FBE6E7FDE7E7FEE8E8FDE6E6FBE6E6FBE4E6FCE6
                E7FAE5E7FBE6E5F9E5E5FAE6E4FBE6E3FBE7E6F9E6E7FBE7E8FBE5E8FCE7E6FB
                E8E7FBE7E6FBE6E7FAE7E7FCE8E9FBE7E7FDE8E8F9E8E8FCE7E7FEE7E8FBE7E6
                FEE7E8FCE8E8FCE9E8FCE7E6FCE8E8FDE7E9FDE8E8FCE8E9FDE9E8FDE9E8FBE8
                E7FBE9E8FCE7E6FDE8E7FCE6E7FCE6E6FAE3E6FAE3E3F6E3E3F4E1E0F2E1E2F1
                E2E1F0E0E1F2E1E3F3E1E1F2E2E1F2E1E2F3E4E6F4E4E5F4E7E5F7E9E8F9EAEA
                F9E9E9FAEAE8FBEBEAFBEAE9FCE9EAF7E8EAF9E9EAFBE6E7F8E7E9F7E9E8F8E9
                E9F9E7E8F9E8E8F7E8E8FAEBEAF7E7EAFAE8E9FAE8EBFCE8EAFCEAEAFCEBEAFD
                EBEDFEECEBFEEDEDFDEDEBFEEDECFDEDEDFDEBEDFDEDEBFEEBECFCECECFDEDED
                FCEAECFDECECFEECEBFDEBEBFEEBEBFBECEBFEECEDFDECECFCEBEDFDEDEDFEEC
                EBFEECEBFEEBEBFEE6E6FEE2E2FEDCDCFEDBDBFEDBDBFE3D3D3C3D3D3C3D3D3C
                FFFFFFFFFFFFFFFFFFFFFFFF3D3D3C3D3D3C3D3D3CCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCF
                FBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCF
                CFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFBCFCFFB
                CFCFFB3D3D3C3D3D3C3D3D3CFFFFFFFFFFFFFFFFFF414141414141EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDE
                D6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EB
                DED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6EBDED6
                EBDED6EBDED6EBDED6EBDED6EBDED6EBDDD5EBDED6414141414141FFFFFFFFFF
                FFCFCFCFCFCFCFFAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF7
                F5CFCFCFCFCFCFFFFFFFFFFFFF414141414141CECEFED1D0FAE7E4F5E7E4F5E7
                E4F5E7E4F6E7E4F6E7E4F6E7E4F6E7E5F6E7E5F6E7E5F7E7E5F7E8E5F7E8E5F7
                E8E5F7E8E5F7E8E6F7E8E6F8E8E6F8E8E6F8E8E6F8E8E6F8E8E6F8E7E6F8E8E7
                F9E9E7F9E9E7F9E9E7F9E9E7F9E9E7F9E9E7FAE9E7FAE9E8FAE9E8FAE8E8FAE9
                E8FAE8E8FAE9E7FBE9E8FBEAE8FBE9E7FBEAE8FBE9E7FBEAE8FBE8E7FBE9E8FB
                EAE8FCE9E6FCE9E8FBE9E7FBE9E8FAE7E8FBE7E9FBE9E8FBE8E8FCE8E8FCE8E9
                FCE9E9FCE8E7FCE8E8FBE9E8FCE8E8FDE8E8FCE8E9FCE9E7FCE8E9FCE8E8FAE9
                E8FCE8E8FBE8E8FCE9E9FCE8E8FCE9E8FDE8E8FAE8E7FCE7E8FBE8E9FCE8E8FB
                E8E8FDE8E7FBE9E9FAE7E7FAE8E7FBE9E8FCE7E8FCE8E8FCE8E7FCE7E9FBE9E8
                FAE8E9FCE7E8FDE8E8FBE7E8FAE7E8FBE8E9FAE6E7FAE7E5FBE5E4F8E6E6FAE3
                E7F9E4E5F7E7E5FBE8E5F9E9E8F9E7E6FAE6E5FAE9E6FAE7E6F9E6E7F9E7E6FA
                E4E5FAE3E5FAE4E6F8E4E5FAE3E4F8E5E3F9E5E4F7E6E4F9E4E5F9E5E5F5E4E5
                F5E3E2F8E4E4F7E6E3F5E4E3F5E5E4F4E3E5F7E5E6F7E6E4F8E4E5F8E6E6FAE7
                E8FAE7E7FCE9E9FEE9EBFCE9E9FEEBEAFCEBEBFDEBEBFEEAEBFEEBEBFEEBEAFE
                EAEBFEEBEBFEEBEBFEEBEAFEEAEAFEEAEAFEEBEBFEEAEBFEEAEBFEEBEBFEEBEB
                FEEBEBFDEAEBFEE9EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEB
                EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEAEBFEEBEBFEEBEBFEEBEBFEEBEBFE
                EBEAFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEAFEEAEBFEEBEBFEEAEB
                FEEBEAFEEBEBFDEAEBFEEBEBFDEAEAFDE9EBFEE9EBFDEBEBFEEBEBFDEBE9FDEA
                EAFEEBEBFDEBEBFDEBEBFDEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFE
                EAEBFEEBEBFEEAEBFEEBEBFEEBEBFEEBEAFEEAEBFEEBEBFEEBEBFEEBEAFEEBEB
                FDEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEB
                EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFE
                EBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEB
                FEE7E7FEE1E1FEBEBEFCC2C2FD414141414141FFFFFFFFFFFF414141414141CE
                CEFED1D0FAE7E4F5E7E4F5E7E4F5E7E4F6E7E4F6E7E4F6E7E4F6E7E5F6E7E5F6
                E7E5F7E7E5F7E8E5F7E8E5F7E8E5F7E8E5F7E8E6F7E8E6F8E8E6F8E8E6F8E8E6
                F8E8E6F8E8E6F8E7E6F8E8E7F9E9E7F9E9E7F9E9E7F9E9E7F9E9E7F9E9E7FAE9
                E7FAE9E8FAE9E8FAE8E8FAE9E8FAE8E8FAE9E7FBE9E8FBEAE8FBE9E7FBEAE8FB
                E9E7FBEAE8FBE8E7FBE9E8FBEAE8FCE9E6FCE9E8FBE9E7FBE9E8FAE7E8FBE7E9
                FBE9E8FBE8E8FCE8E8FCE8E9FCE9E9FCE8E7FCE8E8FBE9E8FCE8E8FDE8E8FCE8
                E9FCE9E7FCE8E9FCE8E8FAE9E8FCE8E8FBE8E8FCE9E9FCE8E8FCE9E8FDE8E8FA
                E8E7FCE7E8FBE8E9FCE8E8FBE8E8FDE8E7FBE9E9FAE7E7FAE8E7FBE9E8FCE7E8
                FCE8E8FCE8E7FCE7E9FBE9E8FAE8E9FCE7E8FDE8E8FBE7E8FAE7E8FBE8E9FAE6
                E7FAE7E5FBE5E4F8E6E6FAE3E7F9E4E5F7E7E5FBE8E5F9E9E8F9E7E6FAE6E5FA
                E9E6FAE7E6F9E6E7F9E7E6FAE4E5FAE3E5FAE4E6F8E4E5FAE3E4F8E5E3F9E5E4
                F7E6E4F9E4E5F9E5E5F5E4E5F5E3E2F8E4E4F7E6E3F5E4E3F5E5E4F4E3E5F7E5
                E6F7E6E4F8E4E5F8E6E6FAE7E8FAE7E7FCE9E9FEE9EBFCE9E9FEEBEAFCEBEBFD
                EBEBFEEAEBFEEBEBFEEBEAFEEAEBFEEBEBFEEBEBFEEBEAFEEAEAFEEAEAFEEBEB
                FEEAEBFEEAEBFEEBEBFEEBEBFEEBEBFDEAEBFEE9EBFEEBEBFEEBEBFEEBEBFEEB
                EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEAEBFE
                EBEBFEEBEBFEEBEBFEEBEBFEEBEAFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEB
                FEEBEAFEEAEBFEEBEBFEEAEBFEEBEAFEEBEBFDEAEBFEEBEBFDEAEAFDE9EBFEE9
                EBFDEBEBFEEBEBFDEBE9FDEAEAFEEBEBFDEBEBFDEBEBFDEBEBFEEBEBFEEBEBFE
                EBEBFEEBEBFEEBEBFEEBEBFEEAEBFEEBEBFEEAEBFEEBEBFEEBEBFEEBEAFEEAEB
                FEEBEBFEEBEBFEEBEAFEEBEBFDEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEB
                EBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFE
                EBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEBFEEBEB
                FEEBEBFEEBEBFEEBEBFEEBEBFEE7E7FEE1E1FEBEBEFCC2C2FD414141414141FF
                FFFFFFFFFF414141414141D5D3F9D7D5F9D1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1
                D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FA
                D1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0
                FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD1D0FAD9
                D7F8D7D5F9414141414141FFFFFFFFFFFF464646EBDED6EBDDD5EBDED6ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD8ECDFD8ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7
                ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDF
                D7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7ECDFD7EC
                DFD7ECDFD7ECDFD7ECDFD7EBDED6EBDDD5ECDED6464646FFFFFFFFFFFFD1D1D1
                FAF7F5FAF6F4FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F6FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF8F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F6FAF8F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FB
                F8F6FBF9F7FBF9F7FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F6FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FBF8F6FBF8F6FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF7F5
                D1D1D1FFFFFFFFFFFF464646C0C0FCB2B2FCD6D3F7E4E1F5E4E1F5E4E1F5E4E2
                F5E5E2F5E5E2F5E5E2F6E5E2F6E5E2F6E5E2F6E5E2F6E5E3F6E5E3F6E5E3F7E5
                E3F7E5E3F7E5E3F7E5E3F7E6E3F7E6E4F8E6E4F8E6E4F8E6E4F8E6E4F8E6E4F8
                E6E4F8E6E4F9E6E5F9E6E5F9E6E5F9E6E5F9E7E5F9E7E5F9E7E5FAE7E5FAE7E6
                FAE7E6FAE7E6FAE7E6FAE7E6FBE7E6FBE7E6FBE7E6FBE7E7FBE8E7FBE8E7FBE8
                E7FCE8E7FCE8E7FCE8E7FCE8E7FCE8E7FCE8E8FCE8E8FDE8E8FDE8E8FDE8E8FE
                E8E8FEE9E8FEE9E9FEE9E9FEE9E9FEE9E9FEE8E9FEE9E8FEE9E9FEE9E9FEE9E9
                FEE9E8FEE9E8FEE9E9FEE9E9FEE9E9FEE9E9FEE8E8FEE9E9FEE9E8FEE9E8FEE9
                E9FDE9E8FEE9E9FEE9E9FEE9E8FEE9E8FEE9E9FEE9E8FEE9E9FEE9E9FEE8E8FE
                E9E9FEE9E9FEE8E9FEE8E9FEE9E9FEE9E8FDE8E8FEE8E8FDE8E9FEE9E9FEE9E7
                FEE7E7FDE8E8FDE9E8FEE8E8FEE8E9FDE8E9FDE9E8FDE9E8FEE8E8FEE8E9FDE9
                E7FEE8E8FEE8E7FEE7E8FEE8E7FDE8E8FCE8E8FDE9E8FEE7E7FDE8E8FDE8E7FD
                E8E8FEE9E7FDE8E7FDE8E8FDE8E8FCE7E9FEE7E8FCE7E8FDE7E8FDE8E8FEE9E9
                FEE8E9FEE8E9FEE8E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FED0D0FDADADFCBFBFFC464646FFFFFFFFFFFF464646C0C0FCB2B2FCD6D3
                F7E4E1F5E4E1F5E4E1F5E4E2F5E5E2F5E5E2F5E5E2F6E5E2F6E5E2F6E5E2F6E5
                E2F6E5E3F6E5E3F6E5E3F7E5E3F7E5E3F7E5E3F7E5E3F7E6E3F7E6E4F8E6E4F8
                E6E4F8E6E4F8E6E4F8E6E4F8E6E4F8E6E4F9E6E5F9E6E5F9E6E5F9E6E5F9E7E5
                F9E7E5F9E7E5FAE7E5FAE7E6FAE7E6FAE7E6FAE7E6FAE7E6FBE7E6FBE7E6FBE7
                E6FBE7E7FBE8E7FBE8E7FBE8E7FCE8E7FCE8E7FCE8E7FCE8E7FCE8E7FCE8E8FC
                E8E8FDE8E8FDE8E8FDE8E8FEE8E8FEE9E8FEE9E9FEE9E9FEE9E9FEE9E9FEE8E9
                FEE9E8FEE9E9FEE9E9FEE9E9FEE9E8FEE9E8FEE9E9FEE9E9FEE9E9FEE9E9FEE8
                E8FEE9E9FEE9E8FEE9E8FEE9E9FDE9E8FEE9E9FEE9E9FEE9E8FEE9E8FEE9E9FE
                E9E8FEE9E9FEE9E9FEE8E8FEE9E9FEE9E9FEE8E9FEE8E9FEE9E9FEE9E8FDE8E8
                FEE8E8FDE8E9FEE9E9FEE9E7FEE7E7FDE8E8FDE9E8FEE8E8FEE8E9FDE8E9FDE9
                E8FDE9E8FEE8E8FEE8E9FDE9E7FEE8E8FEE8E7FEE7E8FEE8E7FDE8E8FCE8E8FD
                E9E8FEE7E7FDE8E8FDE8E7FDE8E8FEE9E7FDE8E7FDE8E8FDE8E8FCE7E9FEE7E8
                FCE7E8FDE7E8FDE8E8FEE9E9FEE8E9FEE8E9FEE8E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9
                FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9
                E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FEE9E9FE
                E9E9FEE9E9FEE9E9FEE9E9FEE9E9FED0D0FDADADFCBFBFFC464646FFFFFFFFFF
                FF464646DAD8F8E0DDF6D9D7F8D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2
                FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3
                D2FAD3D3FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FA
                D3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FAD3D2FADDDAF7E0DD
                F6D8D6F9464646FFFFFF4C4B4B9B9490EBDDD5EBDDD5EBDED6ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE1D9EDE1DAEDE2DAEDE2DAEDE2DAEDE2DAECE1D9ECE0D8ECE0
                D8ECE0D8ECE0D8ECE0D8ECE1D9ECE1D9ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8EC
                E0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8
                ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0D8ECE0
                D8ECE0D8ECE0D8EBDED6EBDDD5EBDDD57D78764C4B4BD2D2D2E6E4E3FAF6F4FA
                F6F4FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FBF8F7FBF9F7FBF9F8FAF6F4FAF8F6FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FAF7F5FBF8F7
                FBF9F8FBF8F6FAF7F5FAF7F5FAF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FAF8F6FBF9F7FC
                F9F8FCFAF9FBF9F7FBF8F7FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FBF9F7
                FCFAF8FCFAF9FBF9F8FBF8F7FAF7F6FAF7F5FAF7F5FAF7F5FBF8F7FDFBFAFDFC
                FBFDFCFBFDFBFAFCFAF8FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF8F6FAF8F7FBF9F8FCFAF9FCFAF9FCFAF8FBF9F7FAF8F6FAF7F5
                FAF8F6FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FBF9F7FD
                FBF9FDFBFAFCF9F8FBF9F8FAF8F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F6FBF8F6FBF8F6FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FB
                F8F6FAF8F6FAF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF6F4DEDDDDD2
                D2D24C4B4B7F7EA3B2B2FCB2B2FCD0CEF6E2DFF5E2DFF5E2DFF5E2DFF5E2DFF5
                E2DFF5E2DFF6E2E0F6E2E0F6E2E0F6E3E1F6E4E1F6E4E1F6E4E1F7E3E0F7E3E1
                F7E3E1F7E3E1F7E3E1F7E3E1F8E3E1F8E4E2F8E3E1F8E3E2F8E4E2F8E4E2F8E4
                E2F9E4E2F9E4E2F9E4E2F9E4E2F9E4E3F9E4E3F9E4E3FAE4E3FAE4E3FAE4E3FA
                E4E3FAE5E3FAE5E4FBE5E4FBE5E4FBE5E4FBE5E4FBE5E4FBE5E4FBE5E4FCE5E5
                FCE5E5FCE5E4FBE5E5FCE6E5FCE6E5FCE6E5FDE6E5FDE6E6FDE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE7E7FEE6E7FEE7E7FEE7E7FEE8E8FEE8E8FEE8
                E8FEE7E7FEE7E7FEE7E7FEE7E7FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE7E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E5FEE6E6FEE6E6FEE6E6FEE3E3FED8D8FDAA
                AAFC9E9EFB9E9EFB6565824C4B4B4C4B4B7F7EA3B2B2FCB2B2FCD0CEF6E2DFF5
                E2DFF5E2DFF5E2DFF5E2DFF5E2DFF5E2DFF6E2E0F6E2E0F6E2E0F6E3E1F6E4E1
                F6E4E1F6E4E1F7E3E0F7E3E1F7E3E1F7E3E1F7E3E1F7E3E1F8E3E1F8E4E2F8E3
                E1F8E3E2F8E4E2F8E4E2F8E4E2F9E4E2F9E4E2F9E4E2F9E4E2F9E4E3F9E4E3F9
                E4E3FAE4E3FAE4E3FAE4E3FAE4E3FAE5E3FAE5E4FBE5E4FBE5E4FBE5E4FBE5E4
                FBE5E4FBE5E4FBE5E4FCE5E5FCE5E5FCE5E4FBE5E5FCE6E5FCE6E5FCE6E5FDE6
                E5FDE6E6FDE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE7E7FEE6E7FEE7
                E7FEE7E7FEE8E8FEE8E8FEE8E8FEE7E7FEE7E7FEE7E7FEE7E7FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE7E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6
                E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FE
                E6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6
                FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E6FEE6E5FEE6E6FEE6
                E6FEE6E6FEE3E3FED8D8FDAAAAFC9E9EFB9E9EFB6565824C4B4B4C4B4B9694A0
                E0DDF6E0DDF6DDDBF7D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D5D5F9D5D5F9D7D5F8D7D6F9D6D6F9D6D5F9D5D4F9D4D4F9D4D4F9D4D4F9D4D4
                F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D5D4F9D5D5F9D6D5F9D5
                D5F9D5D4F9D5D4F9D5D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9
                D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D5D4F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D5D5F9D5D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D5D4F9D5
                D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9D4D4F9DDDBF7E0DDF6E0DDF6
                7A78804C4B4B50504FEBDDD5EBDDD5EBDDD5ECDED6EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ECE0D8ECE0D8
                ECE0D8ECE0D8EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE0D8EDE0D8EDE0D8EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE2DAEEE3DBEEE3DBEEE2DAEDE1D9EE
                E2DAEEE2DBEEE3DBEEE4DDF0E5DEEFE4DEF0E6E0EEE3DBEDE1D9EDE1D9EDE1D9
                EDE2DAEFE3DCEFE4DDF0E6E0EEE3DBEDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9
                EDE1D9ECDED6EBDDD5EBDDD5ECDED650504FD3D3D3FAF6F4FAF6F4FAF6F4FAF7
                F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF7F5FBF8F6FAF8F6FBF9F7FBF8F6FBF9F7
                FBF8F7FBF8F6FCFAF8FCFAFAFCFBFAFBF9F8FCF9F8FBF9F7FAF7F5FAF7F5FAF7
                F5FBF8F6FAF8F7FBF8F7FAF7F6FAF8F6FAF8F6FBF9F8F7F4F3FAF7F6FCFBFAFC
                F9F8FBF8F7FBF8F7FBF9F7FCFAF9FCFAF9FCFAF9FBF9F7FBF8F7FBF8F7FBF8F6
                FBF8F6FBF8F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF8F6FBF9F7FCFAF8FCFAF8FBF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5FAF7F5FBF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F6FAF7F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F6FBF8F7FBF9F8FBF9F8FBF9F8FCFAFAFDFB
                FBFDFBFAFDFBFAFCFAF9FAF8F6FAF7F5FAF7F5FAF8F6FBF9F8FDFCFBFEFDFCFD
                FCFBFDFBFAFCFBFAFAF7F5FAF7F5FAF7F5FAF8F6FCF9F7FDFCFBFEFDFDFEFDFD
                FEFDFDFDFCFBFCFAF9FBF9F7FBF8F7FBF8F6FAF8F6FAF7F5FAF7F5FAF7F5FBF8
                F6FCF9F7FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFDFCFBFCFAF9FCFAF8FCFAF9FC
                FAF9FCF9F8FBF8F6FBF8F6FBF9F7FBF9F8FBF9F7FAF8F6FAF7F5FAF7F5FAF7F5
                FAF7F5FBF8F6FAF8F6FBF8F7FAF7F5FBF9F7FBF8F7FCF9F7FCFBF9FEFDFCFEFD
                FDFDFCFCFEFCFBFDFCFAFCF9F8FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FA
                F8F6FCF9F8FCFAF8FBF9F7FAF8F6FAF7F5FAF7F5FAF7F5FBF9F7FCFAF9FBFAF8
                FBFAF8FBF9F8FBF8F7FAF7F5FAF7F5FAF7F5FAF7F5FAF7F6FAF6F6FDFBFAFDFA
                FAFCFAF9FBF9F7FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4FAF6F4FAF7F5D3D3D35050
                4FB3B3FCB2B2FCB2B2FCCFCDF6E0DDF5E0DDF5E0DDF5E0DDF5E0DDF5E0DDF5E0
                DDF6E0DEF6E0DFF6E0DEF6E1DFF5E2DFF5E2DFF5E2DFF6E2E0F6E1DFF7E1DFF7
                E1DFF7E1DFF7E3E0F7E4E0F7E3E1F7E3E1F7E2E0F8E1E0F8E2E0F8E2E0F9E2E0
                F9E2E0F9E2E0F9E2E0F9E2E1F9E2E1F9E2E1FAE2E1FAE2E1FAE2E1FAE2E1FAE3
                E1FAE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FB
                E3E2FAE3E2FBE3E2FBE3E2FBE4E3FCE4E3FDE4E4FDE4E4FEE4E4FEE4E4FEE4E3
                FDE4E3FDE4E3FDE4E4FDE4E4FDE4E4FDE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E3FDE4E3FDE4E4FDE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FDE4E4FDE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE5E5FEE5E5FEE5E5FEE6E5FEE6E5FEE6E6FEE6E6FEE6E6FEE6E6
                FEE5E5FEE5E5FEE5E5FEE4E5FEE4E4FEE4E4FEE4E4FEE4E4FEE5E5FEE5E4FEE5
                E4FEE5E5FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3
                FEE3E3FEE3E4FEE4E4FDE4E4FDE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE3
                E4FEE3E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FEE4E3FEE3E4FEE3E4FEE2E1FE
                E3E3FEE2E0FEE1E2FEE0E1FEDCDBFED5D5FDCECEFDC9C9FDC9C9FDA9A9FC9E9E
                FB9E9EFBA9A9FC50504F50504FB3B3FCB2B2FCB2B2FCCFCDF6E0DDF5E0DDF5E0
                DDF5E0DDF5E0DDF5E0DDF5E0DDF6E0DEF6E0DFF6E0DEF6E1DFF5E2DFF5E2DFF5
                E2DFF6E2E0F6E1DFF7E1DFF7E1DFF7E1DFF7E3E0F7E3E0F7E3E1F7E3E1F7E2E0
                F8E1E0F8E2E0F8E2E0F9E2E0F9E2E0F9E2E0F9E2E0F9E2E1F9E2E1F9E2E1FAE2
                E1FAE2E1FAE2E1FAE2E1FAE3E1FAE3E2FBE3E2FBE3E2FBE3E2FBE3E2FBE3E2FB
                E3E2FBE3E2FBE3E2FBE3E2FBE3E2FAE3E2FBE3E2FBE3E2FBE4E3FCE4E3FDE4E4
                FDE4E4FEE4E4FEE4E4FEE4E3FDE4E3FDE4E3FDE4E4FDE4E4FDE4E4FDE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FDE4E3FDE4E4FDE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FDE4E4FDE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE5E5FEE5E5FEE5E5FEE6E5FEE6E5
                FEE6E6FEE6E6FEE6E6FEE6E6FEE5E5FEE5E5FEE5E5FEE4E5FEE4E4FEE4E4FEE4
                E4FEE4E4FEE5E5FEE5E4FEE5E4FEE5E5FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FE
                E4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FEE4E4
                FEE4E4FEE4E4FEE4E4FEE4E3FEE3E3FEE3E4FEE4E4FDE4E4FDE4E4FEE4E4FEE4
                E4FEE4E4FEE4E4FEE4E4FEE3E4FEE3E4FEE4E4FEE4E4FEE4E4FEE4E4FEE4E3FE
                E4E3FEE3E4FEE3E4FEE2E1FEE3E3FEE2E0FEE1E2FEE0E1FEDCDBFED5D5FDCECE
                FDC9C9FDC9C9FDA9A9FC9E9EFB9E9EFBA9A9FC50504F50504FDFDCF6E0DDF6E0
                DDF6DDDBF7D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6
                D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5
                F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D7D6F9D8D7F8DA
                D8F7DEDCF7DEDCF7DDDBF7DBDAF7D9D7F9D7D6F9D6D5F9D6D5F9D6D5F9D6D5F9
                D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9D7D6F9D9D7F8DCDAF7DDDBF6DDDAF7D9D8
                F8D8D7F8D8D7F8D8D7F8D7D6F9D7D5F9D6D5F9D6D5F9D6D5F9D6D5F9D7D6F8D8
                D7F7DAD8F7DAD8F6D7D6F8D7D5F9D9D7F8DDDAF6DDDBF7DBD9F7DAD8F7D9D7F8
                D9D8F7DCD9F5DCDAF6D9D8F8DAD8F7DDDAF4DBD9F6DAD9F7DDDAF5DAD9F7D8D7
                F8D7D6F9D6D5F9D6D5F9D6D5F9D6D5F9D6D5F9DDDBF7E0DDF6E0DDF6DDDBF750
                504F555554EBDDD5EBDDD5EBDDD5ECDED7EEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEDE1DAEDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9ED
                E1D9EDE1D9EDE1DAEEE2DAEEE2DAEDE1DAEDE1DAEDE1DAEDE1DAEEE2DBEEE2DA
                EDE1DAEDE1DAEDE1DAEEE2DBEEE2DBEEE2DAEDE1DAEDE1DAEEE2DBEEE2DBEEE2
                DBEEE2DAEDE1DAEDE1DAEDE1DAEDE1DAEDE1D9EDE1D9EDE1D9ECE0D9ECE0D9EC
                E0D9ECE0D9EDE1D9EEE2DAEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DCEFE4DEF0E5DFF1E7E0F0E5DFF1E7E1F0E6E0EFE4DDEFE3DDEFE4
                DEF0E5DFF1E7E0F0E5DFF1E7E1F1E7E1EFE4DEEFE3DDEFE3DDEFE4DDF0E5DEF0
                E5DFF1E7E1F1E7E1EFE4DEEFE3DDEFE3DDEFE4DDF0E4DDEFE3DCEEE2DCEFE3DD
                EEE3DCEFE3DCEEE2DCEEE2DBEEE2DBEEE2DBEEE2DBEEE2DCEEE3DCEFE3DCEEE2
                DCEEE2DBEEE2DBEEE2DBEEE2DBEEE2DCEEE3DCEEE2DBEEE2DBEEE2DBEEE2DBEB
                DDD5EBDDD5EBDDD5ECDED7555554D4D4D4FAF6F4FAF6F4FAF6F4FAF7F5FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F7F7F2F1FAF6
                F5FBF8F7FAF6F5F9F5F3FBF9F7FCF9F8FAF7F6FCF9F8FCFAF9FCFAF9FCFAF9FC
                FAF9FCFAF9FCFBFAFCFBFAF9F7F6FBF9F8FCFAF9FBF9F7FBF8F6FBF9F7FCFAF9
                FBF9F9FBF7F7FBF7F6FCF9F8FBF9F8FBF9F8FAF8F7FBFAF9FCFBFAFBF8F7FBF8
                F7FAF6F6FDFAF9FDFBFAFBF8F8FDFAFAFCFBFAFDFBFAFDFBFAFDFBFAFDFBFAFD
                FAFAFCFAF9FCF9F8FBF8F7FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FCF9F8
                FDFBFAFBF8F7FDFAFAFBF9F7FBF8F6F7F2F0F7F1EFFAF7F5FAF7F5FAF7F5FBF8
                F6FAF6F4FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6F9F5F4F7F2F0F8F3F1FBF8F6FBF8F6FBF8F6FAF7F5FAF7
                F5FBF9F7FBF9F7FBF9F7FBF9F7FBF8F7FBF8F6FBF8F6FBF8F6FBF8F6FBF8F7FB
                F8F6FBF8F6FBF8F6FBF9F7FBF9F8FCF9F8FCF9F8FCF9F8FDFBFAFDFBFBFDFCFB
                FDFCFBFDFBFBFCF9F8FBF8F6FBF8F6FCF9F8FDFCFBFEFDFCFEFDFCFEFDFCFDFC
                FBFCFBF9FCF9F8FBF8F6FBF8F6FBF9F7FBF9F7FBF9F8FCFAFAFEFDFDFEFDFDFE
                FDFDFEFDFCFEFDFCFDFCFBFDFCFBFCFBFAFCF9F7FBF8F6FCF9F7FCF9F8FCF9F8
                FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFDFCFCFEFDFCFEFDFCFEFDFCFDFCFBFEFC
                FBFCF9F8FDFBF9FCFAF9FEFDFCFEFCFBFDFBF9FBF9F7FBF9F7FCF9F8FAF7F6FD
                FBFAFCFBF9FDFCFBFDFBFAFDFCFBFEFCFBFEFDFCFBF8F8FEFDFCFEFDFDFDFCFB
                FDFCFCFDFCFCFBF9F8FBF8F6FBF8F6FBF8F6FBF8F6FBF9F7FCFAF9FDFCFBFEFD
                FCFEFDFCFCFBFAFBF9F8FCF9F7FBF8F6FBF8F7FAF6F6FEFCFCFEFCFCFEFDFDFE
                FCFCFCFAF9FBF9F7FBF8F6FBF8F6FBF8F7FAF7F5FCFBFAFEFDFDFEFDFDFEFDFC
                FCFBFAFCF9F8FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FB
                F8F6FBF8F6FBF8F6FBF8F6FAF6F4FAF6F4FAF6F4FAF7F5D4D4D4555554B2B2FC
                B2B2FCB2B2FCCFCCF6DDDAF5DDDAF5DDDAF5DDDBF5DFDDF5E2DFF5E0DDF6E1DE
                F6E1DFF6DFDCF6E0DDF5E0DDF5E0DDF5E0DDF6E0DEF6E0DEF6E0DEF6DFDDF6E1
                DEF6E2DFF5E2DFF6E2E0F6E1DFF7E1DFF7E0DEF8E0DDF7DFDDF8DFDEF9DFDEF9
                DFDEF9E0DEF9E0DFF8E1DFF8E1DEF9E0DFF9E1DFFAE1DFF9E0DEF9E0DEF9E0DF
                F9DFDFF9E0DFFAE0E0FAE0E0FAE0E0FBE1E0FBE1E0FBE0DFFAE0DFF9E0DFF9E0
                DFFAE0DEFAE0DFFAE0E0FBE1E1FCE1E1FDE1E1FDE2E1FDE2E1FDE1E0FBE1E0FB
                E1E0FBE1DFFBE1E0FCE2E1FCE2E2FDE2E2FDE2E2FEE2E1FDE2E1FDE2E1FCE1E0
                FCE0E0FCE1E0FBE1E0FCE2E1FCE2E1FDE2E2FEE2E2FEE2E2FEE2E2FEE2E1FDE1
                E1FDE1E0FBE0E0FBE1E0FCE2E1FDE2E2FDE2E2FEE2E2FEE2E2FEE2E2FEE2E2FD
                E1E2FCE1E0FCE1E0FCE1E1FCE2E1FCE2E2FDE2E2FEE2E2FEE2E2FEE2E1FEE2E1
                FDE1E1FDE1E1FDE1E1FDE2E1FEE2E2FEE2E1FDE1E1FDE1E1FDE1E1FDE2E1FDE2
                E1FEE2E2FEE2E1FDE2E1FDE2E1FDE2E1FDE2E1FDE2E1FEE2E1FEE2E2FEE2E2FD
                E2E2FDE2E2FDE2E2FEE2E2FEE2E2FEE2E1FEE2E1FDE2E1FDE2E1FDE2E1FEE1E1
                FEE1E2FEE2E2FEE2E1FDE2E1FDE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E1FEE2
                E2FDE2E1FEE2E1FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FE
                E2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2
                FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E1FEE2E2FEE2E2FEE3E3FEE3
                E3FEE4E4FEE4E4FEE3E4FEE3E3FEE3E3FEE3E3FEE3E3FEE3E4FEE4E4FEE4E3FE
                E3E3FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE3E3FEE3E3FEE3E2FEE3E2FEE3E2
                FEE3E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E1FEE1E1FDE0E0FDE0DFFDE0DFFEE0
                E0FDDFE0FDE0DFFDE1DFFDE1DFFDE0E0FDE0E0FDE0E0FDE0E0FEDFE0FDDFDFFD
                DFDFFEDFDDFCE1DFFCE1E1FDE1E2FEE0E0FEE0E2FEE2E1FEE0E2FEE0E1FEE0E0
                FEDFDFFDDEDFFDE0DEFEDFDDFDDCDCFDDDDEFEDCDDFDDBDBFDD9DAFCD8D7FBD6
                D5FDD2D1FCCCCAFBC6C7FDC4C4FDC4C4FDC4C4FDC4C4FDA0A0FB9E9EFB9E9EFB
                A8A8FC555554555554B2B2FCB2B2FCB2B2FCCFCCF6DDDAF5DDDAF5DDDAF5DDDB
                F5DFDDF5E2DFF5E0DDF6E1DEF6E1DFF6DFDCF6E0DDF5E0DDF5E0DDF5E0DDF6E0
                DEF6E0DEF6E0DEF6DFDDF6E1DEF6E2DFF5E2DFF6E2E0F6E1DFF7E1DFF7E0DEF8
                E0DDF7DFDDF8DFDEF9DFDEF9DFDEF9E0DEF9E0DFF8E1DFF8E1DFF9E0DFF9E1DF
                FAE1DFF9E0DEF9E0DEF9E0DFF9DFDFF9E0DFFAE0E0FAE0E0FAE0E0FBE1E0FBE1
                E0FBE0DFFAE0DFF9E0DFF9E0DFFAE0DEFAE0DFFAE0E0FBE1E1FCE1E1FDE1E1FD
                E2E1FDE2E1FDE1E0FBE1E0FBE1E0FBE1DFFBE1E0FCE2E1FCE2E2FDE2E2FDE2E2
                FEE2E1FDE2E1FDE2E1FCE1E0FCE0E0FCE1E0FBE1E0FCE2E1FCE2E1FDE2E2FEE2
                E2FEE2E2FEE2E2FEE2E1FDE1E1FDE1E0FBE0E0FBE1E0FCE2E1FDE2E2FDE2E2FE
                E2E2FEE2E2FEE2E2FEE2E2FDE1E2FCE1E0FCE1E0FCE1E1FCE2E1FCE2E2FDE2E2
                FEE2E2FEE2E2FEE2E1FEE2E1FDE1E1FDE1E1FDE1E1FDE2E1FEE2E1FEE2E1FDE1
                E1FDE1E1FDE1E1FDE2E1FDE2E1FEE2E2FEE2E1FDE2E1FDE2E1FDE2E1FDE2E1FD
                E2E1FEE2E1FEE2E2FEE2E2FDE2E2FDE2E2FDE2E2FEE2E2FEE2E2FEE2E1FEE2E1
                FDE1E1FDE2E1FDE2E1FEE1E1FEE1E2FEE2E2FEE2E1FDE2E1FDE2E2FEE2E2FEE2
                E2FEE2E2FEE2E2FEE2E1FEE2E2FDE2E1FEE2E1FEE2E2FEE2E2FEE2E2FEE2E2FE
                E2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2
                FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2
                E1FEE2E2FEE2E2FEE3E3FEE3E3FEE4E4FEE4E4FEE3E4FEE3E3FEE3E3FEE3E3FE
                E3E3FEE3E4FEE4E4FEE4E3FEE3E3FEE2E2FEE2E2FEE2E2FEE2E2FEE2E2FEE3E3
                FEE3E3FEE3E2FEE3E2FEE3E2FEE3E2FEE2E2FEE2E2FEE2E2FEE2E2FEE2E1FEE1
                E1FDE0E0FDE0DFFDE0DFFEE0E0FDDFE0FDE0DFFDE1DFFDE1DFFDE0E0FDE0E0FD
                E0E0FDE0E0FEDFE0FDDFDFFDDFDFFEDFDDFCE1DFFCE1E1FDE1E2FEE0E0FEE0E2
                FEE2E1FEE0E2FEE0E1FEE0E0FEDFDFFDDEDEFDE0DEFEDFDDFDDCDCFDDDDEFEDC
                DDFDDBDBFDD9DAFCD8D7FBD6D5FCD2D1FCCCCAFBC6C7FDC4C4FDC4C4FDC4C4FD
                C4C4FDA0A0FB9E9EFB9E9EFBA8A8FC555554555554E0DDF6E0DDF6E0DDF6DEDB
                F6D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D7D6F8D7D6F8D7D6F8D7D6F9D6D5F9D6D5F9D6D5F9D6
                D5F9D7D6F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D7D6F8D7D6F8D7D6F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D7D6F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8
                D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7
                F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8D7F8D8
                D7F8D8D7F8DAD7F7DAD9F8DAD9F8DAD8F8D8D7F8D8D7F8D8D7F8D9D8F8D9D8F7
                D9D8F8DAD8F8D9D8F8D8D7F8D8D7F8DAD7F7DBD9F8D8D5F2DDDAF6DEDBF5DFDC
                F5E0DDF6E0DDF6DFDDF6DEDCF6DDDAF7D9D8F8D8D7F8D8D7F8D9D8F8D9D8F8D9
                D7F7DAD8F7DAD8F7DAD8F6DCD9F5DEDCF4DFDBF2E1DDF2E3DEEFDDDBF6DAD8F8
                DCDAF6DEDBF6DDDBF7DBD9F7DAD8F7D9D7F8D9D8F7DDDAF4E3DFF2E5E2F4E7E3
                F2E6E0ECDFDDF3DDDBF6E3DFF1E0DEF4E0DDF6DFDDF6DCDAF6DDD9F5E0DBF2E8
                E2EEE9E3F1E4E0F5E4E1F3E6E0F0E1DEF6DFDCF6E4DFEEE2DEF2E1DDF0DCDAF5
                D9D7F7D8D7F8D8D7F8D8D7F8D8D7F8DFDDF6E0DDF6E0DDF6DEDBF65555545A5A
                59EBDDD5EBDDD5EBDDD5ECDFD7EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEDE2DBEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCED
                E2DBECE0D9EDE1DAEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEDE2DBEEE3DCEEE3DC
                EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE3DCEEE3DCEDE2DBEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEDE2DBEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEE
                E2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DB
                EEE2DBEEE2DAEDE1DAEDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1D9EDE1
                D9EDE1D9EDE2DAEEE2DBEEE2DBEEE2DAEDE2DBEEE2DBEEE3DCEEE3DCEEE3DCEF
                E4DDF0E7E1F1E8E2F1E8E2F1E8E2F1E8E2F1E7E1EFE4DEEFE4DDF0E7E1F1E8E2
                F1E8E2F1E8E2F1E8E2F1E7E1EFE4DEEFE4DDF0E7E1F1E8E2F1E7E1F1E8E2F1E8
                E2F1E7E1EFE4DEEFE4DDF0E7E1F1E8E2F1E7E1F0E7E1F0E6DFF0E6E0EFE4DEEF
                E4DDF0E7E1F0E7E0EFE4DDEEE3DCEEE4DDF0E5DFEFE4DEEFE4DDF0E7E1F0E7E0
                EFE4DDEEE3DCEEE4DDF0E5DFEFE4DEEFE4DDEEE3DDEEE3DCEEE3DCEBDDD5EBDD
                D5EBDDD5ECDFD75A5A59D6D6D5FAF6F4FAF6F4FAF6F4FAF7F5FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF9F7FBF9F7FBF9F7F9F7F5FBF9F7
                FBF9F7FBF9F8FCFAF8FCFAF9FAF5F4FBF9F8FCFAF9FCFAF8FBFAF9FCFAF9FCFB
                F9FCFBFAFCFBFAF7F4F3FAF7F6FCFBFAFCF9F8FBF8F6FCFAF9FDFBFAFDFBFAFD
                FBFAFDFBFAFDFBFAFBF9F9FBF7F7FBF7F6FCF9F8FBF9F8FAF6F6FDFAFAFDFBFA
                FDFBFBFDFBFBFDFBFAFCF9F9FDFBFAFDFBFAFBF8F8FDFAFAFDFCFBFDFCFBFDFB
                FAFDFBF9FCFAF8FBF8F6FBF8F6FBF8F6FBF8F6FAF7F5FBF8F6FCFBF9FDFCFBFB
                F9F8FDFCFBFCFAF9FAF8F6FAF7F5FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF6F4
                F8F4F2FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6F9F5
                F4F7F2F0F8F3F1FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF9F7FA
                F6F4F7F2F1F8F3F2FAF7F5F6F0EFFAF6F4FBF7F6FBF9F7FAF7F5FBF8F7FBF9F7
                FBF9F7FBF9F7FCFAF9FCFAFAFBF9F7FCF9F8FCFAF9FCFAF9FCFAF9FCFAF8FBF8
                F6FBF9F7FCF9F8FCF9F8FCFAF8FCFAF8FCFAF8FDFBFAFDFCFBFDFBFBFDFCFBFD
                FCFBFCFAF8FBF8F6FBF8F6FCFAF9FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFA
                FBF9F7FBF8F6FBF8F6FBF9F7FBFAF9FDFBFAFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFDFEFDFCFEFDFCFEFDFCFDFBFAFCFAF8FCFAF8FCFAF8FCFAF9FDFBFAFD
                FCFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFBF8F8FDFCFBFBFAF8
                FDFBFAFBF7F6FEFDFCFEFDFCFEFCFBFCFAF9FCFAF9FBF9F8FEFDFCFEFDFCFDFC
                FBFDFCFBFEFDFDFBF8F8FEFDFCFDFCFCFAF6F6FEFDFCFEFDFDFDFCFBFDFCFCFD
                FBFBFCF9F9FBF9F8FBF8F6FBF8F6FBF8F6FCFAF8FDFCFBFCFBFAFCFBFAFDFCFC
                FEFDFDFEFDFCFDFBFAFCF9F8FAF6F5FCFBFAFEFDFDFEFDFDFEFDFDFDFCFCFEFC
                FCFCFAF9FBF9F7FBF9F7FCF9F8FCFBF9FEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFD
                FAF9FBF8F6FAF7F5FAF7F5FBF8F6FAF8F6FBF8F6FBF8F6FBF8F6FBF8F6FAF7F5
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FBF8
                F6FBF8F6FBF8F6FAF6F4FAF6F4FAF6F4FAF7F5D6D6D55A5A59B2B2FCB2B2FCB2
                B2FCCDCBF6DBD8F4DBD8F4DBD8F4DDDAF5E2DFF5E4E1F5E2DFF5E4E1F6E3E1F6
                DFDDF5DDDCF5DFDDF5E2DFF5E0DDF6E1DEF6E1DFF6E0DCF6DFDCF5E0DDF5E0DE
                F5E1DDF6E1DEF6E0DEF6DFDEF6E0DDF6E0DEF6DFDCF6DEDCF7DEDCF8DEDBF8DE
                DCF8DFDDF7E0DEF7DFDEF7E0DEF7E0DEF7E0DEF7DFDDF7DEDBF7DEDCF7DEDDF7
                DFDDF8DFDEF8DFDEF9DFDEFADFDEFBE0DEF8E0DEF7DFDCF7DEDCF7DEDCF8DEDC
                F8DFDBF8DFDEF9DFDEF9DFDEFCDFDEFDE0DFFBE0DFF9DFDDF7DDDDF8DEDCF8DD
                DBF9DEDDF9DFDEFADFDFFBDFDFFCDFDFFCDFDFFCE0DFFBE0DDF9DEDCF8DEDAF9
                DFDCF8DFDCF9E0DEFAE0DFFCDFDFFEDFDFFDDFDEFDDFDFFEDFDEFBDEDBFADDDC
                F8DDDBF9DFDDF9DFDEFADFDEFCDFDFFDDEDFFEDEDFFEDFDFFEDFDEFBDEDCFADE
                DDF9DFDDF9DFDEFAE0DEFADFDFFCDFDEFDDEDEFEDEDFFEDEDEFDDEDDFBDFDDFB
                DFDEFBDFDDFCDEDEFDDFDEFDDFDDFCDFDDFBDFDDFBDFDDFBDEDDFCDFDEFDDEDE
                FDDDDDFCDEDDFBDFDDFBDEDDFBDEDEFCDDDDFDDDDDFDDEDEFDDEDEFCDEDDFCDE
                DEFCDEDFFDDDDEFDDEDDFDDEDDFDDEDDFCDEDDFBDDDEFCDEDDFDDDDDFDDEDEFD
                DEDEFDDFDEFBDEDDFBDFDEFDDEDEFEDEDDFEDFDEFEDFDEFDDFDDFCDEDDFCDFDD
                FCDFDEFDDEDEFEDEDEFDDEDDFDDEDDFCDFDEFCDEDEFDDEDEFDDEDFFEDEDEFDDF
                DEFDDEDEFCDEDDFCDEDEFCDEDEFDDEDDFEDFDEFEDEDDFDDEDDFCDEDDFCDEDDFC
                DEDDFDDEDEFEDEDEFEDEDEFDDEDFFCDEDEFCDFDEFCE0E0FEE1E1FEE2E1FEE2E1
                FEE1E1FEE0E0FDDFDEFCE0DFFDE0E0FDE1E1FDE1E1FEE1E1FEE0E0FDE0E0FCDF
                DEFCDFDFFCDFDFFDE0DFFDE1E0FDE1E0FDE1E0FDE0DFFCE0DEFCE0DEFDE0E0FE
                E1DFFDE0DEFCDFDEFCDFDEFCDDDCFCDCDBFCD9DAFBD8D7FBD8D8FBD9D6FBD8D8
                FBD7D6FBD8D7FBD8D8FBDAD9FBD9D9FBD9D9FBD8D8FAD7D7FAD7D6FBD5D6FAD5
                D4F9D8D6FAD9D9FBDBDAFDDBDAFDDBDCFDDCDCFDDCDAFCD9DAFBD7D5FBD6D4FC
                D3D2FCD0CFFCCDCEFCCCCCFCCECFFBD0D0FACFD0FACDCCF9CBCAF8C6C5FAC2C0
                F9C4C5F9C2C2FCC0C1FBBFBFFCBFBFFCBFBEFC9E9EFB9E9EFB9E9EFBA6A6FB5A
                5A595A5A59B2B2FCB2B2FCB2B2FCCDCBF6DBD8F4DBD8F4DBD8F4DDDAF5E2DFF5
                E4E1F5E2DFF5E4E1F6E3E1F6DFDDF5DDDCF5DFDDF5E2DFF5E0DDF6E1DEF6E1DF
                F6E0DCF6DFDCF5E0DDF5E0DEF5E1DEF6E1DEF6E0DEF6DFDEF6E0DDF6E0DEF6DF
                DCF6DEDCF7DEDCF8DEDBF8DEDCF8DFDDF7E0DEF7DFDEF7E0DEF7E0DEF7E0DEF7
                DFDDF7DEDBF7DEDCF7DEDDF7DFDDF8DFDEF8DFDEF9DFDEFADFDEFBE0DEF8E0DE
                F7DFDDF7DEDCF7DEDCF8DEDCF8DFDBF8DFDEF9DFDEF9DFDEFCDFDEFDE0DEFBE0
                DFF9DFDDF7DDDDF8DEDCF8DDDBF9DEDDF9DFDEFADFDFFBDFDFFCDFDFFCDFDFFC
                E0DFFBE0DDFADEDCF8DEDAF9DFDCF8DFDCF9E0DEFAE0DFFCDFDFFEDFDFFDDFDE
                FDDFDFFEDFDEFBDEDCFADDDCF8DEDBF9DFDDF9DFDEFADFDEFCDFDFFDDEDFFEDE
                DFFEDFDFFEDFDEFBDEDCFADEDDF9DFDDF9DFDEFAE0DEFADFDEFCDFDDFDDEDEFE
                DEDEFEDEDEFDDEDDFBDFDDFBDFDEFBDFDDFCDEDEFDDFDDFDDFDDFCDFDDFBDFDD
                FBDFDDFBDEDDFCDFDEFDDEDEFDDDDDFCDEDDFBDFDDFBDEDDFBDDDEFCDDDDFDDD
                DDFDDEDEFDDEDEFCDEDDFCDEDEFCDEDFFDDDDEFDDEDDFDDDDDFDDEDDFCDEDDFB
                DDDEFCDEDDFDDDDDFDDEDEFDDEDEFDDFDEFBDEDDFBDFDEFDDEDDFEDEDDFEDEDE
                FEDFDDFDDFDDFCDEDDFCDFDDFCDFDEFDDEDEFDDEDEFDDEDDFDDEDDFCDFDEFCDE
                DEFDDEDEFDDEDFFEDEDEFDDFDEFDDEDEFCDEDDFCDEDEFCDEDEFDDDDDFEDFDEFE
                DEDDFDDEDDFCDEDDFCDEDDFCDEDDFDDEDEFEDEDEFEDEDEFDDEDFFCDEDEFCDFDE
                FCE0E0FEE1E1FEE2E1FEE2E1FEE1E1FEE0E0FDDFDEFCE0DFFDE0E0FDE1E1FDE1
                E1FEE1E1FEE0E0FDE0E0FCDFDEFCDFDFFCDFDFFDE0DFFDE1E0FDE1E0FDE1E0FD
                E0DFFCE0DEFCE0DEFDE0E0FEE1DFFDE0DEFCDFDEFCDFDEFCDDDCFCDCDBFCD9DA
                FBD8D7FBD8D8FBD9D6FBD8D8FBD7D6FBD8D7FBD8D8FBDAD9FBD9D9FBD9D9FBD8
                D8FAD7D6FAD7D6FBD5D6FAD5D4F9D8D6FAD9D9FBDBDAFDDBDAFDDBDCFDDCDCFC
                DCDAFCD9DAFBD7D5FBD6D3FCD3D2FCD0CFFCCDCEFCCCCCFCCECFFBD0D0FACFD0
                FACDCCF9CBCAF8C6C5FAC2C0F9C4C5F9C2C2FCC0C1FBBFBFFCBFBFFCBFBEFC9E
                9EFB9E9EFB9E9EFBA6A6FB5A5A595A5A59E0DDF6E0DDF6E0DDF6DEDCF6DAD8F8
                DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8
                F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DA
                D8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8
                DAD8F8D9D8F8D8D7F8D8D7F8D8D6F7D8D7F8D8D7F8D8D7F8D8D7F8D7D6F8D8D6
                F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8D9D8F8D8D7F8D8D7F8D8D6F7D9D7F8DA
                D8F8DAD8F8DAD8F8D9D7F8D8D6F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8D9D8F8
                D8D7F8D8D7F8D8D6F7D9D7F8DAD8F8DAD8F8DAD8F8D9D7F8D8D6F8D9D7F8DAD8
                F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D8F8D8D7F8D8D7F8D8
                D6F7D9D7F8DAD8F8DAD8F8DAD8F8D9D7F8D8D6F8D9D7F8DAD8F8DAD8F8DAD8F8
                DAD8F8DAD8F8DAD7F7D9D6F6D9D6F5D9D8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8
                F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD7F7D9D6F6D9D6F5D9
                D8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8
                DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D7F8DAD8
                F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DA
                D8F8DAD8F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8
                DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D7F8DAD8F8DAD8F8DAD8F8DAD8F8DBD9
                F7DEDCF7DEDCF7DEDCF7DDDBF7DCDAF8DCDAF8DCDAF7DDDBF7DEDCF7DCD8F4DC
                DAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEE
                E1DEF3DFDBF2E1DDF2E3DEEFDDDBF6DAD8F8DCDAF6DEDBF6DDDBF7DDDBF7DEDB
                F6E2DDF1E3DFF3E4DEEEE7E3F0E6E3F3E8E4F2E7E1EBE1DEF2DFDCF5E4E0F0E0
                DEF4E0DDF6DFDDF6DCDAF6DDD9F5E0DBF2E8E2EEEBE5F0EBE7F2EAE6F1E8E2EF
                E1DEF6DFDCF6E5DFEEE4DFF1E4DFEEE1DEF3DFDBF3DFDCF4E5DDEBEBE5ECEEEA
                F1ECE9F3E9E6F3E5E1F3E0DDF6DFDDF6E5E1F2EAE6F1E9E1E9E6E2F1E2DFF5DE
                DBF7DCD9F8DAD8F8DAD8F8E0DDF6E0DDF6E0DDF6DEDCF65A5A595F5F5DE9DBD3
                EADCD4EBDDD5ECDFD7EFE4DDEFE4DDECDFD8EFE4DDEFE4DDEFE4DDEEE3DCEFE4
                DDEFE4DDEEE3DCEFE3DCEEE3DCEFE4DDECDFD8EDE1DAEFE4DDEFE4DDEEE3DCEF
                E4DDEBDDD6EFE4DDEFE4DDEFE4DDECDFD8EFE3DCEEE3DCEFE4DDEFE4DDEFE4DD
                EEE3DCEFE4DDE9DAD4EFE4DDEEE3DCEFE4DDEBDDD6EFE4DDEFE4DDEFE4DDEEE3
                DCEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEEE3DCEFE3DCEEE3DCEFE4DDEC
                DFD8EFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEBDDD6EFE4DDEFE4DDEFE4DDEEE3DC
                EFE4DDE9DAD4EFE4DDEFE4DDEFE4DDEEE3DCEFE4DDE9DAD4EFE4DDEFE4DDEFE4
                DDEFE4DDEFE4DDE9DAD4EFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEF
                E4DDEEE3DCEFE3DCEFE4DDEEE3DCEFE4DDEFE4DDEEE3DCEFE3DCEFE4DDEEE3DC
                EFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4
                DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEF
                E4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DD
                EFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEFE4
                DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEEE3DCEEE3DCEFE4DDEEE3DCEEE3DCEE
                E3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DC
                EEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3
                DCEEE3DCEEE3DCEEE3DCEEE3DCEEE3DCECE0D9EDE2DBEEE3DCEEE3DCEEE3DCEE
                E2DBEDE0D9EEE2DBEEE2DBEEE2DAEDE1DAEDE1DAEEE2DBEEE2DBEEE2DBEEE1DA
                EEE3DCEEE3DCEEE3DCEDE0D9EBDDD6EEE3DCEFE3DCEFE3DCEEE3DCF0E6E0F2E9
                E3F2E9E3F2E9E3F2E9E3F2E9E3F1E8E1EFE4DDF0E6E0F2E9E3F2E9E3F2E9E3F2
                E9E3F2E9E3F1E8E1EFE4DDF0E6E0F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F1E8E1
                EFE4DDF0E6E0F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F1E8E1EFE4DDF0E6E0F2E9
                E3F2E9E3F1E7E1EFE5DEF0E5DFF1E8E1EFE4DDF0E6E0F2E9E3F2E9E3F1E7E1EF
                E5DEF0E5DFF1E8E1EFE4DDF0E6E0F1E6DFEFE4DDEFE4DDEBDDD5EBDDD5EBDDD5
                EBDED65F5F5DD7D7D6F9F6F4FAF6F4FAF6F4FAF7F5FBF8F6FBF8F6FBF8F6FBF8
                F6FAF6F4FAF7F5FAF7F5FBF8F6FBF8F6FCF9F8FCF9F8FAF8F7FCFAF8FBF9F7FC
                FAF8FCFAFAFCFBFAFBF9F8FCFAF9FCFBFAFCFBFAFCFAF9FCFBFAFCFBFAFBFAF9
                FBF9F8FAF8F7FBFAF9FCFBFAFBF8F7FBF8F6FCFBFAFBF9F8FCFAF9FDFBFAFDFB
                FAFDFBFBFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFD
                FBFBFDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFBFBFDFCFBFBF8F7
                FDFAFAFBF9F7FBF8F6F7F2F0F7F1EFFAF7F5FBF8F6FBFAF9FCFAF9FBF8F7FDFC
                FBFCFAF9FBF9F7FCFAF9FCFAF9FCFAF9FBF9F7FBF8F7FBF8F7FBF8F6F6F0EFFA
                F6F4FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF9F7FAF6F4F7F2F1F8F3F2FAF7F5
                F6F0EFFAF6F4FAF6F5FBF8F7FBF8F7FBF8F7FBF8F7FBF8F7FCF8F8FBF9F8FDFB
                FAFDFBFAFDFBFAFBF8F7F9F4F3FAF7F5FCFAF8FBF8F7FBF9F8FBF9F8FBF9F8FB
                F9F8FCFAFAFDFBFBFDFBFAFDFBFAFDFBFBFDFCFBFDFBFAFCF9F8FBF9F7FBF9F7
                FCFAF8FCFAF8FCFBF9FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFA
                F8FBF8F6FBF8F6FCFAF8FEFDFCFEFDFCFEFDFCFDFCFBFDFBFAFEFCFBFCFBFAFB
                F8F7FBF8F7FCF9F7FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFCFEFDFCFEFDFCFDFBFAFDFAF9FDFBFAFDFCFBFDFCFBFDFCFBFDFCFBFEFC
                FCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFAF6F6FDFCFBFCFBFAFDFCFBFD
                FBFAFDFCFBFEFDFCFEFDFDFDFCFCFEFCFBFEFDFCFEFDFCFEFDFCFEFCFBFEFCFC
                FDFBFBFAF6F6FEFDFCFCFBFAFEFDFCFEFDFCFEFDFCFDFBFBFEFCFCFDFCFCFEFD
                FCFDFBFAFCF9F7FBF8F6FBF8F7FAF6F6FEFCFCFEFCFCFEFDFDFEFDFDFDFCFBFD
                FCFBFEFCFBFCFAF9FCFBF9FEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFCFCF6F0F0
                FCF9F7FCF9F8FAF6F6FDFBFBFEFDFDFEFDFDFEFDFDFEFDFDFEFCFBFBF9F8FAF7
                F5FAF7F6FAF6F6FDFBFAFDF9F9FCF9F8FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FBF8F6FBF8F6
                FBF8F6FAF6F4FAF6F4FAF6F4FAF7F5D7D7D65F5F5DA5A5FCACACFCB2B2FCCDCB
                F6D9D6F4D9D6F4D9D6F4DCD9F5E0DBF1E2DFF5E1DDF3E0DCF3E1DFF4DCDAF5DD
                DBF5E1DDF5E3DFF5E2DFF5E1E0F5E3DFF6DFDCF5DDDBF5DFDCF5E2DEF5E1DDF6
                E1DEF6E1DDF6E0DDF5E1DFF5E1DEF5DEDCF5DDDAF6DDDAF6DDDAF7DFDCF7E0DD
                F6E0DEF6E0DEF6E0DDF6E1DEF6DFDDF6DDDBF6DCDAF6DCDAF6DCDBF7DDDCF7DF
                DCF7DFDCF7DDDCF9DDDBF8E0DBF5E0DCF6DFDAF6DCDAF6DCDAF7DCDAF7DEDCF7
                E0DDF6DEDDF8DEDCFADEDBFBDEDBF9E0DCF7DEDAF5DCDAF5DDDAF6DCD9F7DEDB
                F7DDDCF8DEDDF8DCDBF8DBDAFADBDAFADCDAF9DDDAF7DBD9F7DCD9F6DCDBF7DD
                DBF7DFDDF8DDDCF9DCDBFBDBD9FCDBD9FCDCD9FBDCD9F9DAD8F8D9D7F8DCD7F8
                DBDBF8DDDAF8DCDAFADBDBFBD9DAFDDADAFDDBDBFBDDDBF9DBD9F7DCD9F7DCD9
                F8DDD9F8DCD9F9DAD9FAD8D8FBD7D8FDD7D8FDDAD7FBD9D8FADAD9FADAD8FAD9
                D8FBD8D7FCD8D7FCDBD7FBDBD9FADBD9FAD9D8FAD9D8FAD8D8FCD7D6FCD8D8FB
                D8D8FAD8D8FAD8D7FAD7D8FBD7D7FCD6D7FCD7D7FBD8D7FAD9D8FAD8D7FBD8D8
                FBD7D7FCD6D6FCD8D7FBD9D7FAD8D7FAD8D6FBD6D7FCD6D6FCD7D7FCD9D8FBD8
                D9F9D9D9F9D8D8FBD8D7FDD7D6FDD8D7FCD9D8FBD8D8FAD9D8FAD9D7FBD8D6FC
                D8D6FDD8D6FCD9D7FBD9D7FADAD8F9D8D7FBD7D7FCD9D7FCD7D8FCD7D7FBD7D7
                FAD8D8F9D8D6FAD6D7FCD6D6FDD8D7FCD9D6FBD8D7FAD8D7FAD8D7FAD8D7FCD9
                D8FDD8D9FCD8D8FBD9D7F9DAD8F8DCD9FADDDBFCDDDCFCDEDEFDDFDEFEDDDBFB
                DCD9F8DCD9F9DDDBFADDDDFBDDDDFCDDDDFCDCDDFDDCDBFCDBD9FADAD8F9DAD9
                FADCDAFBDCDBFCDCDCFCDDDDFCDCDCFBDCD9F9DBDAFADDDBFBDCDBFDDBDAFCDB
                D9F8DAD8F9D9D7FAD5D4FAD2D1FACFCFFACCCDF9CCCCF9CBCAF9CBCAF8CBC9F9
                CBC9F9CBCBFACFCDF9D2D1F9CFCFF8CCCBF8CAC9F9C8C6F9C7C6F8CAC8F6CDCB
                F9D0CEFAD0CFFCCFCEFBD1D1FBD3D3FAD1D0FACECCF9CAC8FAC7C5FAC5C3FAC4
                C3FBC3C3FBC4C3F9C7C5F8C7C7F7C3C2F7BEBDF8BBBAF8B6B5F9B5B4FAB9BAFA
                BDBCF9C1C1F9BEBEFBBBBBFCBABBFC9E9EFB9E9EFB9E9EFBA1A1FB5F5F5D5F5F
                5DA5A5FCACACFCB2B2FCCDCBF6D9D6F4D9D6F4D9D6F4DCD9F5E0DBF1E2DFF5E1
                DDF3E0DCF3E1DFF4DCDAF5DDDBF5E1DDF5E3DFF5E2DFF5E1E0F5E3DDF6DFDBF5
                DDDBF5DFDCF5E2DEF5E1DDF6E1DDF6E1DDF6DFDDF5E1DEF5E0DEF5DEDCF6DDDA
                F6DDDAF6DDDAF7DEDCF7E0DCF6E0DDF6E0DEF6E0DDF6E0DEF6DFDDF6DDDBF6DC
                DAF6DCD9F6DCDBF7DDDCF7DFDBF7DEDBF7DDDCF9DDDBF8E0DBF5E0DBF6DFDAF6
                DCDAF6DCDAF7DCDAF7DDDCF7DFDDF7DEDDF8DDDCFADEDBFBDEDAF9E0DCF7DEDA
                F5DCDAF6DCDAF6DCD9F7DDDBF7DDDAF8DDDDF8DCDBF8DADAFADBDAFADBD9F9DC
                D9F7DBD9F7DCD9F7DCDBF7DDDBF7DEDCF8DDDCF9DADAFBDBD9FCDAD9FCDCD8FB
                DBD8F9DAD8F8D9D7F8DBD7F8DBD9F8DDDAF8DCDAFADADAFBD9DAFDDADAFDDADB
                FBDCDBF9DBD9F8DCD8F8DBD8F8DDD9F8DCD8F9DAD8FAD8D7FBD7D8FDD7D8FDD9
                D7FBD8D8FADAD9FAD9D7FAD9D8FBD8D7FCD8D7FCDBD7FBDBD9FADBD8FAD9D8FA
                D8D8FAD7D8FCD7D6FCD8D8FBD8D8FAD8D8FAD8D7FAD7D8FBD7D7FCD6D7FCD7D7
                FBD8D7FAD9D8FAD8D7FBD7D8FBD6D7FCD6D6FCD7D6FBD9D7FAD7D6FAD8D6FBD6
                D7FCD6D5FCD7D6FCD9D8FBD8D7F9D9D9F9D8D8FBD7D7FDD7D6FDD8D7FCD8D7FB
                D8D8FAD9D8FAD9D7FBD8D6FCD8D6FCD8D5FCD8D7FBD9D7FADAD7F9D8D6FBD7D6
                FCD7D7FCD7D8FCD7D7FBD7D7FAD8D5FAD8D6FAD6D6FCD6D6FDD7D7FCD9D6FBD8
                D6FAD8D7FAD7D7FAD7D7FCD8D7FCD7D8FCD8D8FBD9D7F9DAD8F8DCD8FADCDAFC
                DDDCFCDDDEFDDFDDFEDDDBFBDCD9F8DCD9F9DDDAFADDDDFBDDDCFCDDDDFCDCDD
                FDDCDBFCDBD9FADAD8F9DAD9FADCDAFBDCDAFCDCDCFCDDDDFCDCDCFBDCD9F9DB
                DAFADCDBFBDCDBFDDBDAFBDBD9F8DAD8F9D8D7FAD5D4FAD2D0FACECFFACCCDF9
                CCCCF9CBCAF9CBCAF9CBC9F9CBC9F9CBCBFACFCDF9D2D1F9CFCFF8CCCBF8CAC9
                F9C9C6F9C7C6F8CAC8F6CDCBF9D0CEFAD0CFFCCFCEFBD1D1FBD3D3FAD1D0FACE
                CCF9CAC8FAC7C5FAC5C3FAC4C3FBC3C3FBC4C3F9C7C5F8C7C7F7C3C2F7BEBDF8
                BBBAF8B6B5F9B5B5FAB9BAFABDBCF9C1C1F9BEBEFBBBBBFCBABBFC9E9EFB9E9E
                FB9E9EFBA1A1FB5F5F5D5F5F5DDCD9F5DEDBF5E0DDF6DFDCF6DCDAF7DCDAF7DC
                DAF7DCDAF7DCDAF7DCD9F6DBD9F5DBD8F5DCD9F6DCDAF7DCDAF7DCD9F6DBD9F4
                DBD8F5DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCD9F6DBD9F4DBD7F4DCDAF7DCDA
                F7DCDAF7DCDAF7DCDAF7DCDAF7DCD9F6DCDAF7DCDAF7DCDAF7DCDAF7DBD9F7DA
                D8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8DAD8F8D9D8F8D8D7F8D9D7F8DBD9F7
                DCDAF7DCDAF7DCDAF7DBD9F7DAD8F8DAD8F8DAD8F8DAD8F8D9D6F6DBD9F8DCDA
                F7DBD9F7D9D7F8D9D7F8DBD9F7DCDAF7DCDAF7DCDAF7DBD9F7DAD8F8DAD8F8DA
                D8F8DAD8F8D9D6F6DBD9F8DCDAF7DBD9F7D9D7F8D9D7F8DBD9F7DCDAF7DCDAF7
                DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DBD9F7DAD8F8DAD8F8DAD8F8DAD8F8D9D6
                F6DBD9F8DCDAF7DBD9F7D9D7F8D9D7F8DBD9F7DCDAF7DCDAF7DCDAF7DCDAF7DC
                DAF7DCDAF7DCDAF7DBD9F7D8D6F5D7D1F0DBD9F7DCDAF7DBD9F7D9D7F8D8D6F7
                DBD8F6DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DBD9F7D8D6F5D7D1
                F0DBD9F7DCDAF7DBD9F7D9D7F8D8D6F7DBD8F6DCDAF7DCDAF7DCDAF7DCDAF7DC
                DAF7DCDAF7DCDAF7DCD9F6DCDAF7DCDAF7DBD9F7D9D7F8D8D6F7DBD8F6DCDAF7
                DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCD9F6DCDAF7DCDAF7DBD9F7D9D7
                F8D8D6F7DBD8F6DCDAF7DCDAF7DCDAF7DCDAF7DCDAF7DCDAF6DCDAF7DCD9F6DC
                DAF7DCDAF7DBD9F7D9D7F8D8D6F7DBD8F6DCDAF7D8D4F1DDDAF6DEDBF5DFDCF5
                E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6E0DDF6DDDBF6DCDAF7DCDA
                F7DDDAF6DEDBF5DFDCF5DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6
                E3F3E8E4F2E7E1EBE1DEF2DFDCF5E4E0F0E0DEF4E0DDF6E0DDF6DEDCF5E1DBEE
                E7DFEBEAE3EDEBE5F0EBE7F2EAE6F1E8E2EFE1DEF6DFDCF6E5DFEEE4DFF1E4DF
                EEE1DEF3DFDBF3DFDCF4E5DDEBEBE5ECEEEAF1EEEAF2E9E6F3E5E1F3E0DDF6DF
                DDF6E5E1F2EAE6F1E9E1E9E7E3F0E6E3F4E6E2F4EAE6F3EDE9F1EFE9EFF0ECF2
                ECE9F4E6E1EFE1DEF3DFDBF2E5E1F2EDE9F3EBE4EDEBE5F0EAE7F2E9E6F2E3E1
                F4DEDCF6DCDAF7E0DDF6E0DDF6E0DDF6DDDBF55F5F5D646463E5D8D1E7D9D2E8
                DAD3EBDED7EFE5DEEFE5DEEDE2DBEDE2DBEFE4DDEFE5DEEDE3DCEFE5DEEFE5DE
                EFE5DEEEE4DDEDE2DBEADCD5EBDFD8EBDFD8EFE4DDEFE5DEEDE2DBEADCD5EBDF
                D8ECE0D9EFE5DEECE0D9EBDFD8ECE0D9EEE3DCECE1DAEFE5DEEFE5DEEEE4DDEA
                DCD5EBDFD8ECE0D9EEE3DCEADDD6EBDFD8ECE0D9EFE5DEEFE5DEEEE3DCEEE4DD
                EFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEEE4DDEDE2DBEADCD5EBDFD8ECE0
                D9EFE4DDEFE5DEEDE2DBEADCD5EBDFD8ECE0D9EFE5DEEFE5DEEDE2DBEADCD5EB
                DFD8ECE0D9EFE5DEEFE5DEEEE4DDEADCD5EBDFD8ECE0D9EFE5DEEFE5DEEFE5DE
                EADCD5EBDFD8ECE0D9EFE5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5
                DEEEE4DDEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEEE4DDEFE5DEEF
                E5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEEE4DD
                EFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEFE5DEEFE5
                DEEEE4DDEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEF
                E5DEEFE5DEEEE4DDEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEFE5DE
                EFE5DEEEE4DDEFE5DEEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4
                DDEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEF
                E4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DD
                EFE4DDEFE4DDEFE4DDEEE3DCEFE4DDEFE4DDEFE4DDEFE4DDEFE4DDEEE2DBEEE2
                DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEFE3DCEFE4DDEF
                E4DDEFE4DDEEE2DBEEE2DBEEE2DBEEE2DBEEE2DBEEE3DCF0E6E0F3E9E4F2E9E3
                F2E8E3F2E8E3F2E9E4F2E8E2EFE4DDF0E6E0F3E9E4F2E9E3F2E8E3F2E8E3F2E9
                E4F2E8E2EFE4DDF0E6E0F3E9E4F2E9E3F2E8E3F2E8E3F2E9E4F2E8E2EFE4DDF0
                E6E0F3E9E4F2E9E3F2E8E3F2E8E3F2E9E4F2E8E2EFE4DDF0E6E0F3E9E4F2E9E3
                F2E8E2F0E6E0F1E7E2F2E8E2EFE4DDF0E6E0F3E9E4F2E9E3F2E8E2F0E6E0F1E7
                E2F2E8E2EFE4DDF0E6E0F2E8E3F0E6DFEFE5DEEADCD4E9DBD3E8DAD3E8DCD564
                6463D8D8D8F8F5F3F9F5F4F9F6F4FAF7F5FBF8F7FBF8F7FBF8F7FBF8F7F7F2F1
                FAF6F5FBF8F7FBF7F6FBF9F8FCFAF9FCFAF9FAF7F6FCF9F8FCFAF9FCFAF9FCFB
                FAFCFBFAF9F7F6FBF9F8FCFBFAFCFBFAFBF9F8FCFBFAFCFBFAFBF9F9FBF7F7FB
                F7F6FCF9F8FBF9F8FAF5F5FCF8F7FBF9F8FAF5F5FDFAF9FDFBFAFBF8F8FDFAFA
                FCFBFAFDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFDFBFAFDFCFBFDFBFBFDFBFBFDFB
                FBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFBF9F8FDFCFBFC
                FAF9FAF8F6FAF7F5FBF8F6FAF7F5FBF8F6FCFAF9FDFCFBFAF7F6FDFCFBFBF9F8
                FDFAF8FDFBFAFBF8F8FDFAFAFCFBFAFDFBFAFDFBFAFDFBFAFBF8F7F8F3F2FBF8
                F7FBF8F7FBF8F7FBF8F7FBF8F7FCF8F8FBF9F8FDFBFAFDFBFAFDFBFAFBF8F7F9
                F4F3FAF7F5FBF9F7FBF9F7FBF9F7FBF9F8FCFAF9FCF9F9FDFBFAFDFBFAFBF8F8
                FDFAFAFDFCFAFAF7F5FBF8F7FCFAF8FBF9F8FBF9F8FCF9F8FCF9F8FCF9F8FDFB
                FAFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFAFCF9F8FBF8F7FDFBFAFD
                FCFBFDFCFBFDFCFBFEFDFCFEFDFCFDFCFBFDFBFAFDFCFBFAF7F6FBF9F8FBF8F7
                FBF8F7FCFAF9FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFCFCFCFAF9FCF9F8FCF9
                F8FCF9F8FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFDFBF9FDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFDFCFCFEFDFD
                FEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFCFEFDFCFDFCFBFDFCFBFEFDFDFBF8
                F8FEFDFCFEFDFDFDFCFBFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFCFBFAF9F8F7FCF9F9FEFCFCFEFDFDFEFDFC
                FDFBFAFCF9F8FAF6F5FCFBFAFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFD
                FDFDFBFBFDFBFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFCF8F2F1FBF9F8FC
                F9F8FDFAF9FDFCFCFEFDFDFEFDFDFDFCFCFEFDFCFDFCFBFCF9F7FBF8F7FAF7F5
                FCFBFAFEFDFDFEFDFDFEFDFCFCFAF9FCF9F8FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F6FBF8F7FBF8F7FA
                F6F4F9F6F4F9F6F4F9F6F4D8D8D86464639393FD9A9AFCA1A1FCC6C3F7D6D3F4
                D6D3F4D6D3F4D8D5F5DCD8F0DFDBF4DDDAF5DCDAF4D9D5F3D8D5F5DBD8F5DCDA
                F2E0DBF3DFDAF4DDDAF4DBDBF5D9D8F5D9D7F6DCDAF5E1DBF4DFDCF5E1DBF5E0
                DCF5DDD8F5DBDAF5DAD8F4DAD7F5D8D6F6D8D6F6D9D7F6DCDAF5DEDAF5DFDCF5
                DEDCF5DCDAF4DBD9F4D9D6F5D8D7F5D6D6F5D8D6F6D6D6F6DBD7F5DCD8F5DDD9
                F6DBD7F7D7D4F7D9D3F4DAD6F5D9D5F5D9D5F5D8D5F6D9D7F6DBDAF6DDDBF6DD
                DBF7DAD9F9D7D6FAD6D3F7D8D4F6D7D4F5D7D2F5D7D1F6D6D3F6D6D4F6D6D4F6
                D8D6F7D7D4F8D4D1F9D2D0F7D5D1F7D5D3F6D6D3F6D6D5F6D8D5F6D9D7F5D9D8
                F6D7D5F7D3D2F9D0CFFBD0CFFBD3D2F9D4D2F7D2D1F8D2CFF8D2CFF8D5D1F7D7
                D4F6D9D4F8D4D2FAD0CFFCCFCEFCD2CFFAD3D3F8D6D3F7D6D3F7D4D2F7D4D2F8
                D3D1F8D1D2F9D0CFFACFCDFBCECDFBCFCEF9D1CEF9D2CFF8D2D0F9D0CFFACECD
                FBCECCFBD1CDFAD2CEF9D3CFF8D1D0F9D1CEFACECDFBCDCCFBCDCDF9CFCFF8CF
                D0F9D0CFF9CECEFACCCCFBCCCCFBCDCDFACFCFF9CFCEF9CFCEF9CFCDFACDCCFB
                CDCDFBCDCEFACFCEF9D0CEF9CECDF9CECBFBCCCBFBCDCDFBCECEFAD0CFF8CFD1
                F9D0CEFACECCFCCDCCFCCDCDFBCECDF9D0D0F9D1D0F8CFCFFACDCCFBCDCBFCCD
                CBFBCECDFACFCDF8D0CDF8CFCCF9CDCBFBCCCBFBCDCBFBCCCCF9CDCCF9CDCCF9
                CDCBF9CDCBFACCCBFBCCCCFBCDCDFACFCCF9D0CDF8CDCDF9CCCCFACCCCFBCDCC
                FBD0CDF9D0CDF7D2CFF7D1D1F8D3D2F9D6D6FAD7D5FBD7D6FCD5D2F9D2CFF5D5
                D1F7D5D3F8D5D3F9D7D7FAD8D8FBD5D6FBD2D2F9D2D0F7D1CFF8D1D1F8D4D2F9
                D6D5FAD7D6FAD4D4FBD4D2FAD3D0F8D4D2F7D6D3F9D4D4FAD3D1F9D2CFF6D2CE
                F7CECBF7C9C8F8C6C4F8C2C1F8BEBFF8BEBDF8BEBDF8BDBBF8BCBAF7BEBAF8BF
                BDF8C2C1F8C5C4F7C3C2F7C0BFF6BDBBF8BBBAF9BBB9F8BEBBF8C2C0F8C6C3F9
                C6C4FAC6C5F9C7C6F9C8C6F9C5C3F9C1BEF8BDBBF8BBB7F9B8B6FAB9B8FABBBA
                F9BCBBF9BCBBF8BBBAF7B6B5F7B0B1F8ADACF8ABA9F9A8A9FAABACFAB0B1FABB
                B8F8BBBAFCB7B7FCB5B6FC9A9AFB9393FB8E8EFB9494FC6464636464639393FD
                9A9AFCA1A1FCC6C3F7D6D3F4D6D3F4D6D3F4D8D5F5DCD8F0DFDBF4DDDAF5DCDA
                F4D9D5F3D8D5F5DBD8F5DCDAF2E0DBF3DDDAF4DDDAF4DBD9F5D9D8F5D9D6F5DB
                DAF5DDD8F4DCD8F5DFDAF5DEDAF5DBD8F5DAD8F5D7D8F5D9D6F5D7D5F6D8D4F6
                D9D6F6DAD8F5DBD9F5DCDBF5DDDBF5DCD9F4DAD8F4D7D5F5D7D5F5D6D4F5D5D6
                F6D6D4F6DAD5F5DAD8F5DAD8F6D9D5F7D7D4F7D8D2F5D8D4F5D8D4F5D9D4F5D7
                D5F6D7D5F6D9D7F6DAD9F6DBD9F7D9D8F9D6D4FAD6D3F7D6D4F6D6D3F5D6D1F5
                D6D1F6D6D2F6D5D4F6D6D4F6D7D6F7D6D4F8D3D1F9D2D0F7D4D0F7D4D1F7D4D1
                F6D5D4F6D6D5F6D7D5F6D9D6F6D6D4F7D3D2F9D0CFFBD0CFFBD2D1F9D2D0F7D2
                CFF8D2CFF8D1CFF8D5D0F7D5D3F6D7D3F8D3D0FAD0CEFCCFCEFCD0CFFAD1D2F8
                D5D2F7D5D1F7D4D1F7D3D1F8D3D0F8D1D0F9D0CFFACFCDFBCECDFBCFCEF9D1CE
                F9D2CEF9D1CFF9D0CFFACECDFBCECCFBD1CDFAD2CEF9D3CFF9D1CFF9CFCEFACD
                CDFBCDCCFBCDCDF9CECFF8CFD0F9D0CFF9CECDFACCCCFBCCCCFBCDCDFACFCEF9
                CFCEF9CFCEF9CFCDFACDCCFBCCCCFBCDCEFACFCDF9D0CEF9CECDF9CDCBFBCCCB
                FBCDCCFBCECEFACECEF9CED1F9D0CEFACECCFCCCCCFCCDCDFBCECDF9CFCFF9D0
                CFF9CECEFACDCCFBCCCBFCCDCBFBCECCFACFCDF9CFCCF9CECBF9CDCBFBCCCAFB
                CCCBFBCCCCF9CDCCF9CDCBF9CDCBF9CCCBFACCCBFBCCCCFBCDCDFACFCCF9D0CD
                F8CDCDF9CCCBFACCCCFBCDCCFBCECCF9D0CDF7D1CFF7D1D0F8D2D2F9D5D5FAD6
                D5FBD6D6FCD4D2F9D2CFF5D5D0F7D5D3F8D5D3F9D6D6FAD8D8FBD5D6FBD2D1F9
                D2D0F8D1CFF8D1D1F8D4D2F9D5D4FAD7D5FAD4D4FBD3D2FAD3D0F8D4D2F7D6D3
                F9D4D3FAD3D1F9D2CFF6D2CDF7CDCBF7C9C8F8C6C4F8C2C1F8BFBFF8BEBDF8BE
                BDF8BDBBF8BCBAF7BEBBF8BFBDF8C2C0F8C5C3F7C3C2F7C0BFF6BDBBF8BBBAF9
                BBB9F8BEBBF8C2C0F8C6C3F9C6C4FAC6C5F9C7C6F9C8C6F9C5C3F9C1BEF8BEBB
                F8BBB7F9B8B7FAB9B8FABBBAF9BBBBF9BCBBF8BBB9F7B6B5F7B0B1F8ADADF8AB
                A9F9A8A9FAABACFAB0B1FABBB8F8BBBAFCB7B7FCB5B6FC9A9AFB9393FB8E8EFB
                9494FC646463646463D6D4F2D8D6F3DAD8F4DDDAF5DEDCF7DEDCF7DEDCF7DEDC
                F7DBD6F1DDDBF6DEDCF7D9D5F0DDDBF6DEDCF7DBD6F1DDDBF6DEDCF7D9D5F0DE
                DCF7DCD9F4DEDCF7DEDCF7DBD6F1DDDBF6DEDCF7D9D5F0DEDCF7DEDCF7DCD9F4
                DEDCF7DEDCF7DBD6F1DDDBF6DEDCF7DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DCD9
                F6DCDAF7DCDAF7DCDAF7DCDAF7DBD9F7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DE
                DCF7DDDBF7DCDAF7DCDAF7DCD9F6DCDAF7DBD9F7DBD9F7DAD7F4DDDBF7DDDBF7
                DCDAF7DCDAF7DEDCF7DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DCD9F6DCDAF7DCDA
                F7DCDAF7D8D3EFDCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DEDCF7DDDBF7DD
                DBF7DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DCD9F6DCDAF7DCDAF7DCDAF7D8D3EF
                DCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDC
                F7DDDBF7DCDAF7DCDAF7DBD7F4DAD5F2DCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DE
                DCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DBD7F4DAD5F2
                DCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDC
                F7DEDCF7DEDCF7DCD8F4DCDAF7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DEDCF7DD
                DBF7DDDBF7DEDCF7DEDCF7DEDCF7DEDCF7DCD8F4DCDAF7DAD8F8DAD8F7DBD9F7
                DEDCF7DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDCF7DEDCF7DEDCF7DCD8F4DCDA
                F7DAD8F8DAD8F7DBD9F7DEDCF7DEDCF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1
                DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2DFDDF5DDDBF7DDDBF7DCD8F4DEDCF5
                E4E0F0E0DEF4E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6
                F1E8E2EFE1DEF6DFDCF6E5DFEEE4DFF1E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2ED
                E8EFEFEBF2EEEAF2E9E6F3E5E1F3E0DDF6DFDDF6E5E1F2EAE6F1E9E1E9E7E3F0
                E6E3F4E6E2F4EAE6F3EDE9F1EFE9EFF0ECF2ECE9F4E6E1EFE1DEF3DFDBF2E5E1
                F2EDE9F3EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F0ECF5EA
                E2EAE7E3F0E6E3F4E9E5F4EFEAF2F0EBF2EFEBF2EEEAF2EEE9F1ECE8F1E4E2F5
                DFDDF7DEDBF5DCD9F5DAD7F4DAD7F4646463696967E2D4CFE3D6CFE4D7D0ECE0
                DAF1E8E3F0E6E0F0E5DFF0E6E0EBDDD7EEE2DDEEE3DDF0E6E0F0E6E0F0E6E0EF
                E4DEEDE1DBEDE3DDEEE3DDEFE3DDF0E6E0F0E6E0ECE0DAECE2DCEDE0DAEFE5DF
                F0E6E0EEE4DEEEE3DDF0E6E0ECDED8EFE5DFF0E6E0F0E6E0F0E6E0EDE3DDEDE0
                DAEFE5DFEEE3DDECE2DCEDE0DAEFE5DFF0E6E0F0E6E0EDE1DBEFE5DFF0E6E0EF
                E5DFF0E6E0F0E6E0F0E6E0F0E6E0EFE4DEEDE1DBEDE3DDEEE3DDF0E6E0F0E6E0
                F0E6E0ECE0DAECE2DCEDE0DAEFE5DFF0E6E0F0E6E0ECE0DAECE2DCEDE0DAEFE5
                DFF0E6E0F0E6E0F0E6E0EDE3DDEDE0DAEFE5DFF0E6E0F0E6E0F0E6E0EDE3DDED
                E0DAEFE5DFF0E6E0F0E6E0F0E6E0EFE5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0
                F0E5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E5DFF0E6E0F0E6E0F0E6E0F0E6
                E0F0E6E0F0E5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E5DFF0E6E0F0E6E0F0
                E6E0F0E6E0F0E6E0F0E5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E5DFF0E6E0
                F0E6E0F0E6E0F0E6E0F0E6E0F0E5DFF0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6
                E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0E6E0F0
                E6E0F0E6E0EFE5DFEFE5DEEFE5DEEFE5DFEFE5DEEFE5DFEFE5DEEFE5DEEFE5DE
                EFE5DEEFE5DEEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE4DDEFE5DEEFE5DEEFE5
                DEEEE4DDEFE5DEEFE4DDEFE5DEEFE5DEEFE5DEEEE4DDEFE5DEEFE4DDEFE5DEEF
                E5DEEFE5DEEEE4DDEFE5DEEFE4DDEFE5DEEFE5DEEFE5DEEEE4DDEEE4DDEEE3DC
                EEE4DDEEE3DCEEE4DDEEE3DCEDE1DAEDE2DBEEE4DDEFE4DDEFE5DEEFE5DEEFE5
                DEEEE4DDEEE4DDEEE3DCEEE4DDEEE3DCEFE5DEF1E8E2F3ECE6F2E9E3F1E7E1F1
                E8E2F2EAE4F3EBE5F0E6DFF1E8E2F3ECE6F2E9E3F1E7E1F1E8E2F2EAE4F3EBE5
                F0E6DFF1E8E2F3ECE6F2E9E3F1E7E1F1E8E2F2EAE4F3EBE5F0E6DFF1E8E2F3EC
                E6F2E9E3F1E7E1F1E8E2F2EAE4F3EBE5F0E6DFF1E8E2F3ECE6F2E9E3F1E7E1F0
                E7E1F2E9E3F3EBE5F0E6DFF1E8E2F3ECE6F2E9E3F1E7E1F0E7E1F2E9E3F3EBE5
                F0E6DFF1E8E2F3EBE5F1E7E1F0E6E0E7D9D2E5D8D1E4D7D0E5D7D1696967D9D9
                D9F8F4F3F8F5F3F8F5F3FAF7F6FBF9F8FBF9F7FBF9F7FBF9F7FBF9F7F9F7F5FB
                F9F7FBF9F7FCFAF9FCFAF9FCFAF9FAF5F4FBF9F8FCFAF9FCFBF9FCFBFAFCFBFA
                F7F4F3FAF7F6FCFBFAFDFBFAFBF9F8FCFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFB
                FAFDFBFAFDFBFAFCFAFAFDFBFBFDFBFAFDFBFBFDFBFBFDFBFAFCF9F9FDFBFAFD
                FBFAFBF8F8FDFAFAFDFCFBFDFCFBFBF8F7FDFCFBFDFCFBFDFCFBFDFBFBFDFCFB
                FDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFCFBFAFCFAF9FBF8F7FDFCFBFCFAF9FBF9
                F7FCFAF9FCFAF9FCFAF9FBF9F7FCFAF9FCFBFAF9F6F5FDFBFAFCFAF9FDFBFBFD
                FBFBFDFBFAFCF9F9FDFBFAFDFBFAFBF8F8FDFAFAFDFCFAF9F6F4FBF9F7FBF9F7
                FBF9F7FBF9F8FCFAF9FCF9F9FDFBFAFDFBFAFBF8F8FDFAFAFDFCFAFAF7F5FBF8
                F7FBF9F7FBF9F7FBF9F7FCFAF9FDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFD
                FCFAFBF8F7FBF9F8FCFAF9FCF9F8FCF9F8FCFAF8FCFAF8FCFAF8FDFBFAFDFCFB
                FDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBF9FCFAF8FCFAF8FEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCFBF9FCFAF9FBF9F7FBF9F7FBF9F7FC
                FAF8FDFCFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFBFCFAF9FCFAF8FCFAF9
                FDFBFAFDFCFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFDFC
                FBFEFDFCFCFAF9FDFBFAFCFAF9FEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFDFCFCFE
                FDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFCFBFEFCFCFDFBFBFAF6F6FEFDFC
                FEFDFDFDFCFBFDFCFCFDFBFBFDFBFBFEFDFDFEFDFDFEFDFCFDFCFBFEFDFCFEFD
                FCFCFBFAFCFBFAFDFCFCFEFDFDFCFBFBF9F8F7FAF9F8FBFAF9FDFCFBFEFCFBFC
                FAF9FCFBF9FEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFCFC
                FDFCFCFEFDFDFEFDFDFDFCFCFEFDFCFEFDFCFDFCFBF9F7F6FCFAF9FBF9F8FDFB
                FAFEFCFCFEFDFDFEFDFDFEFDFCFEFDFCFDFCFBFBF9F7FCF9F8FCFBF9FEFDFDFE
                FDFDFEFDFDFEFDFDFCFBFBFDFAF9FBF8F6FAF7F5FAF7F5FBF8F6FAF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6FBF8F6F9F5F4F8F5
                F3F8F5F3F8F5F3D9D9D96969678080FD8787FD8E8EFDB3B1F8D4D1F4D4D1F4D4
                D1F4D4D1F5D7D3F5D5D1F2CFCCF3CFCCF5CBC9F5D0CBF5D3CFF4D5D0F2D3D0F4
                D1CDF5CDCBF5CCCAF5CECBF5CDCBF5CECCF4D0CCF2D3CDF2D2CEF5D2CFF6D0CD
                F6CDCCF5CBC9F4CBCAF6CBC9F5CBCAF6CDCBF5CECBF4D0CFF4D1CFF4D2CEF6CF
                CDF6CDCAF5CBC8F4CCCAF5CCCAF5CAC9F4CBC7F4CCC8F4D0CBF3D0CAF4CCCAF6
                CAC9F7CAC6F5CBC8F4CCC9F5CCC9F5CBCAF5CCC8F4CCCAF4CFCDF5D0CDF6CDCA
                F8C9C7F8C8C5F7C9C6F5C9C6F5CAC5F5C9C5F5C9C6F5C9C6F5C9C7F5CBC7F6C9
                C7F8C7C4F9C6C2F8C7C4F7C8C7F6C9C7F5C9C8F5C8C8F4CAC8F4CBCAF5C9C8F5
                C6C5F8C3C1FAC1C1FAC4C3F8C6C4F8C5C4F8C3C3F9C5C3F8C7C5F8C9C6F7C9C6
                F6C7C3F9C2C0FBC0C0FBC3C2F9C8C4F7C9C6F5C8C6F6C7C5F7C5C4F8C6C4F9C6
                C3F9C4C3FAC2C1FBC1C0FAC2C1F9C5C2F7C6C4F7C5C3F8C4C2F9C1BFFAC1C0FA
                C2C2F9C4C3F8C6C4F8C7C3F8C3C1F9C1BFFAC1BFFBC2C0F9C3C2F8C3C4F8C3C2
                F9C2C1F9C0C0FAC0C0FAC1C1F9C3C2F9C5C2F9C4C1F9C2C0F9C0C0FAC0C0FAC1
                C1F9C2C2F8C4C2F9C2C0FAC0BFFBBFBFFBC0C0FAC1C2F9C2C3F8C3C3F8C2C2FA
                C0BFFBBFBDFBBFBEFAC2C1F9C4C4F8C5C3F8C2C2FAC0BFFBBFBEFBBFBDFBC1C0
                F9C2C0F8C2C1F7C2BFF8C0BDF9BFBCFABFBDFAC1BFF9C2C0F7C2C0F8C1BFF8C0
                BEF9BFBEFABFBFFAC1BFF9C2C0F8C2C0F8C1BFF8BFBEF9BDBDFABEBEFAC1BFF8
                C4C1F7C4C1F6C5C3F5C6C5F7CCCAF8CECBF9C8C6FAC4C2F8C5C2F5C5C2F6C6C3
                F5C7C4F6CDCCF8CCCCF9C8C6FAC4C2F8C4C2F5C4C3F7C4C2F7C7C5F7CCC9F8CC
                C9F9C7C6FBC3C3F8C6C4F6C7C5F7C9C6F8C6C5FAC4C2F8C6C2F7C4C0F6C0BDF5
                BBBAF7B8B7F7B5B3F7B3B3F8B1B1F8B2B1F8B1AEF8B0ADF8B1ADF8B2AFF8B6B3
                F7B8B6F7B8B5F7B5B2F7B1B0F8AFAFF9B1AEF8B3B1F8B5B4F9B9B8F9BBBBF9BC
                BBF9BCBBF9BBBAF8B8B7F8B5B3F8B1AFF8AFADF9ADAAF9ADABFAAFAEF9B0B0F9
                B1AFF8AEADF8AAAAF8A8A6F9A5A3F9A3A2F9A0A0FAA0A1FAA4A3F9ACAAF7AFAF
                FBB0B0FCAFB0FC8A8BFC8383FC7D7DFC7E7EFC6969676969678080FD8787FD8E
                8EFDB3B1F8D4D1F4D4D1F4D4D1F4D4D1F5D7D3F5D5D1F2CFCCF3CFCCF5CBC9F5
                D0CBF5D3CFF4D5D0F2D3D0F4D1CDF5CDCBF5CCC9F5CEC9F5CBC9F5CCC9F4CCCA
                F4CECAF4CECBF5CFCCF6CDCAF6CCCAF6CAC8F6CAC8F5CAC9F6CAC8F6CBC8F5CC
                C9F5CECCF5CFCDF5CECCF6CECBF6CCCAF5CAC8F5CBC9F5CAC8F5C9C7F5CAC7F4
                CBC7F4CEC8F3CECAF4CBC8F6CAC7F6C9C6F5CBC7F4CBC7F5CBC7F5CAC9F5CBC8
                F4CCC9F4CDCAF5CDCBF7CBC9F8C9C7F8C8C6F7C8C6F5C9C5F5C9C5F5C9C5F5C8
                C6F5C9C6F5C9C7F5C9C7F7C8C6F8C7C4F9C6C4F8C7C4F7C7C5F6C8C6F5C7C7F5
                C8C7F4C9C8F4C9C8F5C8C7F6C6C4F8C3C2FAC2C2FAC4C3F9C6C4F8C5C4F8C4C3
                F9C5C3F8C7C4F8C8C5F7C8C6F7C6C3F9C3C1FBC2C0FBC4C2F9C5C4F8C7C4F6C8
                C5F7C6C4F7C6C4F8C5C3F9C5C3F9C3C3FAC2C1FBC1C0FAC2C1F9C5C2F8C5C4F7
                C4C3F8C3C2F9C2C0FAC1C0FAC2C1F9C4C3F9C6C4F8C5C3F9C3C1F9C1BFFAC1BF
                FAC2C0F9C3C2F9C3C4F8C3C2F9C2C1F9C0C0FAC0C0FAC1C1F9C3C2F9C5C2F9C4
                C1F9C2C0F9C0C0FAC0C0FAC1C1F9C2C1F8C3C1F9C2C0FAC1C0FBBFC0FBC0C1FA
                C1C2F9C2C3F9C3C3F9C2C2FAC0BFFBC0BEFBC1BFFAC2C1F9C3C3F8C4C3F9C2C2
                FAC0C0FBC0BEFBC0BDFBC1BFF9C2C0F8C2C1F8C1BFF8C0BEF9C0BEFABFBEFAC0
                BFF9C1C0F7C2C0F8C1BFF8C0BEF9BFBEFAC0BFFAC1BFF9C2C0F8C2C0F8C1BFF8
                BFBEF9BEBDFABFBEFAC1BFF8C4C0F7C4C1F7C5C3F6C6C5F7CBC9F8CCC9F9C8C6
                FAC5C3F8C5C2F7C4C2F6C6C3F5C7C4F6CCCBF8CBCBF9C8C6FAC5C3F8C4C2F6C4
                C2F7C4C2F7C6C5F8CBC8F8CBC8F9C7C6FBC3C3F8C6C4F6C7C5F7C8C5F8C5C5FA
                C4C2F8C5C2F7C4C0F6C0BDF5BCBAF7B8B7F7B6B3F8B4B3F8B2B3F8B2B1F8B1AF
                F8B1AEF8B2AEF8B2B0F8B6B4F8B8B6F7B8B5F7B5B2F7B2B0F8B1AFF9B1AFF8B3
                B1F8B6B5F9B9B8F9BBBAF9BBBAF9BBBBF9BBBAF8B8B7F8B5B4F8B1B1F8B0AEF9
                AEAAF9ADACFAAFAEF9B0B0F9B1AFF8AEADF8AAABF8A8A6F9A5A4F9A3A3F9A1A1
                FAA0A1FAA4A3F9ACAAF8AFAFFBB0B0FCAFB0FC8A8BFC8383FC7D7DFC7E7EFC69
                6967696967D0CEF0D2D0F1D4D2F2DFDCF2E5E1F4E1DEF6E0DDF6E0DDF6E0DDF6
                DEDBF3DEDAF2E0DDF6E0DDF6E0DDF6E0DDF6DEDBF3DEDAF2DFDCF4DEDAF2E0DD
                F6E0DDF6E0DDF6E0DDF6DEDBF3DEDAF2DFDCF4DFDBF3DFDCF5E0DDF6DED9F1DF
                DBF4E0DDF6DFDCF4DFDCF5E0DDF6E0DDF6DFDDF6DEDCF7DBD6F1DDDBF6DEDCF7
                DEDCF7DEDCF7DDDBF7DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDD
                F6DEDCF7DBD6F1DDDBF6DDDBF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DF
                DCF6DFDCF5E0DDF6E0DDF6DFDDF6DEDCF7DBD6F1DDDBF6DDDBF7DDDBF7DDDBF7
                DCDAF7DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDDF6DFDDF6E0DD
                F6E0DDF6DFDDF6DEDCF7DBD6F1DDDBF6DDDBF7DDDBF7DDDBF7DCDAF7DCDAF7DC
                DAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6
                DEDCF7DBD6F1DDDBF6DCDAF7DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DD
                F6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6DEDCF7DBD6F1DDDBF6DCDAF7DCDAF7DC
                DAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6
                E0DDF6DDDBF6DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0DDF6E0DDF6DFDDF6DFDD
                F6E0DDF6E0DDF6DFDDF6E0DDF6DDDBF6DCDAF7DCDAF7DDDAF6DEDBF5DFDCF5E0
                DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6E0DDF6DDDBF6DCDAF7DCDAF7
                DDDAF6DEDBF5DFDCF5DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3
                F3E8E4F2E9E1E9E7E3F0E6E3F4E3E0F4DEDCF7DEDCF7DEDCF7DFDCF6E5DFEEE4
                DFF1E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2E9E6F3E5E1F3
                E0DDF6DFDDF6E5E1F2EAE6F1E9E1E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9
                EFF0ECF2ECE9F4E6E1EFE1DEF3DFDBF2E5E1F2EDE9F3EBE4EDEBE5F0EBE7F2ED
                E9F1EEEAF0EFEAF0EFE8EFF1EEF4F0ECF5EAE2EAE7E3F0E6E3F4E9E5F4EFEAF2
                F0EBF2EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F2EFF6EBE5EDEBE5
                F0EBE7F2EDE9F0EEE9EEF4F0F5F1ECF1F0EDF2ECE4EAF2EDF2EEE9F5E3E0F6D8
                D6F3D6D4F2D4D2F2D4D1F26969676E6D6CDED1CCE0D2CDE1D4CEEAE0DAF4ECE7
                F4ECE7F3E9E4F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7
                E1F1E7E1F0E6E0EFE5DFF1E7E1F0E6E0F0E5DFEFE5DFEFE5DFF1E7E1F1E7E1F1
                E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F0E6E0F0E6E0EFE5DFF1E7E1
                F0E6E0EFE5DFEFE5DFF1E7E1F1E7E1F1E7E1F0E5DFF1E7E1F1E7E1F0E5DFF1E7
                E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F0
                E5DFEFE5DFEFE5DFF1E7E1F1E7E1F1E7E1F0E5DFEFE5DFEFE5DFF1E7E1F1E7E1
                F1E7E1F0E6E0F0E6E0EFE5DFF1E7E1F1E7E1F0E6E0F0E6E0F0E6E0F0E6E0F1E7
                E1F1E7E1F1E7E1F1E7E1F0E5DFF1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1
                E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1
                F0E6E0F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F1E7
                E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1
                E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1
                F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7
                E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1
                E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F0E6E0F1E7E1
                F1E7E1F1E7E1F0E6E0F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F1E7
                E1F1E7E1F0E6E0F1E7E1F1E7E1F1E7E1F0E6E0F1E7E1F0E6E0F1E7E1F1E7E1F1
                E7E1F0E6E0F1E7E1F1E6E0F1E7E0F0E5DFF1E7E1F1E7E1F1E7E1F0E6E0F1E7E1
                F0E6E0F1E7E0F0E5DFF1E7E1F1E7E1F1E8E2F2E8E2F1E8E2F1E7E1F0E6E0F2E8
                E3F4EBE6F2E8E3F1E8E2F2E8E2F1E8E2F1E7E1F0E6E0F2E8E3F4EBE6F2E8E3F1
                E8E2F2E8E2F1E8E2F1E7E1F0E6E0F2E8E3F4EBE6F2E8E3F1E8E2F2E8E2F1E8E2
                F1E7E1F0E6E0F2E8E3F4EBE6F2E8E3F1E8E2F2E8E2F1E8E2F1E7E1F1E7E1F2E8
                E3F4EBE6F2E8E3F1E8E2F2E8E2F1E8E2F1E7E1F1E7E1F2E8E3F4EBE6F2E8E3F1
                E8E2F2E8E2F1E7E1F1E7E1E3D6D0E2D4CFE1D3CEDFD2CD6E6D6CDBDADAF7F3F2
                F7F4F2F7F4F3FAF7F6FCFAF9FCFAF9FCFAF8FCF9F8FCF9F8FAF8F7FCFAF8FBF9
                F7FCFAF8FCFAFAFCFBFAFBF9F8FCFAF9FCFBFAFCFBFAFBFAF9FBF9F8FAF8F7FB
                FAF9FCFBFAFBF8F7FAF8F7FCFBFAFBF9F8FCFAF9FDFBFAFDFBFAFDFBFBFDFBFB
                FDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFAFDFBFBFDFBFBFDFB
                FBFDFBFBFDFCFBFDFBFBFCFAFAFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFBF9F8FDFAF8FDFBFA
                FBF8F8FDFAFAFCFBFAFDFBFAFCFAF9FDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFB
                FBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFAFBF8F7FBF9F7FBF9F7FBF9F7FC
                FAF9FDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFAFBF8F7FBF9F8FBF9F8
                FBF9F8FBF9F8FCFAFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFBFAFBF9
                F8FBF9F8FCFAF8FCFAF8FCFAF8FCFBF9FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBFAFEFDFCFEFDFCFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFDFCFAFBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F8FCFAFAFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFEFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFBF8F8FDFCFB
                FBFAF8FDFBFAFBF7F6FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFBFAFAFBFA
                FAFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFCFEFDFCFEFDFCFD
                FBFBFEFCFCFDFCFCFEFDFDFEFDFDFEFDFCFEFDFCFCFAFAFEFDFDFEFDFDFEFCFC
                FEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFDFB
                FBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFCFEFDFDFDFCFCFEFCFCFEFCFCFE
                FDFDFEFDFDFEFDFCFEFDFCFEFDFCFCFBFAFAF8F8FBFAF9FBF9F7FCFAF9FDFCFB
                FDFBFAFEFDFCFEFDFCFEFDFCFDFBF9FCF9F8FAF6F6FDFBFBFEFDFDFEFDFDFEFD
                FDFEFDFDFDFBFAFBF9F8FAF7F5FAF7F6FAF6F6FDFBFAFDF9F9FCF9F8FBF8F6FB
                F8F6FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF8F6F8F5F3F8F4F3F7F4F3
                F7F4F2DBDADA6E6D6C6E6EFD7575FD7C7DFDA8A7F9D1CFF4D2CFF4D2CFF4D2CF
                F4CFCCF5C4BFF3BAB6F7B4B3F7B8B5F7C0BEF7C3C0F5C3C0F5BEBAF5BAB7F7B8
                B6F7B9B6F5BAB6F2B8B6F5B5B1F4B5B0F3B6B1F4B6B4F6B8B7F8B7B6F8B6B5F8
                B8B5F7B9B5F5B8B6F6B3B3F6B3AEF6B6B0F4B6B4F5B7B6F6B8B8F8B9B6F8B8B5
                F7B8B7F6B9B6F4B9B6F5B7B5F5B7B4F4B8B3F4B9B3F5B9B5F5B9B6F7B7B5F7B6
                B6F7B9B6F6B9B7F4B9B5F5B7B4F5B6B2F5B7B2F5BAB6F5BBB8F7BAB9F8B8B6F8
                B7B6F8B8B6F7BAB7F6BAB7F5B9B5F5B8B5F5B8B6F5BAB7F6BAB8F7B9B7F8B8B6
                F9B8B6F9B9B7F8B9B7F6B9B7F5B7B7F4B7B4F3B8B4F4B9B6F5B8B6F6B6B6F8B5
                B5FAB4B4F9B6B4F9B7B6F9B6B7F9B6B6F9B8B5F9B7B5F8B8B7F7B9B7F7B6B5F9
                B3B3FAB4B2FBB5B3FAB7B5F7B9B6F6B9B6F6B7B6F8B7B4F9B7B5FAB7B5FAB6B5
                FAB4B4FAB2B3FAB5B4F9B7B5F8B8B5F8B6B5F8B6B4F9B4B3FAB4B3FAB4B4F9B6
                B5F9B7B6F8B7B6F8B5B3F8B3B3FAB3B1FAB5B3F9B6B5F9B7B5F9B6B5F9B4B4F9
                B4B4FAB4B4FAB4B5F9B6B5F9B7B5F9B6B3F9B4B2F9B4B3FAB3B4FAB4B4F9B5B3
                F9B5B5F9B5B4FAB4B3FBB3B4FBB4B4FAB5B4FAB5B6F9B6B5F9B6B3FAB5B2FBB3
                B0FBB4B3FAB5B3F9B7B5F8B6B6F9B5B5FAB3B2FBB2B2FBB3B1FAB4B3F9B5B3F8
                B4B3F8B3B2F8B3B0F8B2B1F9B3B2F9B4B2F9B5B3F8B5B3F8B4B2F8B2B1F8B2B2
                F9B2B2F9B4B3F9B5B2F8B6B2F8B5B1F7B2B0F8B2B1F9B2B0FAB3B1F8B5B3F7B6
                B2F7B6B3F6B8B6F5BCBAF6BDBBF8B6B6FAB4B1F9B5B1F5B2B0F8B2AFF6B6B4F6
                BBBBF7BCBAF6B8B5FAB3B4F8B5B3F6B5B2F7B3B2F7B6B6F7BCBBF7BCB9F8B6B4
                FAB4B1F8B5B3F6B7B5F7B8B8F6B4B5F9B3B2F9B5B2F7B4B1F7B1AEF7AFACF7AD
                ACF7AAAAF8A9A8F8A8A8F9A8A7F9A8A6F9A8A6F9A8A5F9A8A7F9AAA8F8ACAAF8
                ACAAF8AAA9F8A8A8F8A6A8F9A8A7F9AAA8F9ABAAFAADACFAAFAEF9B0AFF9B0AF
                F9AFAEF8ACACF8AAA9F9A8A6F9A5A5F9A2A3F9A3A3FAA4A3F9A5A4F9A5A4F9A4
                A3F9A2A1F9A1A0FA9F9FFA9E9DFA9B9AFA9899FA9C9CF9A2A1F8A8A7F9A9A9FA
                ACACFC7B7AFC7373FC6D6DFC6767FC6E6D6C6E6D6C6E6EFD7575FD7C7DFDA8A7
                F9D1CFF4D2CFF4D2CFF4D2CFF4CFCCF5C4BFF3BAB6F7B4B3F7B8B5F7C0BEF7C3
                C0F5C3BFF5BEBAF5BAB7F7BAB7F6B9B6F6BAB6F4B9B6F4B7B4F4B7B4F4B8B4F5
                B8B6F6BAB8F8B9B8F8B8B7F8B9B8F7B9B7F6B8B6F6B5B3F5B5B2F5B8B3F4B7B6
                F5B9B8F6B9B8F8B9B9F8BAB7F7B8B7F6B9B7F4B9B7F5B8B6F4B7B4F4B8B4F4BA
                B4F5BAB6F6B9B6F7B7B7F7B7B7F7B9B6F6BAB7F5BAB6F5B8B6F5B7B4F5B9B5F5
                BBB6F6BBB8F7BAB9F8BAB7F8B8B7F8B9B6F7BAB7F6BAB7F5BAB6F5BAB6F5BAB7
                F5BAB7F6BAB8F7B9B8F8B9B7F9B9B7F9B9B7F8BAB8F6B9B8F5B8B7F4B7B5F4B8
                B5F4B9B7F5B9B7F7B7B7F8B6B6F9B5B5F9B6B5F9B8B6F9B6B7F9B8B7F9B9B7F9
                B8B7F8B9B7F7B9B7F8B7B5F9B4B5FAB6B4FBB5B4F9B7B6F8B9B6F6B9B6F7B8B6
                F8B8B5F9B7B5FAB7B6FAB6B6FAB4B5FAB4B5FAB5B5F9B7B6F8B8B7F8B8B6F8B6
                B4F9B5B4FAB5B3FAB5B5F9B7B5F9B7B6F8B7B6F9B6B3F9B4B3FAB4B4FAB5B4F9
                B6B5F9B7B5F9B6B5F9B5B4F9B5B4FAB4B5FAB6B5F9B6B5F9B7B5F9B6B4F9B4B3
                F9B4B4FAB4B4FAB5B5F9B6B5F9B6B5F9B6B5FAB5B5FBB4B4FBB5B5FAB6B6FAB6
                B6F9B7B6F9B6B5FAB5B3FBB4B4FBB5B4FAB5B4F9B7B5F9B7B6F9B6B5FAB5B3FB
                B4B3FBB5B2FAB5B3F9B5B3F8B4B4F8B4B3F8B4B1F8B3B2F9B4B2F9B5B3F9B5B4
                F8B5B3F8B4B3F8B4B2F8B4B3F9B3B2F9B4B3F9B5B3F8B6B3F8B5B2F8B4B1F8B2
                B2F9B3B1F9B5B2F8B6B3F7B7B4F7B8B4F6B8B6F6BCB9F6BCBAF8B8B7FAB6B3F9
                B5B3F6B5B2F7B4B2F6B7B5F6BBBAF7BBBAF7B9B7F9B6B5F8B5B4F7B6B3F7B5B4
                F7B7B6F7BCB9F7BBB8F8B9B5F9B5B4F8B6B5F7B7B6F7B8B7F7B6B5F8B4B4F8B6
                B3F7B5B2F7B1AFF7B0AEF7ADACF7ABABF8AAAAF8A8A8F9A9A8F9A8A7F9A8A6F9
                A8A5F9A8A8F9AAA9F8ACAAF8ACAAF8ABA9F8A9A8F8A8A8F9A9A8F9AAA9F9ACAB
                FAAEADFAAFAEF9B0AFF9B0AFF9AFAEF8ADACF8AAAAF9A8A7F9A5A5F9A4A4F9A4
                A4FAA5A3F9A5A4F9A5A4F9A4A3F9A2A2F9A1A0FAA09FFA9E9DFA9B9BFA9A9AFA
                9C9DF9A2A1F8A8A7F9A9A9FAACACFC7B7AFC7373FC6D6DFC6767FC6E6D6C6E6D
                6CCAC8EECCCAEFCECCF0DDDAF1ECE8F1ECE8F1E8E5F3E7E3F4E7E4F4E5E1EFE3
                DCEDE3E0F2E6E3F4E7E3F4E7E4F4E5E1EFE3DEEFE5E1EFE3DCEDE3E0F2E6E3F4
                E7E3F4E7E4F4E5E1EFE3DEEFE4DFEDE2DDF1E2DDF0E3E0F2E6E3F4E7E3F4E6E3
                F4E5E1EFE3DEEFE4DFEEE1DEF3DFDBF2DFDBF4E0DDF6DFDCF4DFDCF5E1DEF6E1
                DFF6E1DFF6DFDDF6DBD6F1DFDDF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2DFDBF4
                E0DDF6DEDBF5DDDBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E2DD
                F1E4DFEEE1DEF3DFDBF2DFDBF4E0DDF6DEDBF5DDDBF6DDDAF7DCDAF7DCDAF7DD
                DBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3
                DFDBF2DFDBF4DFDCF6DDDBF5DDDBF6DDDAF7DCDAF7DCDAF7DDDBF7DCD8F4DEDC
                F5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2DFDBF4E0
                DDF6DEDBF5DCDAF7DDDBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2
                E1DDF2E4DFEEE1DEF3DFDBF2DFDBF4E0DDF6DEDBF5DCDAF7DDDBF7DCD8F4DEDC
                F5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2DFDDF5DD
                DBF7DDDBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEE
                E1DEF3DFDBF2DFDDF5DDDBF7DDDBF7DCD8F4DEDCF5E4E0F0E3DEEFE4DFEEE1DE
                F3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2DFDDF5DDDBF7DDDBF7DCD8F4DEDCF5E4
                E0F0E0DEF4E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1
                EBE4EDEBE5F0EBE7F2E6E2F2DFDDF6E0DDF6E0DDF6DFDDF6E5E1F2EAE6F1E9E1
                E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2ECE9F4E6E1EFE1DEF3DF
                DBF2E5E1F2EDE9F3EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4
                F0ECF5EAE2EAE7E3F0E6E3F4E9E5F4EFEAF2F0EBF2EFEBF2EEEAF2EEE9F1EFEB
                F0F1EDF2F0ECF1F4F0F4F2EFF6EBE5EDEBE5F0EBE7F2EDE9F0EEE9EEF4F0F5F1
                ECF1F0EDF2ECE4EAF2EDF2F5F0F4F5F1F5F4F2F5F3EEF3F0EBF2EFEBF2EEEAF2
                EEE9F1F1EEF2F6F3F7F7F5F8F7F5F9F7F5F8F8F5F8F5F3F9E7E5F7D2D0F1D0CE
                F0CECCEFCCCAEF6E6D6C737271DBCECADCCFCBDED0CCE9DED9F4ECE8F4ECE8F4
                EBE6F1E7E1EFE4DEF1E8E2F0E7E1F0E5E0EFE6E0EFE5DFF1E8E2F0E7E1F0E5E0
                EEE3DEEEE2DCEFE5DFF0E7E1F1E8E2EEE3DEEEE2DCF1E8E2EFE5DFEFE4DFEEE2
                DDEFE4DEEEE3DDF1E8E2F1E8E2F1E8E2F1E8E2EFE4DFF0E5DFF1E8E2F1E8E2EE
                E3DEEEE2DCF1E8E2F1E8E2F1E8E2F1E7E1F0E6E0F1E8E2F0E6E0F1E8E2F1E7E1
                F0E7E1EFE5DFF1E8E2F0E7E1EFE4DFEEE2DDEFE4DEEDE1DBF0E7E1F1E8E2EEE3
                DEEEE2DCF1E8E2F1E8E2F1E8E2F1E8E2EEE3DEEEE2DCF1E8E2F1E8E2F1E8E2F1
                E8E2EFE4DFF0E5DFF1E8E2F1E8E2F1E7E1F0E7E1F0E7E1F0E5DFF1E8E2F1E8E2
                F1E8E2F1E8E2F0E7E1F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8
                E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2
                F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8
                E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2
                F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8
                E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F0E7E1F1E8E2F1E8E2F1E8E2
                F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F0E7
                E1F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F0E7E1F1E8E2F3EAE6
                F4ECE7F1E8E2F1E8E2F1E8E2F1E8E2F0E7E1F1E8E2F3EAE6F4ECE7F1E8E2F1E8
                E2F1E8E2F1E8E2F0E7E1F1E8E2F3EAE6F4ECE7F1E8E2F1E8E2F1E8E2F1E8E2F1
                E8E2F1E8E2F3EAE6F4ECE7F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F3EAE6
                F4ECE7F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F1E8E2F3EAE6F4ECE7F1E8E2F1E8
                E2F1E8E2F1E8E2E0D3CDDFD1CCDDD0CBDCCFCB737271DCDCDBF6F3F2F6F3F2F7
                F3F2F9F7F5FCFAF9FCFAF9FCFAF9FCFAF9FCFAF9FAF7F6FCF9F8FCFAF9FCFAF9
                FCFBFAFCFBFAF9F7F6FBF9F8FCFBFAFCFBFAFBF9F9FBF7F7FBF7F6FCF9F8FBF9
                F8FAF5F5FDF9F8FBF9F8FAF5F5FDFAF9FDFBFAFBF8F8FDFAFAFDFCFBFDFCFBFD
                FBFAFDFBFAFDFCFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFBFAFDFBFAFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFCFBFAF9F6F5FDFBFAFCFAF9FDFBFBFDFBFBFDFBFAFC
                F9F9FDFBFAFDFBFAFBF9F9FDFBFBFDFBFAFDFCFBFDFBFBFDFBFBFDFBFBFDFBFB
                FDFBFBFDFBFBFDFCFBFDFCFBFDFBFAFBF9F8FBF9F8FBF9F8FBF9F8FCFAFAFDFB
                FBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFBFAFBF9F8FBF9F8FCF9F8FCF9F8FC
                F9F8FDFBFAFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFAFCF9F8FCF9F8
                FBF8F7FDFBFAFDFCFBFDFCFBFDFCFBFEFDFCFEFDFCFDFCFBFDFBFAFDFCFBFAF7
                F6FDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFEFDFCFEFDFCFE
                FDFCFDFCFBFDFBFAFEFCFBFCFBFAFBF9F8FBF9F8FBF9F8FBFAF9FDFBFAFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFC
                FCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFAF6F6FDFCFBFCFBFAFD
                FCFBFDFBFAFDFCFBFEFDFCFEFDFDFEFDFDFDFCFCFBFAFAFBFAF9FCFBFAFDFCFC
                FDFBFBFDFBFBFEFDFDFEFDFDFEFDFCFDFCFBFEFDFCFEFDFCFCFBFAF9F8F7FCF9
                F9FEFCFCFEFDFDFEFDFCFEFDFCFEFDFCF7F2F2FDFCFCFEFDFDFEFDFDFEFDFDFD
                FCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFCFCFDFCFCFEFDFD
                FEFDFDFDFCFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFDFCFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFCFCFEFDFCFEFDFDFDFBFAFBFAF9FCFBFAFAF7F7FB
                F9F9FDFCFCFDFBFBFCFAF9FCF9F8FDFAF9FDFCFCFEFDFDFEFDFDFDFCFCFEFDFC
                FDFCFBFCF9F7FBF8F7FAF7F5FCFBFAFEFDFDFEFDFDFEFDFCFCFAF9FCF9F8FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F7F8F5F3F7F3F2F6F3F2F6F3F2DC
                DCDB7373715C5CFD6262FD696AFD9C9BF8CDCAF4CFCBF4CECCF4CCC9F5C6C5F6
                B1B1F7A7A8FAA9A9F9ABABF9AEADF8ADABF7ABA9F7A9A7F7A7A6F8A7A5F9A7A6
                F7A9A5F6A6A4F4A29FF3A19BF2A39DF5A3A1F8A6A3F9A5A5FAA4A6F9A6A5F9A7
                A5F7A6A3F5A29EF4A09BF3A09CF4A4A0F6A3A3F8A6A5F9A5A6F9A6A6F9A8A7F8
                AAA6F6A8A5F5A5A5F4A3A1F2A3A0F2A4A1F5A6A2F7A7A5F8A7A6F9A8A5F9A8A8
                F8AAA8F6A9A6F5A6A1F4A4A0F3A4A2F4A7A3F6A9A7F8AAA9F9A9A9F9AAA9F9AA
                A9F8ACA9F7ACA8F6ABA7F5AAA7F5ABA7F4AAA8F6AAA8F8ABAAF9AAAAFAACABFA
                ADAAF9ACAAF7ABA8F5AAA6F3A5A5F2A6A6F4A8A6F6AAA9F8ABAAF9AAAAFAA9A9
                F9A8AAF9ABAAF9ABABFAABABFAACABFAACABF9ABA9F8ABA9F8ABA9F8A9A8FAA9
                A7FBAAA8FAACA7F8ABA8F7AAA8F6AAA8F8AAA9FAAAA9FAA9AAFAAAA8FAA9A9FA
                A8A9FAA9A9F9ABA9FAACABF9ACAAF9AAA8F9AAA7FAA9A9FAA9A9F9AAA8F9AAAA
                F9A9A8F9A9A7F9A8A8FAA8A7FAA9A9F9AAA9FAABAAFAABA9F9A9A7F9A9A8F9A9
                A9F9AAAAF9ABAAFAABA9FAA9A9F9AAA8F9A9A7F9AAA9F9AAAAF9AAA9F9AAA9FA
                ABAAFBAAABFBA9AAFBABABFAACABFAABAAFAACABFAABA9FBA9A9FBAAA9FBABA9
                FAABA9FAACA9FAACAAFAABAAFBAAA9FBA9A9FBA9A8FAAAA8F9AAA8F9AAA9FAAA
                A8F8AAA8F7A9A7F8A9A7F9AAA7F9ABA9F9ACAAF9ABA9F8AAA8F8A8A8F9A8A7F9
                A9A9F9AAA8F9ABA8F9AAA7F8AAA7F7A8A6F9A8A8F9A8A8F8AAA8F8AAA8F8ABA6
                F7ACA8F7AEABF7AEABF6AAA9F8A8A7F8A8A7F8A9A7FAA9A5F7A9A5F4ACAAF7AD
                A9F7ABA8F8A7A6F8A8A7F8A9A8F9A7A8F8A8A6F5ADAAF7ADAAF7ABA9F8A8A6F8
                A8A6F8A9A8F8ABAAF8AAA7F9A7A6F8A8A5F8A9A6F8A6A6F8A4A4F7A4A4F8A4A1
                F9A3A2F9A2A2FAA1A1FAA1A1FAA0A1FAA1A0FAA1A0FAA1A1F9A2A1F9A2A1F9A1
                A1F9A0A1F9A1A1F9A1A1FAA1A0FAA3A1FAA4A2FAA4A3F9A4A4F9A5A4F9A4A3F9
                A2A3F9A1A1FAA0A0FA9E9EFA9D9CFA9C9CFA9A9BF99B9AF99B9AF99B9AF99B9A
                FA9C9AFB9C9BFB9B9AFB9898FA9797F99898F99E9EF9A2A2F8A4A3F8A6A6FB6A
                6AFC6363FD5C5CFD5757FD7372717373715C5CFD6262FD696AFD9C9BF8CDCAF4
                CFCBF4CECCF4CCC9F5C6C5F6B1B1F7A7A8FAA9A9F9ABABF9AEADF8ADABF7ACA9
                F7A9A7F7A9A6F8A9A6F8A9A6F7A9A5F6A9A6F4A6A3F3A6A3F4A6A2F5A7A4F7A9
                A7F9A9A7FAA9A8F9A8A9F8AAA8F7A9A6F6A6A1F4A4A1F3A5A0F4A6A4F6A7A6F7
                A8A8F8A8A8F8AAA8F8AAA9F8ABA8F6A9A7F5A8A6F4A8A3F4A7A4F3A9A5F5A9A4
                F7AAA7F8A9A9F8AAA9F8AAA9F8ACA9F6ABA7F5A9A5F5A8A4F4A8A4F4AAA7F6AB
                A9F8ACABF9ACACF9ABABF9ACAAF8ADAAF7ADAAF6ABA9F5ABAAF5ACA9F5ACA9F6
                ABABF8ACACF9ACABFAADACFAAEACF9ADAAF7ACA9F5ABA8F4A9A7F3A9A8F4AAA9
                F6ACAAF8ACABF9ABAAF9AAAAF9ACAAF9ACABF9ACACFAADADFAADADFAADACF9AD
                ABF8ADACF8ACAAF9AAABFAABAAFAACA9FAADA9F8ACA9F7ACA9F7AAA8F8ACA9F9
                ABAAFAACABFAABAAFAAAAAFAA9ABFAABABF9ACABF9ADABF9ADABF9ACABF9ABA9
                FAABA9FAAAAAF9ACABF9ACAAF9AAA9F9ABA8F9AAA9FAA9A9FAABAAF9ABABFAAB
                ABFAABAAF9ABA9F9AAA9F9AAABF9ABABF9ABABFAACAAFAABAAF9ABA8F9AAA9F9
                AAAAF9ABAAF9ABABF9ABAAFAACABFBABACFBAAABFBACABFAACABFAADACFAADAC
                FAACABFBAAA9FBACAAFBABA9FAACABFAADABFAACACFAABABFBACABFBABA9FBAB
                A8FAABAAF9ACA9F9ABABF9ABAAF8ABA9F7AAA9F8AAA8F9AAA9F9ACAAF9ACAAF9
                ABAAF8ABAAF8AAA9F9AAA9F9AAA9F9ABAAF9ABA9F9AAA9F8AAA8F8AAA8F9A9A8
                F9A9A8F8AAAAF8ABA9F8ADA9F7ACAAF7AFABF7AFADF8ABABF8AAA9F8ABA9F8AA
                A7F8AAA7F8ACA8F6ADABF7AEABF8ABA9F8A9A8F8ABAAF8AAA9F9AAA9F8AAAAF8
                ADABF7AEACF8ADA9F8ABA8F8AAA7F8ABAAF8ACABF8ABA9F9AAA8F8A9A6F8A9A7
                F8A6A7F8A6A4F8A5A4F8A4A3F9A3A2F9A2A2FAA2A2FAA1A1FAA1A1FAA1A1FAA2
                A1FAA2A1F9A3A1F9A2A1F9A2A1F9A2A1F9A1A1F9A1A1FAA2A1FAA3A2FAA4A3FA
                A5A3F9A5A4F9A5A4F9A4A4F9A2A3F9A2A2FAA0A0FA9F9FFA9E9DFA9D9DFA9C9C
                F99C9BF99C9BF99C9BF99C9AFA9C9BFB9C9BFB9B9AFB9998FA9898FA9899F99E
                9EF9A2A2F8A4A3F8A5A6FB6B6AFC6363FD5C5CFD5757FD737271737271C4C2EC
                C6C4EDC8C7EDDAD7EFEDE9F1EDE9F1EDE9F1EDE9F1EDE9F1EAE2E9ECE7EEECE8
                F1EBE8F2EDE9F1EDE9F1EAE2E9ECE7EEEAE3EAECE7EEECE8F1EBE8F2EDE9F1ED
                E9F1EAE2E9ECE7EEE9E1E9E8E4F0EBE6EFECE8F1EBE8F2EDE9F1ECE8F0EAE2E9
                ECE7EEE9E1E9E7E3F0E6E3F4E7E3F4E6E3F4E5E1EFE3DEEFE3E1F3E3E1F5E3E1
                F5E2DFF5E0DDF6E2DFF3E8E1EBECE7EEE9E1E9E7E3F0E6E3F4E7E3F4E4E1F5DF
                DDF5DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9
                E7E3F0E6E3F4E7E3F4E4E1F4E0DEF5DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDC
                F7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E5
                E2F4E1DEF5DFDDF6DEDCF7DEDCF7DDDBF7DDDBF7DEDCF7DEDCF7DFDCF6E5DFEE
                EBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E7E3F4E5E2F4E1DE
                F3DDDBF7DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9
                E1E9E7E3F0E6E3F4E7E3F4E5E2F4E1DEF3DDDBF7DEDCF7DEDCF7DFDCF6E5DFEE
                EBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E3E0F4DEDCF7DEDC
                F7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6
                E3F4E3E0F4DEDCF7DEDCF7DEDCF7DFDCF6E5DFEEEBE6EEE9E1E9E7E3F0E6E3F3
                E8E4F2E9E1E9E7E3F0E6E3F4E3E0F4DEDCF7DEDCF7DEDCF7DFDCF6E5DFEEE4DF
                F1E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EF
                EBF2EEEAF2E7E2F0E2DEF2E4DFEEE1DEF3DFDBF2E5E1F2EDE9F3EBE4EDEBE5F0
                EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F0ECF5EAE2EAE7E3F0E6E3F4E9E5
                F4EFEAF2F0EBF2EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F2EFF6EB
                E5EDEBE5F0EBE7F2EDE9F0EEE9EEF4F0F5F1ECF1F0EDF2ECE4EAF2EDF2F5F0F4
                F5F1F5F4F2F5F3EEF3F0EBF2EFEBF2EEEAF2EEE9F1F1EEF2F6F3F7F7F5F8F7F5
                F9F7F5F8F8F5F8F8F6F9F8F6F9F8F5F8F5F1F3F6F2F6F1ECF1F0EDF2ECE4EAF3
                EEF2F6F2F5F0EAEBF4EFF0F8F5F6F9F6F7F8F5F7EAE8F5CDCBEFCAC8EEC8C6ED
                C6C4ED737271777775D8CBC7D9CCC8DACDC9E6DCD7F4EDE8F4EDE8F4EDE8F3EB
                E6F2E9E3F1E7E1F1E6E0F2E9E3F1E7E1F1E8E2F0E7E1F1E6E0F1E6E0F2E9E3F1
                E8E2F1E7E1F2E9E3F2E8E2F2E9E3F1E7E1F1E8E2EFE5DFF2E9E3F1E7E1F0E6E0
                F2E8E2F1E8E2F2E8E2F2E9E3F2E9E3F2E9E3F0E7E1F2E9E3F2E8E2F2E9E3F0E7
                E1F0E6E0F2E9E3F2E9E3F2E9E3F2E9E3F1E7E1EEE2DCF2E8E2F1E8E2F2E9E3F2
                E9E3EEE4DEEEE1DBF2E8E2F0E7E1F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F0E7E1
                F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F0E7E1F2E9E3F2E9E3F2E9E3F2E9E3F2E9
                E3F0E7E1F2E9E3F2E9E3F2E9E3EFE5DFF2E9E3F0E7E1F2E9E3F2E9E3F2E9E3F2
                E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3
                F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9
                E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2
                E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3
                F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9
                E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2
                E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2
                F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9
                E3F2E8E2F1E8E2EFE5DFF2E9E3F2E8E2F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2
                E9E3F2E9E3F2E9E3F2E9E3F2E8E2F1E8E2EFE5DFF2E9E3F2E8E2F2E9E3F2E9E3
                F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E9E3F2E9E3F2E9
                E3F2E9E3F2E9E3F2E9E3F2E9E3F2E8E2F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2
                E9E3F2E9E3F2E8E2F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2E9E3F2E9E3F1E7E1
                F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2E9E3F2E9E3F1E7E1F2E8E2F2E9E3F2E9
                E3F2EAE4F4ECE6F2E9E3F2E9E3F1E7E1F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2
                E9E3F2E9E3F1E7E1F2E8E2F2E9E3F2E9E3F2EAE4F4ECE6F2E9E3F2E9E3F2E8E2
                F2E9E3DCCFCBDBCECADACDC9D9CCC8777775DDDDDCF5F2F1F5F2F1F6F2F1F9F6
                F5FCFAF9FCF9F8FCFAF9FCFAF9FCFAF9FAF5F4FBF9F8FCFAF9FCFBF9FCFBFAFC
                FBFAF7F4F3FAF7F6FCFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFA
                FDFBFBFDFBFBFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFBFBFDFCFBFBF8
                F7FDFCFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFC
                FBFAFCF9F8FDFCFBFCFBFAFCFAF9FDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFDFCFB
                FDFCFBFCFBFAFBF9F8FDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFAFDFB
                FBFDFBFBFDFBFBFDFBFBFDFBFAFCFBFAFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFD
                FBFBFDFCFBFDFCFBFDFBFAFCF9F8FCF9F8FCF9F8FCF9F8FDFBFAFDFBFBFDFCFB
                FDFCFBFDFBFBFDFCFBFDFCFBFDFBFAFCF9F8FCF9F8FCFAF8FCFAF8FCFAF8FDFB
                FAFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBF9FCFAF8FCFAF8FCFAF8FE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCFBFAFDFCFBFEFDFC
                FEFDFCFEFDFCFEFCFBFDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFCFCFCFAF9FCF9F8FCF9F8FCF9F8FCFAF9FDFCFBFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFD
                FDFCFCFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFCFEFDFCFDFCFBFDFCFBFEFD
                FDFBF8F8FEFDFCFEFDFDFEFDFDFEFDFDFEFCFCFCFAF9FDFBFBFEFCFCFDFCFCFE
                FDFDFEFDFDFEFDFCFEFDFCFCFAFAFEFDFDFEFDFDFEFDFDFCFBFBF9F8F7FAF9F8
                FBFAF9FDFCFBFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFD
                FDFEFDFDFEFDFDFDFBFBFEFDFDFEFDFDFDFCFCFEFCFCFEFCFCFEFDFDFEFDFDFE
                FDFCFEFDFCFEFDFCFCFBFAFBF9F9FBFAFAFCFBFBFCFBFBFCFBFBFDFCFCFDFCFC
                FEFDFDFEFDFCFDFCFCFEFDFDFEFDFDFEFCFCFDFCFCFEFDFDFEFDFDFEFDFDFEFD
                FCFCFAF9FDFBFAFCF9F8FDFAF9FEFCFCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFB
                F9F8FCF9F8FCFBF9FEFDFDFEFDFDFEFDFDFEFDFDFCFBFBFDFAF9FBF8F6FAF7F5
                FAF7F5FBF8F6FAF8F6FBF8F6FBF8F6F7F4F3F6F3F2F6F2F1F5F2F1DDDDDC7777
                754949FD5050FE5857FE918FF9C9C5F5C9C7F4BEBDF6B6B4F8AEACF8A4A1F9A0
                9FFA9FA0FBA0A0F99F9EF89B9CF79A99F79A99F79D9BF89E9DF89E9EF99E9DF7
                9C9AF59894F29892F19995F59B98F99C9BF99C9CFA9D9DFA9F9EF99E9DF89C99
                F69895F19891F19892F19996F79B98F99C9BF99D9CF99E9EF99F9EF89F9EF89D
                9AF69B98F29A95F39897F39A97F59B99F89C9CF99D9CF99F9DF9A09EF9A09EF8
                9D9BF69C97F49A96F29A96F49B99F69C9CF89D9FF9A0A0F9A1A1F9A2A1F8A29F
                F7A29FF6A09DF59F9CF59F9CF59F9EF69F9FF8A1A0F9A2A1FAA3A2FAA2A1F9A2
                A0F7A09EF59F9AF39C98F29C9AF49D9CF69F9FF8A2A1FAA2A1FAA1A2F9A1A0F9
                A2A1FAA3A3FBA4A4FBA3A3FAA4A2FAA3A2F9A3A0F8A29FF9A2A0F9A2A1FAA2A1
                FAA2A1F9A2A0F8A19BF79F9CF8A1A0F9A2A1FAA2A1FAA1A0FBA1A1FAA1A1F9A2
                A2F8A2A2FAA3A3FAA3A2FAA2A1FAA1A1FAA2A0F9A2A1F9A2A1FAA2A1FBA19FF9
                A0A0F9A0A0F9A1A1F9A1A1F9A2A2FAA2A1FAA29FF9A2A1F9A1A1F9A2A2F9A1A2
                F9A2A1FAA2A1FBA2A1F8A1A1F9A19FF9A2A1F9A3A2F9A3A3FAA3A3FAA4A3FBA3
                A3FBA2A3FAA3A2FAA3A2FAA4A2FAA4A3FAA3A2FBA3A3FBA3A2FAA3A2FAA3A1FA
                A3A2FAA4A2FBA3A3FBA3A3FBA2A2FAA2A2FAA2A1F9A3A2FAA4A3FAA3A2F9A3A1
                F9A3A2F9A2A1F9A2A0F9A3A2F9A3A2FAA4A2F9A3A2F9A2A2F9A2A2F9A2A1F9A3
                A2FAA3A2FAA3A2F9A3A2F9A2A1F9A2A1F9A2A0F8A2A1F9A3A2FAA3A2F9A4A3F9
                A4A3F9A5A3F9A2A2F7A29FF7A2A1F9A3A2FAA3A2FAA3A3FBA4A3F9A5A3F8A4A0
                F8A19FF7A2A1F9A3A2FBA3A2FAA3A3F9A4A3FAA4A3F9A3A1F8A1A0F6A2A1FAA3
                A3FAA4A3F9A2A1F9A2A1F8A2A1F9A1A0FA9F9FF99E9EF99D9EFA9D9DFA9D9CFA
                9D9CFB9D9CFB9C9CFB9C9CFB9C9BFA9B9BFA9B9AFA9B9AFA9A9AFA9B9AFA9B9B
                FA9B9BFA9B9BFA9B9BFA9B9AFA9B9AFA9B99F99B9AF99B9AF99B9BF99B9BFA9B
                9BFA9B9BFB9A9AFB9898FA9696F99493F99393F99292F99493F99593FA9796FB
                9998FB9999FB9897FA9695FA9999FA9F9EFA9F9FFAA0A0FBA2A2FB5959FD5252
                FD4C4CFD4646FD7777757777754949FD5050FE5857FE918FF9C9C5F5C9C7F4BE
                BDF6B6B4F8AEACF8A4A1F9A09FFA9FA0FBA0A0F99F9EF89B9CF79A99F79C9BF7
                9D9BF89E9DF8A09EF89F9EF79F9BF59C98F49C97F49C98F59D9AF79D9CF99F9D
                FA9F9FFAA09FF99F9EF89D9BF69B97F49B95F39A97F49B99F69C9BF89E9CF99F
                9EF9A0A0F9A19FF89F9FF79F9DF69D9BF49D99F49C99F49C99F59D9CF79F9DF8
                9E9FF9A0A0F9A1A0F8A19FF7A09EF69E9AF49C99F49D9BF59E9BF69F9FF89FA0
                F9A1A1F9A2A1F9A3A2F8A3A1F7A3A0F6A19FF5A09EF5A09EF5A19FF6A29FF8A2
                A1F9A3A2FAA3A2FAA4A2F9A4A1F7A2A0F5A09CF39E9CF39E9EF4A09DF6A29FF8
                A3A2F9A3A2F9A2A2F9A3A1F9A3A2FAA4A3FBA5A4FBA5A3FAA4A3FAA4A3F9A3A2
                F9A3A2F9A3A2FAA3A2FAA3A2FAA3A2F9A3A0F8A1A1F8A29FF8A3A1F9A2A2FAA3
                A2FAA2A2FAA3A2FAA2A2F9A2A3F9A4A3FAA4A3FAA4A3FAA4A3FAA3A2FAA3A1FA
                A3A2F9A3A3FAA3A2FAA3A1F9A2A1F9A2A1F9A1A1F9A3A2FAA3A2FAA3A2FAA3A1
                F9A2A1F9A2A2F9A3A2F9A2A2F9A3A2FAA4A3FAA3A2F9A3A2F9A2A0F9A3A2F9A3
                A2F9A4A3FAA4A3FAA4A4FBA3A4FBA3A4FAA4A3FAA5A4FAA5A4FAA5A3FAA4A4FB
                A4A4FBA4A3FAA4A3FAA4A2FAA5A3FAA5A3FBA4A4FBA4A4FBA4A3FAA3A2FAA4A2
                FAA4A3FAA4A3FAA4A4F9A4A3F9A4A2F9A3A2F9A4A3F9A4A3F9A4A3F9A4A3F9A3
                A3F9A3A3F9A3A3F9A3A2F9A4A2FAA4A2FAA4A3F9A3A2F9A3A2F9A2A1F9A3A2F9
                A3A2F9A4A3F9A5A3F9A5A3F9A6A4F9A5A4F8A4A3F8A2A2F8A2A1F9A3A2FAA3A2
                FAA4A3F9A5A4F9A6A3F9A4A3F9A3A2F9A3A2F9A3A3FAA4A3FAA4A3F9A5A3F9A5
                A3F9A4A3F9A3A1F9A3A2F9A4A3F9A4A3F9A3A2F9A2A1F8A2A1F9A2A0FAA0A0F9
                9E9FF99D9EFA9E9DFA9D9CFA9D9CFB9D9CFB9C9CFB9C9CFB9C9BFA9B9BFA9B9A
                FA9B9AFA9B9AFA9B9BFA9B9BFA9B9BFA9B9BFA9B9BFA9B9AFA9B9AFA9B9AF99B
                9AF99B9BF99C9BF99B9BFA9B9BFA9B9BFB9A9AFB9898FA9797F99695F99594F9
                9494F99594F99594FA9796FB9898FB9999FB9897FA9796FA9999FA9F9EFA9F9F
                FAA0A0FBA1A1FB5959FD5252FD4C4CFD4646FD777775777775BEBDEAC0BFEAC2
                C1EBD7D4EEEEE9F1EEE9F1EEE9F1EEE9F1EEEAF1EBE3EBECE5EDEEEAF2EEEAF2
                EEE9F1EEEAF1EBE3EBECE5EDEBE4ECECE5EDEEEAF2EEEAF2EEE9F1EEEAF1EBE3
                EBECE5EDEBE4ECEBE5F0ECE5EEEEEAF2EEEAF2EEE9F0EEEAF1EBE3EBECE5EDEB
                E4ECEBE5F0EBE7F2EDE9F1ECE8F0EAE2E9ECE7EEE8E2EDE5E2F5E5E2F5E6E2F5
                E6E3F4E7E3EFE9E2ECECE5EDEBE4ECEBE5F0EBE7F2ECE8F1E7E4F2E0DEF5E0DD
                F6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EB
                E7F2EDE9F1E7E3F2E0DCF4E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6
                E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EAE6F2E7E3F3E0DD
                F4DFDCF5E0DDF6E0DDF6DFDDF6DFDDF6E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEB
                E4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EBE7F2EDE9F1EAE6F1E4DFF1DFDDF6
                E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5
                F0EBE7F2EDE9F1EAE6F1E4DFF1DFDDF6E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEB
                E4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EBE7F2E6E2F2DFDDF6E0DDF6E0DDF6
                DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EBE7F2E6E2
                F2DFDDF6E0DDF6E0DDF6DFDDF6E3DFF2EAE3EEEBE4ECEBE5F0EBE7F2EAE6F1EB
                E4EDEBE5F0EBE7F2E6E2F2DFDDF6E0DDF6E0DDF6DFDDF6E5E1F2EAE6F1E9E1E9
                E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0F0EC
                F1EDE9F2EAE6F2E9E1E9E7E3F0E6E3F4E9E5F4EFEAF2F0EBF2EFEBF2EEEAF2EE
                E9F1EFEBF0F1EDF2F0ECF1F4F0F4F2EFF6EBE5EDEBE5F0EBE7F2EDE9F0EEE9EE
                F4F0F5F1ECF1F0EDF2ECE4EAF2EDF2F5F0F4F5F1F5F4F2F5F3EEF3F0EBF2EFEB
                F2EEEAF2EEE9F1F1EEF2F6F3F7F7F5F8F7F5F9F7F5F8F8F5F8F8F6F9F8F6F9F8
                F5F8F5F1F3F6F2F6F1ECF1F0EDF2ECE4EAF3EEF2F6F2F5F0EAEBF4EFF0F8F5F6
                F9F6F7F9F6F7F8F5F6F7F4F5F8F6F8F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6
                F9F9F7F9F9F7F8F9F7F8FAF8F8F9F7F8EBE9F6C7C6EDC4C3ECC2C1EBC0BEEA77
                77757D7C7AD4C8C5D5C9C6D7CAC7E5DAD7F5EDE9F5EDE9F5EDE9F5EDEAF5EEEA
                F3EAE5F1E7E3F4ECE7F4EBE6F3EAE6F5EDE9F2E9E4F0E5E1F4EBE6F4ECE8F5EC
                E8F5EEE9F2EAE5F1E6E2F3EAE5F5EDE9F5ECE8F5EDE9F2E9E4EFE3DFF3EAE5F5
                EDE9F5EDE9F4ECE8F3EAE5F1E7E2F2E9E4F5ECE8F5EDE9F5EEEAF2E9E4F0E4E0
                F3EAE5F5EDE9F5EEEAF5EEEAF2E9E4EFE3DFF1E7E2F0E5E1F3E9E4F3EBE6F0E6
                E1EFE3DFF1E7E2F0E5E1F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F2E7E3F3E9E4F3
                EAE5F3EAE5F2E9E4F3EAE5F1E6E2F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F1E6E2
                F3E9E4F3EAE5F3EAE5F1E8E3F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EA
                E5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3
                EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5
                F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EA
                E5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3
                E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5
                F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EA
                E5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3
                EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4
                F3EAE5F1E7E2F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EA
                E5F3EAE5F3EAE5F3E9E4F3EAE5F1E7E2F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3
                EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3EAE5F3E9E4F3EAE5F3EAE5F3EAE5F3EAE5
                F3EAE5F3EAE5F3EAE5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EA
                E5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EAE5F3E9E4F3E9E4F3
                EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EAE5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5
                F4EBE6F3EAE5F3EAE5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EA
                E5F3E9E4F3E9E4F3EAE5F3EAE5F3EAE5F4EBE6F3EAE5F3EAE5F3EAE5F3EAE5D9
                CCC8D8CBC8D6CAC7DDD1CE7D7C7ADEDEDEF4F1F0F4F1F1F5F2F1F8F6F5FCFAF9
                FCFAF9FCFAF9FCFAFAFCFBFAFBF9F8FCFAF9FCFBFAFCFBFAFBFAF9FBF9F8FAF8
                F7FBFAF9FCFBFAFBF9F8FCFAF9FDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFD
                FBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFBF9F9FDFCFB
                FDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFBF9
                F8FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFC
                FBFAFDFBFBFDFBFBFDFBFAFDFCFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFC
                FBFDFCFBFCFBF9FCFAF8FCFAF8FCFAF8FCFAF8FDFBFAFDFCFBFDFBFBFDFCFBFD
                FCFBFDFCFBFDFCFBFCFBF9FCFAF8FCFAF8FCFBF9FDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBFAFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCF9F9FDFCFBFEFDFCFE
                FDFCFDFBF9FDFCFBFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFDFCFBFCFAF9FCFAF8FCFAF8FCFAF9FDFCFBFEFDFDFEFDFDFEFDFDFDFC
                FCFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFCFBFEFCFCFDFBFBFAF6F6
                FEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFBF9F9FCF9F9FEFCFCFEFDFDFEFD
                FCFEFDFCFEFDFCF7F2F2FDFCFCFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFCFEFDFC
                FEFDFCFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFCFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFE
                FDFCFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFCFCFBFAFAF8F8
                FBFAF9FBF9F7FCFAF9FDFCFBFDFBFAFEFDFCFEFDFCFEFDFCFDFCFAFCFAF8FAF6
                F6FDFBFBFEFDFDFEFDFDFEFDFDFEFDFDFDFBFAFBF9F8FAF7F5FAF7F6FAF6F6FD
                FBFAFDF9F9FCF9F8FBF9F7F6F3F2F5F2F1F5F2F1F6F3F3DEDEDE7D7C7C3837FE
                3D3DFE4646FE807EF9B1AFF7A6A6FAA4A3F9A3A1FBA19EFA9E99F79A99F89A99
                F99998F89694F79292F6908EF6918FF69393F79796F89998F99998F89795F694
                91F4928DF39390F59494F79696F99797FA9898FA9A99FA9A99F99796F79391F3
                928EF2928EF39390F69593F89796F99897F99999F99A9AF99A99F89896F69592
                F49290F3928FF49491F59594F79797F99897F99998F99A99F99A98F89896F796
                93F49390F49391F49592F69596F89798F99898F99A99F99B9AF99B99F89B98F7
                9997F69694F59794F59895F69896F89A98F99B9AFA9B9BFA9B9AF99B99F89997
                F69693F39492F39693F49894F69A98F89C9BFA9C9CFA9A9BF99A9BF99C9CFA9D
                9DFB9E9EFB9D9DFA9D9DFA9C9CFA9B9BF99C9BF99D9BFA9D9CFA9D9CFA9C9CFA
                9C9BFA9B99F99B97F89C9BF99D9CFA9D9CFA9D9CFA9C9AFA9C9BF99B9CF99D9D
                FA9D9CFA9D9DFA9D9CFA9C9CFA9C9CF99B9CF99C9CFA9B9BFA9999F99B9BFB9B
                9BFA9C9BF99C9AF99C9CFA9B9AFA9A98FA9B9BFA9C9CFA9C9CF99D9CF99D9CFA
                9C9BFA9C9AF99B9BF99C9BFA9D9BFA9D9CFA9E9DFA9E9EFB9E9EFB9E9EFB9D9D
                FA9D9DFA9D9BFA9E9DFA9E9EFA9E9EFB9E9EFB9D9DFA9D9CFA9E9DFA9E9DFB9E
                9EFA9E9EFB9E9EFB9D9DFA9D9CFA9E9CFA9E9DFB9E9EFB9E9EFB9E9EFB9D9DFA
                9C9CFA9D9CFA9E9DFA9E9EFA9E9EFB9E9EFA9D9DFA9D9CFA9D9DFA9E9DFB9E9E
                FB9E9EFB9E9EFA9D9DFA9D9CFA9C9CFA9E9DFB9E9EFA9E9EFB9E9EFB9F9EFAA0
                A0FA9F9FFA9C9BFA9E9DFB9E9EFB9E9EFB9E9EFB9E9FFAA0A0FA9F9FFA9C9DFA
                9E9EFA9E9EFB9E9EFB9E9EFB9E9EFAA09FFA9F9FFA9D9CFA9E9DFA9F9EFAA0A0
                FA9F9FFA9D9CFA9D9DFA9C9BFA9A9AFA9999FA9898FB9898FB9898FB9998FB98
                98FB9898FB9797FB9696FA9595FA9494F99493F99594FA9595FA9696FA9797FA
                9797FA9696FA9594F99493F99392F99392F99392F99493F99594FA9696FA9696
                FB9696FB9494FA9192F99090F98F8DF98F8EF98E8DF9908FF99392FA9595FB97
                96FA9795FA9697FA9998FB9C9DFB9C9CFB9D9DFB9D9CFB4849FD4242FD3B3BFD
                5050FD7D7C7A7D7C7C3837FE3D3DFE4646FE807EF9B1AFF7A6A6FAA4A3F9A3A1
                FBA19EFA9E99F79A99F89A99F99998F89694F79292F6908EF69190F69393F797
                96F89998F99998F89895F69693F59591F49491F59594F79796F99897FA9998FA
                9A99FA9A98F99796F69593F49490F3938FF49491F69694F89796F99898F99999
                F99A9AF99A99F89996F69795F59492F49491F49592F59694F79797F89898F99A
                98F99A99F99A98F89997F79794F59692F49592F49695F69797F89998F99A9AF9
                9B9AF99C9AF99C9AF89B99F79A97F69995F59897F59996F69998F89B99F99B9A
                FA9C9BFA9C9BF99C9AF89A99F69896F49894F49796F59896F69B99F89C9BF99C
                9CF99B9CF99C9CF99D9DFA9E9DFB9E9EFB9E9EFA9E9DFA9D9CFA9D9CF99D9CF9
                9D9CFA9D9CFA9D9DFA9D9CFA9D9BF99C9BF99B99F99C9CF99D9CFA9D9CFA9D9C
                FA9D9CFA9D9DFA9D9DFA9E9DFA9E9EFA9E9EFA9D9DFA9D9DFA9D9CFA9D9CF99D
                9DFA9C9CFA9C9CFA9C9CFA9C9CFA9D9BFA9D9CFA9D9CFA9D9CFA9B9BFA9C9CFA
                9D9CFA9D9DF99D9DF99D9CFA9D9CFA9D9CF99D9CF99D9CFA9D9BFA9E9DFA9E9E
                FA9F9EFB9E9EFB9E9EFB9E9DFA9E9DFA9E9CFA9E9EFA9F9EFA9F9EFB9E9EFB9E
                9EFA9E9DFA9E9DFA9E9EFB9E9EFB9F9EFB9E9EFB9E9DFA9E9DFA9E9EFA9E9EFB
                9E9EFB9F9EFA9F9EFA9E9DFA9E9DFA9E9DFA9F9DFA9F9EFA9E9EFA9E9EFA9E9D
                FA9E9DFA9E9DFA9E9DFB9F9EFB9E9EFA9E9EFA9D9DFA9D9DFA9E9DFA9E9DFA9E
                9EFA9E9EFA9F9EFAA09EFAA09FFA9F9FFA9F9DFA9E9EFA9E9EFB9E9EFB9E9EFA
                9F9FFAA09FFA9F9EFA9F9EFA9F9EFA9F9EFB9E9EFB9F9EFBA09FFAA09FFA9F9F
                FA9F9EFA9F9EFA9F9FFAA09FFA9F9FFA9E9EFA9D9DFA9C9BFA9A9AFA9999FA99
                99FA9898FB9898FB9898FB9898FB9797FB9797FB9696FA9595FA9494F99494F9
                9594FA9695FA9696FA9797FA9797FA9696FA9595F99494F99493F99492F99493
                F99494F99595FA9696FA9696FB9696FB9494FA9392F99190F98F90F98F8FF990
                90F99190F99392FA9595FA9695FA9795FA9696FA9898FB9C9CFB9C9CFB9D9DFB
                9C9BFB4849FD4242FD3B3BFD5050FD7D7C7A7D7C7AB8B7E8BAB9E8BCBBE9D4D1
                EDEFEAF0EFEAF0EFEAF0EFEAF1EFEBF1ECE6EBEEE9F0EFEBF1EFEBF1EFEAF1EF
                EBF1ECE6EBEEE9F0EEE9EFEEE9F0ECE6ECEFEBF1EFE9F0EFEBF1ECE6EBEEE9F0
                EEE9EFEFEBF2EEEAF1EDE7EEEEEAF1EDE6EEEFEAF0ECE6EBEEE9F0EEE9EFEFEB
                F2EEEAF2EEE9F1EEEAF1EBE3EBECE5EDECE5EDECE7F3ECE8F4ECEAF2ECE8F0EB
                E3EAECE6ECEEE9F0EEE9EFEFEBF2EEEAF2EDE8F1E7E3F1E1DDF2E4DFEEE1DEF3
                DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2EDE8
                F1EAE6F1E3DEEFE4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2E1DDF2EA
                E5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEBF2EBE7F2E4E1F4E5E1F0E3DEEF
                E4DFEEE1DEF3DFDBF2E1DDF2E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEB
                F2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2EEE9F1ECE9F1E5DFEFE2DEF2E4DFEEE1
                DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2
                EEE9F1ECE9F1E5DFEFE2DEF2E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEB
                F2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2E7E2F0E2DEF2E4DFEEE1DEF3DFDBF2E1
                DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2E7E2F0E2DEF2
                E4DFEEE1DEF3DFDBF2E1DDF2EAE5F2EDE8EFEFEBF2EEEAF2EBE7F2EDE8F0EFEB
                F2EEEAF2E7E2F0E2DEF2E4DFEEE1DEF3DFDBF2E5E1F2EDE9F3EBE4EDEBE5F0EB
                E7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F2EFF5F2EEF4
                EEEAF3EBE4EDEBE5F0EBE7F2EDE9F0EEE9EEF4F0F5F1ECF1F0EDF2ECE4EAF2ED
                F2F5F0F4F5F1F5F4F2F5F3EEF3F0EBF2EFEBF2EEEAF2EEE9F1F1EEF2F6F3F7F7
                F5F8F7F5F9F7F5F8F8F5F8F8F6F9F8F6F9F8F5F8F5F1F3F6F2F6F1ECF1F0EDF2
                ECE4EAF3EEF2F6F2F5F0EAEBF4EFF0F8F5F6F9F6F7F9F6F7F8F5F6F7F4F5F8F6
                F8F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6F9F9F7F9F9F7F8F9F7F8FAF8F8FA
                F8F8F9F7F8F9F7F9F8F6F9F8F6F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F6F7
                F9F7F8F9F7F8FAF6F7F7F4F6EBE8F5C1C0EBBEBDEABCBBE9C5C4EB7D7C7A8281
                7FD1C4C3D2C6C4D3C7C4E6DCD8F5EEEAF5EEEAF5EEEAF6F1EDF8F3F0F8F2F0F7
                F0EEF8F3F0F8F2EFF8F3EFF8F3F0F8F2F0F7F0EEF8F3F0F8F2EFF8F3EFF8F3F0
                F8F2F0F7F0EEF8F3F0F8F2EFF8F3EFF8F3F0F8F2F0F7F0EEF8F3F0F8F2EFF8F3
                EFF8F3F0F8F2F0F7F0EEF8F3F0F8F2EFF8F3EFF8F3F0F8F2F0F7F0EEF8F3F0F8
                F2EFF8F3EFF8F3F0F8F2F0F7F0EEF8F4F1F8F4F1F9F4F1F5EFECF7F1EFF7F0EE
                F8F4F1F8F4F1F9F4F1F9F4F1F9F4F2F9F4F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5
                F2F8F4F2F8F4F2F7F0EDF8F3F0F9F5F2F9F5F3F9F5F3F9F5F3F7F1EEF7F2EEF8
                F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EF
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EF
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EF
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EF
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3F0
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3
                EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8
                F3EFF8F3EFF8F3F0F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3F0
                F8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF8F3EFF6F0ECF4ECE7D6C9C6D4C8
                C5D3C7C4DACFCC82817FE0DFDFF3F0F0F4F1F0F4F1F0F9F6F5FCFBFAFCFBFAFC
                FBFAFCFBFAFCFBFAF9F7F6FBF9F8FCFBFAFCFBFAFBF9F9FBF7F7FBF7F6FCF9F8
                FBF9F8FAF5F5FDFAF9FDFBFAFBF8F8FDFAFAFDFCFBFDFCFBFDFCFBFDFBFBFDFC
                FBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFCFBFAFCFAF9FCF9F8FDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBFAFDFCFB
                FDFCFBFDFCFBFDFCFBFDFBFAFCFBFAFCFBFAFBF9F8F9F6F5F8F4F3FCF9F9FDFC
                FBFDFCFBFBF8F7FDFCFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFD
                FCFBFDFCFBFDFBFAFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFEFDFCFEFDFCFDFCFBFDFBFAFD
                FCFBFAF7F6FDFCFBFDFCFBFEFDFCFEFDFCFEFCFBFEFDFCFEFDFCFEFDFCFDFCFB
                FEFDFCFEFDFCFEFDFCFDFCFBFDFBFAFEFCFBFEFDFCFEFDFCFCF9F8FAF8F8FBFA
                F9FDFCFBFEFDFCFEFDFCFBF9F9FBF9F9FCFAFAFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFCFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFC
                FEFDFCFEFDFCFEFDFCFDFCFBFEFDFCFEFDFDFEFDFDFDFCFCFBFAFAFAF9F9F9F8
                F8FBFAFAFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFCFEFDFCFE
                FDFCFDFBFBFDFBFBFEFDFDFCFBFBFAF9F8F9F8F7FAF9F8FBFAF9FDFCFBFEFDFC
                FEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFD
                FCFCFAF7F7FAF8F8FBFAFAFCFBFBFCFBFBFCFBFBFDFCFCFDFCFCFEFDFDFEFDFC
                FDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FCFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFDFCFCFEFDFCFEFCFCFEFDFCFEFDFDFD
                FBFAFBFAF9FCFBFAFAF7F7FBF9F9FDFCFCFDFBFBFCFAF9FBF9F8FCFAF9FDFCFC
                FEFDFDFEFDFDFDFCFCFEFDFCFDFCFBFCF9F7FBF8F7FAF7F5FCFBFAFEFDFDFEFD
                FDFEFCFBFCFAF9F6F2F2F4F1F0F4F1F0F6F3F2E0DFDF82817F2524FD2B2BFE34
                33FE5455FD9696FB9C9CFB9A9BFB9B9AFB9998F99795F79594F89593F89392F7
                908FF68D8AF68A89F58A8AF68E8DF79291F89494F99595F99492F7918EF58E8B
                F48B8AF48F8DF69192F89393F99494F99696FA9795F99593F7918FF58D8CF48E
                8AF48E8CF5908FF89491F99393F99494F99597F99696F99493F7918FF58E8DF4
                8D8BF48F8DF5918FF79292F89393F99493F99695F99694F99593F79290F68F8D
                F48F8DF3908EF59190F79393F99494F99594F99695F99695F99593F89391F692
                8FF5908DF5918EF69391F79493F89594F99695F99695F99794F89492F79190F5
                908FF3918EF5928FF79593F99796FA9797FA9696F99697F99797FA9999FB9999
                FB9999FA9998FA9897FA9797FA9897FA9898FA9998FA9999FA9999FA9898FA97
                96FB9797FA9899FA9998FA9998FA9999FB9898FB9898FA9999FA9999FB9999FA
                9999FA9999FB9898FB9898FA9999FA9A9AFA9596FA9696FA9A98FB9898FB9897
                FA9998FA9999FB9796FA9696FA9899FA9898FA9898FA9998FA9999FA9696FA96
                96F9999AFA9898FB9898FA9998FA9A99FB9A9AFB9A9AFB9A9AFB9999FB9898FA
                9999FA9A9AFB9A9AFB9A9AFB9A9AFB9999FB9998FA9999FA9999FB9A9AFB9A9A
                FB9A9AFB9999FB9998FA9999FA9A9AFB9A9AFB9A9AFB9A9AFB9999FB9898FA99
                99FA9A99FB9A9AFB9A9AFB9A9AFB9999FA9899FA9999FA9A99FB9A9AFB9A9AFB
                9A9AFB9999FB9898FA9999FA9A99FB9A9AFB9A9AFB9A9AFB9B9BFB9C9DFB9C9C
                FB9A9AFA9A9AFB9A9AFB9A9AFB9A9AFB9B9BFB9D9CFB9C9CFB9B9BFA9B9BFB9A
                9AFB9A9AFB9A9AFB9B9BFB9D9CFB9C9CFB9B9BFA9B9BFB9A9AFB9D9DFB9C9CFB
                9B9BFA9A9AFA9797FB9595FA9494FA9494FA9494FA9493FB9493FA9393FA9292
                FA9191FA8F8FFA8E8DF98E8DF98E8DF98F8EF99190F99292FA9393FA9393FA92
                91F9908FF88E8CF78C8CF88B8BF98C8BF98D8DF98F8EF99191FA9292FA9392FA
                9291FA908FFA8E8EFA8D8BFA8B8AFA8B8BF98D8CF98E8EF9908FF99091F99191
                F99393FA9696FB9998FA999AFB9A9AFB9899FB3738FE3232FE2B2BFE4242FD82
                817F82817F2524FD2B2BFE3433FE5455FD9696FB9C9CFB9A9BFB9B9AFB9998F9
                9795F79594F89593F89392F7908FF68D8AF68A89F58C8AF68E8DF79291F89493
                F99594F89492F7928FF5908CF48E8DF58F8FF69191F89393F99494F99695F996
                95F99493F7928FF5908DF48F8CF4908DF5918FF79391F89493F99494F99595F9
                9595F89493F79290F5908EF48F8DF4908EF59190F79292F89393F99493F99694
                F99694F89593F79390F6918EF48F8DF4908FF59291F79393F99494F99594F996
                95F99695F99594F89492F69390F59290F59391F69491F79493F89594F99695F9
                9695F99694F89493F79291F5918FF4928FF59390F79593F99796FA9797FA9697
                F99697F99797FA9898FB9999FB9999FA9998FA9897FA9897FA9898FA9898FA99
                98FA9999FA9998FA9898FA9897FA9897FA9898FA9998FA9998FA9998FB9898FB
                9898FA9999FA9999FA9999FA9999FA9999FB9998FB9998FA9999FA9999FA9897
                FA9797FA9898FA9898FA9898FA9998FA9998FA9897FA9797FA9898FA9898FA98
                98FA9998FA9898FA9896FA9897FA9898FA9898FA9998FA9998FA9A99FB9A9AFB
                9A9AFB9A9AFB9999FB9999FA9999FA9A99FB9A9AFB9A9AFB9A9AFB9999FB9999
                FA9999FA9999FB9A9AFB9A9AFB9A9AFB9999FB9999FA9999FA9A9AFB9A9AFB9A
                9AFB9A9AFB9999FB9999FA9999FA9A99FA9A9AFB9A9AFB9A9AFB9999FA9999FA
                9999FA9A99FB9A9AFB9A9AFB9A9AFB9999FB9998FA9999FA9A99FB9A9AFB9A9A
                FB9A9AFB9B9BFB9C9CFB9C9BFB9B9AFB9A9AFB9A9AFB9A9AFB9A9AFB9B9BFB9C
                9CFB9C9CFB9B9BFA9B9BFB9A9AFB9A9AFB9A9AFB9B9BFB9C9CFB9C9CFB9B9BFA
                9B9BFB9B9BFB9C9CFB9C9CFB9B9BFA9999FA9797FA9595FA9494FA9494FA9493
                FA9493FA9493FA9393FA9292FA9191FA8F8FFA8E8EF98E8EF98E8EF98F8FF991
                90F99292FA9392FA9392FA9291F9908FF98E8EF88D8DF88D8DF98D8CF98E8EF9
                8F8FF99191FA9292FA9292FA9191FA908FFA8F8EFA8E8CFA8C8CFA8D8CF98D8C
                F98E8EF9908FF99190F99191F99393FA9696FA9898FA9999FB9A9AFB9797FB38
                38FE3232FE2B2BFE4242FD82817F82817FB2B1E5B4B3E6B6B6E7D6D3ECF0EBF0
                F0EBF0F0EBF0F0EBF1F0ECF1EDE7ECF0EBF1F0ECF1F0EBF0F0EBF1F0ECF1EDE7
                ECF0EBF1F0ECF1F0EBF0ECE3E8F1EDF3EFE9EFF0ECF1EDE7ECF0EBF1F0ECF1F1
                ECF1EFEBF1EFE8EFEFEBF1ECE6ECEFEAF0EDE8EEEFEBF2EEEAF1EFE9EFF0ECF1
                EFE9F0EFEBF1ECE6EBEEE9F0EEE9EFEFEBF2EFEBF3EFEAF2EEEAF1EBE3EBECE6
                EDEFEAF2EEEAF1EFE9EFF0ECF1EEE9F0EBE7F2E8E4F2E9E1E9E7E3F0E6E3F4E7
                E3F4EBE7F3EDE9F1EFE9EFF0ECF2F0EDF5F0ECF4EFE9EFF0ECF1EEE8F0ECE7EF
                ECE7EEE9E1E9E7E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9
                F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0ECE8F2E5E1F2E8E1EBECE7EEE9E1E9E7
                E3F0E6E3F3E8E4F2E9E1E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2
                F0EDF5F0EDF5EFEAF0F0ECF1EFE9F0EEEAF1EAE5EEE9E5F2E9E1E9E7E3F0E6E3
                F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0F0ECF1EFE9F0EE
                EAF1EAE5EEE9E5F2E9E1E9E7E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2
                F0EDF5F0EDF5EFEAF0F0ECF1EDE9F2EAE6F2E9E1E9E7E3F0E6E3F4E7E3F4EBE7
                F3EDE9F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0F0ECF1EDE9F2EAE6F2E9E1E9E7
                E3F0E6E3F4E7E3F4EBE7F3EDE9F1EFE9EFF0ECF2F0EDF5F0EDF5EFEAF0F0ECF1
                EDE9F2EAE6F2E9E1E9E7E3F0E6E3F4E9E5F4EFEAF2F0EBF2EFEBF2EEEAF2EEE9
                F1EFEBF0F1EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2F7F5F3F8F4F0F4F1ECF1F0
                EBF2EFEBF2EEEAF2EEE9F1F1EEF2F6F3F7F7F5F8F7F5F9F7F5F8F8F5F8F8F6F9
                F8F6F9F8F5F8F5F1F3F6F2F6F1ECF1F0EDF2ECE4EAF3EEF2F6F2F5F0EAEBF4EF
                F0F8F5F6F9F6F7F9F6F7F8F5F6F7F4F5F8F6F8F8F6F9F8F6F9F7F5F9F7F5F8F8
                F5F8F8F6F9F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F7F8F9F7F9F8F6F9F8F6F9
                F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F6F7F9F7F8F9F7F8FAF6F7F9F6F7F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8F9F7F9F9
                F7F8F9F7F8F5F2F6EBE8F4BAB9E8B8B7E8B6B5E7C1C0EA82817F868684CDC1C0
                CFC2C1D0C3C2E5DBD8F5EEEAF5EEEAF5EFEBF7F2EFF8F2EFF7F1EEF4ECEAF8F4
                F1F8F4F2F8F3F0F8F2EFF7F1EEF4ECEAF8F4F1F8F4F2F8F3F0F8F2EFF7F1EEF4
                ECEAF8F4F1F8F4F2F8F3F0F8F2EFF7F1EEF4ECEAF8F4F1F8F4F2F8F3F0F8F2EF
                F7F1EEF4ECEAF8F4F1F8F4F2F8F3F0F8F2EFF7F1EEF4ECEAF8F4F1F8F4F2F8F3
                F0F8F2EFF7F1EEF4ECEAF8F4F1F9F5F3F9F4F1F5ECEAF9F4F1F5EDEBF8F4F1F9
                F5F3F9F5F3FAF5F3FAF6F3F5EDEBF8F4F1F9F5F3F9F5F3FAF5F3FAF6F3F5EEEB
                F6F1EEF9F5F2FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF5F2FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3
                FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
                F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3F8F3EFF5EEE9D2C6C4D1C4C3D0C3C2
                D8CDCB868684E1E1E0F2EFEFF3F0EFF3F0F0F8F6F5FCFBFAFCFBFAFCFBFAFCFB
                FAFCFBFAF7F4F3FAF7F6FCFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFD
                FBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFBF8F7FDFCFBFCFBFAFCFAF9FDFC
                FBFDFCFBFDFCFBFAF7F6FDFCFBFDFCFBFDFCFBFCFBFAFBF9F8FDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFCFCFBFAFAF8F7FAF7F6FBFAF9FDFCFCFDFCFCFDFCFBFDFBFB
                FCFAFAFDFCFBFDFBFBFDFCFBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFB
                FAFDFCFBFCFBFAFCFAF9FDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFDFCFBFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFDFBFAFDFCFBFAF7F6FDFCFBFDFCFB
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCFBFAFDFC
                FBFEFDFCFEFDFCFEFDFCFEFDFCFDFBFAFDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFCFCFCFBFBFDFBFBFDFCFCFEFDFCFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFBF8F8FEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFBFEFDFCFEFDFCFCFBFAF8F7
                F6F4F3F2F2F1F1F6F5F4FCFBFBFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFEFDFDFEFDFDFDFCFCFEFCFC
                FEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFE
                FDFDFEFDFDFDFCFCFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFCFDFCFCFEFDFDFEFDFDFEFCFCFDFC
                FCFEFDFDFEFDFDFEFDFDFEFDFCFCFAF9FDFBFAFCF9F8FCF9F8FEFCFCFEFDFDFE
                FDFDFEFDFCFEFDFCFEFDFCFBF9F8FCF9F8FCFBF9FEFDFDFEFDFDFEFCFCFDFBFA
                FCFAF9F4F1F0F3F0F0F3F0F0F5F2F2E1E1E08686841214FE1919FF2020FE4644
                FD8E8CFB9595FB9796FB9897FB9494F99190F7918FF68F8EF68E8CF58C8BF68A
                88F68887F68886F68A89F68D8CF8908FF99190F9928FF88F8DF68B89F48986F4
                8988F48D8DF78F8EF88F8FF79291FA9492F99391F88F8DF68B8AF38987F48B88
                F58D8BF78F8EF88F8FF88F90F89191F99192F99190F78F8DF68C8AF48B89F48B
                8AF58E8CF78F8EF88F8EF8908DF89190F89391F89390F88F8DF68C89F48A88F4
                8C8AF58E8CF78F8EF9908FF99090F99191F99290F9918FF88F8DF68D8BF58D8A
                F58D8BF58E8DF7908FF8908FF89190F89290F99290F9918FF78F8DF58C8BF58C
                8BF58E8BF79190F99392FA9393FA9292F99192F99393FA9494FB9494FB9494FA
                9493FA9493FA9493FA9494FA9494FA9494FA9595FA9595FA9594FA9493FB9494
                FA9494FA9494FA9594FB9795FB9594FB9494FA9595FB9696FB9494FA9595FA97
                95FB9594FB9494FA9595FB9896FB9493FB9291F89696FA9594FB9494FA9595FB
                9695FA9493FA9291F99795FA9594FA9494FA9594FA9496FB9493FB9391F89495
                FA9594FB9494FA9594FB9595FB9595FB9595FB9595FB9595FB9494FA9595FA95
                95FB9595FB9595FB9595FB9595FB9494FA9595FB9596FB9595FB9595FB9595FB
                9595FA9494FA9595FB9696FB9595FB9595FB9595FB9595FB9494FA9594FB9595
                FB9595FB9595FB9595FB9595FA9494FA9595FA9595FB9595FB9595FB9595FB95
                95FB9494FA9595FB9695FB9595FB9595FB9595FB9898FB9999FB9999FB9797FB
                9696FB9696FB9696FB9595FB9898FB9A9AFB9999FB9898FA9797FB9696FB9696
                FB9595FB9898FB999AFB9999FB9898FA9797FB9797FB9999FB9999FB9898FA96
                96FA9393FA9190F98F8FF98F8EF98F8EF98F8EF98F8EF98E8DF98D8CF98B8AF9
                8987F98787F98787F98788F98A89F98D8BF98E8DF98E8EF98E8EF98D8DF98B8B
                F88888F88687F88686F98686F98887F98A89F98C8CF98E8DF98E8DF98E8DF98F
                8DF98E8DFA8D8CFA8B8AFA8A8AF98A89F98A89F98A89F88A8AF98C8AF98E8EF9
                9393FA9595FA9595FB9595FB9495FB2727FE2121FE1B1BFE3535FD8686848686
                841214FE1919FF2020FE4644FD8E8CFB9595FB9796FB9897FB9494F99190F791
                8FF68F8EF68E8CF58C8BF68A89F68987F68886F68A89F68D8CF8908FF99190F9
                908EF88F8CF68D8AF58B89F48A8AF58D8DF78F8EF8908FF89291F99391F99190
                F88F8DF68C8AF38B88F48B89F58D8CF78F8EF88F8FF89090F89091F99191F990
                8FF78F8DF68D8BF58C89F48C8BF58E8DF78F8EF88F8EF8908FF89190F89290F8
                928FF78F8DF68D8BF58C8AF48D8AF58E8CF78F8EF9908FF99090F99191F99290
                F9918FF8908DF68E8CF58E8CF58E8CF68F8DF7908FF8908FF89190F89290F992
                90F8918FF78F8DF58E8BF58D8BF58F8CF7918FF99392FA9393FA9293F99293F9
                9393FA9494FB9494FB9494FA9493FA9493FA9493FA9494FA9494FA9494FA9594
                FA9594FA9494FA9493FA9494FA9494FA9494FA9594FA9594FB9494FB9494FA95
                95FA9695FA9594FA9595FA9595FB9594FB9494FA9595FA9594FA9493FA9492F9
                9495FA9594FA9494FA9594FA9693FA9493F99393F99494FA9494FA9494FA9594
                FA9494FA9493FA9392F99494FA9494FA9494FA9594FA9595FB9595FB9595FB95
                95FB9595FB9494FA9595FA9595FA9595FB9595FB9595FB9595FA9494FA9594FA
                9595FB9595FB9595FB9595FB9595FA9494FA9595FA9595FB9595FB9595FB9595
                FB9594FB9494FA9594FA9595FA9595FB9595FB9595FB9595FA9594FA9594FA95
                95FA9595FA9595FB9595FB9595FA9594FA9594FA9595FB9595FB9595FB9695FB
                9797FB9898FB9898FB9797FB9796FB9696FB9696FB9796FB9898FB9999FB9999
                FB9898FA9797FB9697FB9696FB9796FB9898FB9999FB9999FB9898FA9798FB97
                98FB9899FB9999FB9898FA9696FA9393FA9191F98F8FF98F8EF98F8EF98F8EF9
                8F8EF98E8DF98D8CF98B8AF98A89F98887F98888F98989F98A8AF98C8BF98D8D
                F98E8EF98E8EF98D8DF98B8BF88989F88889F88788F98888F98888F98A89F98C
                8CF98D8DF98E8DF98E8DF98E8DF98D8CFA8C8BFA8B8AFA8A8AF98A89F98A8AF9
                8A8AF98B8AF98C8AF98E8EF99392FA9595FA9595FB9595FB9394FB2828FE2121
                FE1B1BFE3535FD868684868684ACACE3AEAEE4B0B0E5D5D1EBF1ECF0F1ECF0F1
                ECF0F1ECF0F1ECF0ECE5E9EDE5E9F1ECF0F1ECF0F1ECF0F1ECF0EDE5E9ECE3E7
                F1EDF1EEE9EEF1ECF1F2EEF2F1ECF0F1ECF0EDE5E9ECE3E7F1EDF1EEE8EDF0EC
                F2EFE9EFF0ECF1EDE7ECF0EBF1F0ECF1F1ECF1EFEBF1EFE8EFF0ECF2EFE9EFF0
                ECF1EDE7ECF0EBF1F0ECF1F1EBF0F0ECF1EFE9F0EFEBF1ECE6EBEEE9F0F0EBF0
                EFEBF1EFE8EFF0ECF2EFE9EFEEEAF1EAE6F0EBE4EDEBE5F0EBE7F2EDE9F1EEEA
                F0EFEAF0EFE8EFF1EEF4F4F1F7F3EFF5F0E9F0F0ECF2EFE9EFEEE9F0ECE5EDEB
                E4ECEBE5F0EBE7F2EAE6F1EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EF
                F1EEF4F4F1F7F4F1F7F2EDF3EEEAF3E8E4EFE9E2ECECE5EDEBE4ECEBE5F0EBE7
                F2EAE6F1EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4
                F1F7F2EDF3F1EDF3EFE9EFF0ECF1EDE7EDECE8F1EBE4EDEBE5F0EBE7F2EDE9F1
                EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F1EDF3EFE9EFF0ECF1EDE7
                EDECE8F1EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4
                F1F7F2EDF3F2EFF5F2EEF4EEEAF3EBE4EDEBE5F0EBE7F2EDE9F1EEEAF0EFEAF0
                EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F2EFF5F2EEF4EEEAF3EBE4EDEBE5F0EBE7
                F2EDE9F1EEEAF0EFEAF0EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F2EFF5F2EEF4EE
                EAF3EBE4EDEBE5F0EBE7F2EDE9F0EEE9EEF4F0F5F1ECF1F0EDF2ECE4EAF2EDF2
                F5F0F4F5F1F5F4F2F5F5F0F4F6F4F7F7F5F9F7F5F9EFE7EBEFE7EBF5F1F5F1EC
                F1F0EDF2ECE4EAF3EEF2F6F2F5F0EAEBF4EFF0F8F5F6F9F6F7F9F6F7F8F5F6F7
                F4F5F8F6F8F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6F9F9F7F9F9F7F8F9F7F8
                FAF8F8FAF8F8F9F7F8F9F7F9F8F6F9F8F6F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7
                F8F8F6F7F9F7F8F9F7F8FAF6F7F9F6F7F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8FA
                F8F8FAF8F8FAF8F8FAF8F8F9F7F8F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F6F7
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8FAF7F8F9F7F8F9F7F8F8F6F8F3EF
                F1EFEBF3EBE7F3B4B4E6B2B1E5B0AFE5BDBCE88686848B8B88CABEBECBBFBFCC
                C0C0E3DAD8F5EFEBF5EFEBF4EEEBF7F2EEF7F1EFF3EBE9F6EFEDF8F3F1F9F5F3
                F9F4F1F7F1EFF3EBE9F6EFEDF8F3F1F9F5F3F9F4F1F7F1EFF3EBE9F6EFEDF8F3
                F1F9F5F3F9F4F1F7F1EFF3EBE9F8F2F0F8F3F1F9F5F3F9F4F1F7F1EFF3EBE9F8
                F2F0F8F3F1F9F5F3F9F4F1F7F1EFF3EBE9F8F2F0F8F3F1F9F5F3F9F4F1F7F1EF
                F3EBE9F8F2F0F8F3F1F9F5F3F9F4F1F9F4F2F4EDEBF8F2F0F8F3F1F9F5F3F9F5
                F3FAF6F4F9F5F3F8F2F0F8F3F1F9F5F3F9F5F3FAF6F4F9F5F3F8F2F0F8F3F1FA
                F6F4F9F5F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4F9F5F3FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF5F3F8F3F1FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4
                FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6
                F3FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4
                FAF6F4FAF6F3FAF6F4F9F5F3F9F4F2FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6
                F4F9F5F3F9F4F2FAF6F4FAF6F4F8F3EFF5EEEACFC2C1CDC1C0CCC0C0D5CBC98B
                8B88E2E2E1F2EFEFF2EFEFF2EFEFF8F6F5FCFBFAFCFBFAFCFAFAFBFAF9FBF9F8
                FAF8F7FBFAF9FCFBFAFBF9F8FCFAF9FDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFDFB
                FBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFCFBFAF9F6F5FDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFCFBFAFDFBFAFDFCFBFDFCFCFDFCFCFDFC
                FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFCF9F9FDFCFBFDFCFBFDFBFAFD
                FBFAFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFBFAFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCFBFAFDFCFBFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCF9F9FDFCFB
                FEFDFCFEFDFCFDFBFAFDFCFBFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFB
                FBFAF6F6FEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFCFEFDFCFCFAFAFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFDFCFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFBFBFEFCFCFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFDFEFD
                FDFEFDFCFEFDFCFEFDFCFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFDFE
                FDFCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFD
                FEFDFDFEFDFCFCFBFAFAF8F8FBFAF9FBF9F7FCFAF9FDFCFBFDFAF9FEFDFCFEFD
                FCFEFDFCFDFCFAFCFAF8FAF6F6FDFBFBFEFDFDFEFDFDFCFBFBFCFAF9FCFAF9F3
                F0EFF2EFEFF2EFEFF4F2F1E2E2E18B8B880101FE0606FF0E0EFF3637FD8686FA
                9191FA9394FB9695FB9291F98F8EF68C8AF48A87F58988F58989F68887F68686
                F68685F68785F68988F88C8BF98E8CF98E8CF88C8BF68987F48684F48786F58A
                8AF88B89F88B8AF78C8CF9908DF98E8DF88C8BF68988F48885F48886F58A89F7
                8D8BF98C8CF78A8CF88C8CF98D8DF98D8CF88C8AF68A88F58986F58888F58B8A
                F88C8CF88C8AF88A89F88D8BF88E8DF88E8DF78D8AF68888F48886F48986F58C
                89F88C8BF98C8BF98C8CF98D8CF88E8CF88D8CF78C8AF68A88F48A87F58A88F5
                8B89F68C8BF78C8BF78D8CF88D8CF88E8CF88E8CF78C8BF58988F48A88F58B89
                F78E8DF98F8FFA908FFA8F8FFA8E8FFA8F8FFA9090FA9090FA8F8FF98F8EF98F
                8EF9908FF99090FA9090FA9090FA9090FA908EF98F8EF9908FF99090F99090F9
                9090FA8F8FFA9090F99090FA9090FA9090FA9190F88F8FF98F8FF99090FA9090
                FA9090FA8F8FFA918FF88F8EF88F8EF89090F99090FA9090FA8F8FFA918FF88F
                8EF88F8EF89090F99090FA9090FA8F8FFA918FF88F8EF88F8EF89090F99090FA
                9090FA8F8FF99090F99090FA9090FA9090FA9090FA9090FA8F8FFA9090F99090
                FA9090FA9090FA9090F99090FA8F8FFA9090F99090FA9090FA9090FA9090F890
                90FA8F8FFA9090F99090FA9090FA9090FA9090FA908FFA8F8FFA9090F99090F9
                9090FA9090FA9090F9908FFA908FFA9090F99090F99090FA9090FA9090FA908F
                F98F8FFA908FF99090FA9090FA9090FA9392FB9595FB9595FB9494FB9393FA93
                93FB9393FA9393FB9595FB9595FB9595FB9494FA9494FA9393FB9393FA9393FB
                9595FB9595FB9595FB9494FA9494FA9494FB9595FB9595FA9494FA9292FA8F8F
                F88C8BF98A8AF98989F88988F88988F88988F88988F88887F88685F98383F983
                83F98282F98482F98684F98887F98988F88988F88988F88888F88787F88585F8
                8484F88182F98182F98383F98684F98787F88988F88988F78A88F78B89F88D8A
                F98C8AF98A89F98988F98787F98685F98584F98583FA8584FA8888F98D8CF990
                8FF99090FA9090FA8F8FFA1717FE1111FF0B0BFF2727FE8B8B888B8B880101FE
                0606FF0E0EFF3637FD8686FA9191FA9394FB9695FB9291F98F8EF68C8AF48A87
                F58988F58989F68887F68686F68685F68785F68988F88C8BF98D8CF98E8BF88C
                89F68A87F58885F48887F58A8AF78B8AF88C8BF88D8CF98E8DF98E8DF88C8BF6
                8A88F48987F48988F58A89F78C8BF88C8CF78A8CF88C8CF98D8DF98D8CF88C8A
                F68A88F58A87F58A88F68B8AF78C8CF88C8BF88C8BF88D8BF88E8CF88D8BF78C
                8AF68A88F48887F58A87F68C89F88C8BF98C8BF98C8CF98D8CF88D8CF88D8CF7
                8C8AF68A88F58A87F58B89F68B8AF68C8BF78C8BF88D8CF88D8CF88E8CF88D8C
                F78C8AF58B89F48A88F58B89F78E8CF98F8EFA908FFA8F8FFA8E8FFA8F8FFA90
                90FA9090FA8F8FF98F8EF98F8EF9908FF99090FA9090FA9090FA9090FA908FFA
                908FF9908FF99090F9908FF9908FFA8F90FA9090F99090FA9090FA9090FA9090
                FA908FF99090FA9090FA9090FA9090FA908FFA918FF9908FF9908FF99090F990
                90FA9090FA908FF9918EF88F8EF88F8FF89090F99090FA9090FA8F8FF9918FF9
                908EF9908EF99090F99090FA9090FA9090F99090F99090FA9090FA9090FA9090
                FA9090FA908FF9908FF99090FA9090FA9090FA908FF9908FF8908FF9908FF990
                90FA9090FA9090F99090F89090F98F8FFA9090F99090FA9090FA9090FA908FF9
                908FF9908FF9908FF99090F99090FA9090FA908FF9908FF9908FF9908FF99090
                F99090FA9090F9908FF9908FF9908FFA908FF99090FA9090FA9190FA9392FA94
                94FA9494FA9494FB9393FB9393FB9393FA9393FB9494FB9595FA9595FA9494FA
                9393FA9393FA9393FA9393FB9494FB9595FB9595FB9494FA9494FA9494FB9494
                FA9594FA9493FA9292FA8F8FF98C8CF98A8AF98989F98989F98989F98988F889
                88F88887F98685F98484F98483F98383F98484F98686F98887F98988F98989F8
                8989F88888F88787F88686F88484F88383F98383F98485F98686F98887F88988
                F88A88F88A88F88B89F88B89F98A89F98A89F98888F98787F98686F98585F985
                85F98686F98989F98D8CF9908FF99090FA9090FA8E8DFA1717FE1111FF0B0BFF
                2727FE8B8B888B8B88A6A6E1A8A8E2AAAAE3D2CFE9F2EDF0F2EDF0F2EDF0F2ED
                F0F1ECEFF0EBF0EFE8ECF2EDF0F2EDF0F2EDF0F1ECEFF1ECF0EEE6EAF1ECF0ED
                E5E8F2EDF0F3EFF2F3EEF1F1ECEFF1ECF0EEE6EAF1ECF0EEE7EAF1EDF1F1ECF0
                F1ECF0EDE5E9ECE3E7F1EDF1EEE8EDF0ECF2EFE9EFF1ECF0F2EDF1F1ECF0EDE5
                E9ECE3E7F1EDF1EDE7ECEFECF1F0EBF0F0EBF0EDE6EBF0EBF1F0EBF0F1EDF2EF
                E9EFF1ECF0F2EDF1F0ECF0ECE6EFEDE8F0EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2
                F0ECF1F4F0F4F5F2F7F3F0F5F0EAF0F1ECF0F2EDF1F0EBEFEDE7ECEEE8EEEFEB
                F2EEEAF2EBE7F2EDE8F0EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F6
                F3F8F6F4F9F5F2F7F2EEF4EDE5ECECE6ECEEE9F0EEE9EFEFEBF2EEEAF2EBE7F2
                EDE8F0EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2
                F7F4F0F5F3EFF3F1EDF1EDE5E9ECE4EAEFEAF1EFEBF2EEEAF2EEE9F1EFEBF0F1
                EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2F7F4F0F5F3EFF3F1EDF1EDE5E9ECE4EA
                EFEAF1EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2
                F7F5F3F8F5F2F6F1ECF1F0EBF2EFEBF2EEEAF2EEE9F1EFEBF0F1EDF2F0ECF1F4
                F0F4F6F3F8F6F4F9F5F2F7F5F3F8F4F0F4F1ECF1F0EBF2EFEBF2EEEAF2EEE9F1
                EFEBF0F1EDF2F0ECF1F4F0F4F6F3F8F6F4F9F5F2F7F5F3F8F4F0F4F1ECF1F0EB
                F2EFEBF2EEEAF2EEE9F1F1EEF2F6F3F7F7F5F8F7F5F9F7F5F8F8F5F8F8F6F9F8
                F6F9F8F6F9F7F5F7F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F7F5F9
                F7F5F8F8F5F8F8F6F9F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F7F8F9F7F9F8F6
                F9F8F6F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F6F7F9F7F8F9F7F8FAF6F7F9
                F6F7F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8
                F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F6F7FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8F9F7F8FAF7F8F9F7F8F9F7F8F8F6F8F4F0F1F5F1F2F9F5F9F9F7F8FAF7F8FA
                F7F8FAF7F8FAF7F8FAF7F8F9F7F8F9F7F8F9F7F8F8F6F9F7F5F9F3F0F6EDE9F3
                EDE9F3AEAEE4ACACE3AAAAE2B9B8E68B8B88908F8DCABEBECABEBECABEBEE1D8
                D7F6EFECF6EFECF5EDEAF7F1EEF5EEECF4EDEAF3EBE8F3EDEBF8F4F1F8F4F1F8
                F3F1F4EDEAF3EBE8F3EDEBF8F4F1F8F4F1F8F3F1F3EDEBF3EBE8F3EDEBF8F4F1
                F8F4F1F8F3F1F2ECEAF2EBE9F8F5F3F8F4F1F8F4F1F8F3F1F2ECEAF2EBE9F8F5
                F3F8F4F1F8F4F1F8F3F1F2ECEAF2EBE9F8F5F3F8F4F1F9F5F2F9F5F3F2ECEAF2
                EBE9F9F6F4F8F4F1F9F5F2F9F5F3F2ECEAF2EBE9F9F6F4F8F3F1F8F2F0F8F2F0
                F6F2F0F4EEECF9F6F4F8F3F1F8F2F0F8F2F0F6F2F0F4EEECF9F6F4F9F6F4F8F2
                F0F9F3F1F8F5F3F8F5F3FAF7F5FAF7F5F8F3F1F9F4F2FAF7F5F9F6F4FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F8F4F2F9F6F4FAF7F5FAF7F5FAF7F5
                FAF7F5F2EAE9FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F2EAE9FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F5F2EAE9FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F2EAE9FAF7F5FA
                F7F5FAF7F5FAF7F5FAF7F5F2EAE9FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F3ECEB
                FAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F3ECEBFAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5F3ECEBFAF7F5FAF7F5FAF7F5FAF7F5FAF7F5F7F3F1FAF7F5FAF7F5FAF6F4F9
                F5F3FAF6F4F9F5F3FAF6F4FAF6F4F9F5F3F9F5F3FAF6F4FAF6F4FAF6F4FAF6F4
                F8F4F2F9F4F2FAF6F3FAF6F3FAF6F4FAF6F3F9F5F2F9F5F3FAF7F4FAF6F3F9F5
                F3FAF6F3F9F5F2F9F5F3FAF7F4FAF6F3F8F3F1F6F0EDFAF6F4FAF6F3FAF6F4FA
                F6F3F9F5F2F9F5F3FAF7F4FAF6F3F9F5F3FAF6F3F9F6F3F9F5F2F9F4F2F8F3F0
                FAF6F3FAF6F4FAF6F4FAF6F3F9F5F2F9F5F3FAF7F4FAF6F3F9F5F3FAF6F3F9F6
                F3F9F5F2F9F4F2F8F3F0FAF6F3FAF6F4FAF6F4FAF6F3F8F4F1FAF5F2FAF6F4FA
                F6F4FAF6F3F9F5F2F7F2F0FAF6F4F8F4F2F9F4F1FAF6F4F9F3F1FAF6F3F9F5F2
                F7F2F0FAF6F4F7F3F1F5EEEBFAF6F4FAF5F3F6F0EDF7F2EFF7F2F0FAF6F4F7F3
                F1F5EEEBFAF6F4FAF5F3F6F0EDF7F2EFF7F2F0FAF6F4F7F3F1F5EEEBFAF6F4FA
                F5F3F4ECE9F9F5F2F8F3F1F9F4F2F7F3F1F5EEEBFAF6F4FAF5F3F4ECE9F9F5F2
                F8F3F1F9F4F2F7F2F0F5EEEAF5EFEBCBBFBFCABEBECABEBED5CAC9908F8DE3E3
                E2F2EFEFF2EFEFF2EFEFF7F5F5FDFBFAFDFBFAFCFAF9FAF8F8FBF7F7FBF7F6FC
                F9F8FBF9F8FAF5F5FDFAF9FDFBFAFBF8F8FDFAFAFDFCFBFDFCFBFDFCFBFDFBFB
                FDFCFBFDFCFBFDFCFBFCFBFAFCFAF9FDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFDFC
                FBFDFCFBFCFBFAFAF8F7FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFBFAFCFBFAFC
                FBFAFBF9F8F9F6F5F8F4F3FBF9F8FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFBFB
                FEFCFCFEFCFCFEFDFCFDFCFBF9F5F4FAF7F6FDFCFBFCFAF9FCF9F8FDFCFBFCFB
                FAFCFAF9FDFCFBFDFCFBFDFCFBFAF7F6FDFCFBFCFBFAFEFDFCFEFDFCFEFDFCFD
                FCFCFEFDFCFEFCFCFEFDFCFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFCF9F9FDFCFBFEFDFCFEFDFCFEFDFCFEFD
                FCFDFCFBFEFDFCFEFDFCFEFDFCFDFCFBFDFBFAFEFCFBFEFDFCFEFDFCFCF9F8FA
                F8F8FBFAF9FEFDFCFEFDFCFEFDFCFEFDFCFBF9F9FBF9F9FCFAFAFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFDFBFBFDFBFBFEFDFCFEFDFCFDFBFBFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFDFCFCFBF9F8FEFDFC
                FEFDFCFEFDFCFDFBFBFDFBFBFEFDFDFEFDFDFCFAFAFAF8F8FCF9F9FEFCFCFEFD
                FDFEFDFCFEFDFCFEFDFCF7F2F2FDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFD
                FCFCFEFDFCFEFDFDFDFBFBFEFDFDFEFDFDFDFCFCFEFCFCFEFDFDFEFDFDFEFDFD
                FEFDFCFEFDFCFEFDFCFDFCFCFAF7F7FAF8F8FBFAFAFCFBFBFCFBFBFCFBFBFDFC
                FCFDFCFCFEFDFDFEFDFCFAF7F7F8F4F4FDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFD
                FCFCFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFCFAFAFEFDFDFEFDFCFEFDFDFEFDFDFBF8F8FBF9F9FEFDFCFEFDFCFBF9
                F9FBFAFAFEFDFDFEFDFDFEFDFCFEFDFDFEFDFDFEFDFDFDFCFCFEFDFDFDFCFCFE
                FDFCFEFCFCFEFDFCFEFDFDFBF8F7FAF8F7FDFCFBFBF9F8FAF8F8FDFBFBFDFBFB
                FCFAF9FBF9F8FCFAF9FDFCFCFDFBFBFDFCFBFCFBFAFCFBFAFCFBFAF2EFEFF2EF
                EFF2EFEFF4F2F1E3E3E2908F8D0100FF0000FF0301FF2929FE8383FB8C8BFA8E
                8EFA9090FA8E8EF78B8AF58987F38784F58784F68786F88686F78585F78584F7
                8584F88685F98887F98987F98A89F88B89F58785F38481F48482F58787F88887
                F98887F98888F88989F98989F88A88F68886F38685F48685F68887F88988F989
                88F98788F98887F98988F98988F88988F58886F68785F58785F58889F88989F9
                8988F98988F88988F88988F98A88F78987F58785F38584F38785F68887F88988
                F98988F98988F98988F88988F88988F78887F58785F48785F58785F68887F789
                88F78988F88988F98989F98989F88A89F78C88F48886F28784F58987F78B8AF9
                8C8CFA8C8BFA8C8BFA8B8BFA8B8BFA8B8BFA8B8BF98B89F88889F88A8AF78C8B
                F98C8CFA8C8CFA8C8CFA8C8CFA8B8BFA8B8AF98C8BF88B8AF78A89F88A8AF88C
                8CFA8C8CFA8C8CFA8C8CFA8C8CFA8B8BFA8A8AFA8B8BF98C8CF98C8CFA8C8BF9
                8C8CFA8B8BFA8A8AFA8C8BF88C8CF98C8CFA8C8BF98B8AF68A87F58A89F88C8B
                F88C8CF98C8CFA8C8BF98B8AF68B8AF48B89F88C8BF88C8CF98C8CFA8C8BF98B
                8AF78B89F68C8BF88C8CFA8C8CFA8C8CFA8C8CFA8B8AF78B87F38C8BF88C8CFA
                8C8BF88B87F58B87F18B8AF78A88F48C8BF88C8CFA8C8BF88B87F28B86F18B8A
                F78A89F48C8BF88C8CFA8C8BF88B88F48C88F48B8AF78B88F38C8BF88C8CFA8C
                8BF88B89F38C88F48B8AF78A87F38C8BF88C8CFA8C8AF68B89F48C89F68B8AF7
                8A86F18C8BF78C8BFA8C89F68D8BF68F8FF99090FA9090FA9090FA8F8FFA9090
                F99090FA9090FA9090FA9090FA908FF98F8FFA8F8FFA9090F89090FA9090FA90
                90FA9090FA908FF98F8FFA8F8EF99090F99090F9908FF98F8DFA8C8CF98887F9
                8585FA8483F98483F98483F98483F88483F88383F98282F98181F9817FF9807F
                F98081F98382F98584F98585F88584F88584F88584F88484F88383F88282F980
                80F97F80F98082F98383F98584F88584F88484F88684F88785F88987F78987F8
                8887F88685F88484F88283F98081F98080F98182F98584F88989F88B8AF98C8C
                FA8C8CFA8B8BFA0606FF0000FF0000FF2323FE908F8D908F8D0100FF0000FF03
                01FF2929FE8383FB8C8BFA8E8EFA9090FA8E8EF78B8AF58987F38784F58784F6
                8786F88686F78585F78584F78584F88685F98887F98988F98A88F88987F68785
                F58682F58583F58786F88887F98987F98988F98989F98A89F88988F78886F487
                85F58685F68887F88988F98988F98788F98888F98988F98988F88988F68886F6
                8785F58785F68888F88989F98988F98988F88988F88988F98A88F78987F58785
                F38685F58786F68887F88988F98988F98988F98988F88988F88988F78887F587
                86F58785F68785F68887F78988F78988F88988F98989F98989F88A89F78B88F4
                8886F38885F68987F88B89F98C8CFA8C8BFA8B8BFA8B8BFA8B8BFA8B8BFA8B8B
                F98B89F9898AF88A8AF78B8BF98C8CFA8C8CFA8C8CFA8C8CFA8B8BFA8B8AF98C
                8BF88B8AF78B8AF88B8BF98C8BFA8C8CFA8C8CFA8C8CFA8C8CFA8B8BFA8B8BFA
                8B8BF98C8CFA8C8CFA8C8BFA8C8CFA8C8BFA8B8BF98B8BF98C8CF98C8CFA8C8B
                F98B8AF88B89F78B8AF88B8BF88C8CF98C8CFA8C8BF98B8BF88B8AF78B8AF88C
                8BF98C8CF98C8CFA8C8BF98B8BF88B8AF78C8BF88C8CFA8C8CFA8C8CFA8C8BFA
                8B8AF78B89F88C8BF98C8CFA8C8BF88B89F78B89F48B8AF88B88F68C8BF98C8C
                FA8C8BF98B8AF68B89F48B8AF88B8AF78C8BF98C8CFA8C8BF98C89F68C89F78B
                8AF88B89F68C8BF88C8CF98C8BF98C8AF78C89F68B8AF88A89F68C8BF88C8CF9
                8C8BF98C8AF78C8AF98B8AF88B89F78C8BF88C8BFA8C8BF88D8CF98F8FF9908F
                F9908FF9908FF98F8FF9908FF9908FF99090FA9090F9908FF98F8FF98F8FF98F
                8EF98F90F98F90FA9090FA908FF9908FF9908FF98F8FFA8F8EF98F8FF9908FF9
                8F8EF98E8DFA8C8BF98888F98685F98585F98584F98584F98484F88484F88483
                F98282F98181F98181F98180F98281F98383F98584F98585F98585F88584F885
                84F88484F88383F88282F98180F98081F98182F98484F98585F98585F88684F8
                8684F88786F88887F78787F88786F88685F88484F88283F98182F98181F98182
                F98584F88988F88B8AF98C8CFA8C8CFA8A8AFA0606FF0000FF0000FF2323FE90
                8F8D908F8DA6A6E1A6A6E1A6A6E1CFCCE8F3EEEFF3EEEFF3EEEFF3EEF0EFE7EA
                F0EBEDEDE7E7F2EDEEF3EDEEF3EEF0EFE7EAF1ECEDECE5E5F0E9EBEDE5E7F4EF
                F1F4F0F2F4F0F2EFE7EAF0EBEBECE4E4EFE8EAF0EAECF2EEF1F3EEF1F1ECEFF2
                EDF0EFE7EAF1ECF0EEE7EAF1EDF1F1ECF0F2EEF1F5EFF2F2EFF2F1ECF0EEE6EA
                F1ECF0EDE4E7F1ECEFF3EFF3F1EDF1ECE2E6EFE7EBF3EFF3F3EFF3F2EDF1F2EE
                F1F5EFF2F2EFF2F1ECF2F0EBF3EFEAF0F0ECF1EEE8EEF3EFF4F6F1F5F6F2F6F5
                F3F6F6F3F7F4F0F4F2EDF1F2EEF1F5EFF2F2EFF2F1EBF0EEE8EEEFEAEFF0ECF2
                F0EDF5F0EDF5EFEAF0F0ECF1EEE8EEF3EFF4F6F1F5F6F2F6F6F4F7F7F5F9F7F5
                F9F7F5F9F6F3F7EFE9EFECE7EDEFEAF2EEEAF1EFE9EFF0ECF2F0EDF5F0EDF5EF
                EAF0F0ECF1EEE8EEF3EFF4F6F1F5F6F2F6F5F3F6F5F1F5F6F4F7F7F4F8F7F3F7
                F6F3F7F3EFF3F1ECF0F3EDF1F5F2F7F2EEF3F1EDF2EDE6ECF2EEF3F6F1F5F6F2
                F6F5F3F6F5F1F5F6F4F7F7F4F8F5F1F5F3EDF1F2EDF1F2EDF1F4EEF2F4F0F4F0
                EAEFF0ECF1EDE6ECF2EEF3F6F1F5F6F2F6F5F2F5F5F1F5F6F4F7F7F5F9F7F5F9
                F7F5F9F6F3F7F5F2F6F1ECF1F0EDF2ECE4EAF2EDF2F5F0F4F5F1F5F4F1F4F4EF
                F3F6F4F7F7F5F9F7F5F9EFE7EBEFE7EBF5F1F5F1ECF1F0EDF2ECE4EAF2EDF2F5
                F0F4F5F1F5F4F2F5F5F0F4F6F4F7F7F5F9F7F5F9EFE7EBEFE7EBF5F1F5F1ECF1
                F0EDF2ECE4EAF3EEF2F6F2F5F0EAEBF4EFF0F8F5F6F9F6F7F9F6F7F8F5F6F7F4
                F5F8F6F8F8F6F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F8F6F7F9F7F8F9F7F8FAF6F7F9F6F7F9F7F8F9F7F8F9F7F8F9F7F8
                F9F7F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8F9F7F9F9F7F8F9F7F8FAF8F8FAF8
                F8F9F6F7FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8FAF7F8F9F7F8F9F7F8F8
                F6F8F4F0F1F5F1F2F9F6F9F9F7F8FAF7F8FAF7F8FAF7F8FAF7F8FAF7F8F9F7F8
                F9F7F8F9F7F8F8F6F9F8F6F9F7F5F8F3EEEFF4EFF1F8F6F8F9F7F8F9F7F8F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F6F8F5F2F5F1EDF3EFEBF2EFEBF2A8
                A8E2A6A6E1A6A6E1B8B7E5908F8D959592CABEBECABEBECABEBEE1D8D7F6F0EC
                F6F0ECF6F0ECF6F0EDF6F1EEF7F2EFF8F2EFF8F2EFF8F3F0F9F4F1F7F2EFF7F2
                EFF8F2EFF8F2EFF8F3F0F9F4F1F8F3F0F7F2EFF8F2EFF8F2EFF8F3F0F9F4F1F9
                F4F1F8F4F1F8F3F1F8F3F0F8F3F0F9F4F1F9F4F1F9F5F2F9F4F2F8F3F0F8F3F0
                F9F4F1F9F4F1F9F5F2FAF5F3F6F1EEF5EDEBF8F1EFF9F4F2FAF6F3FAF6F3F7F3
                F1FAF5F3FAF5F3FAF5F3FAF6F3FAF6F3F7F3F0F7F2F0F7F1EFFAF5F3FBF7F5FB
                F7F5FAF7F4FAF7F5FAF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5
                FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7
                F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FB
                F7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5
                FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7
                F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FB
                F7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5
                FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FAF7F5FAF7
                F5F5EEEDFAF7F5FAF7F5FBF7F5FAF6F4FBF7F5FBF7F5FAF7F5FAF7F5FAF7F5FA
                F7F5FAF7F5FAF7F5FAF6F4F9F4F2FAF6F4FBF7F5FBF7F5FBF7F5FAF6F4F9F5F3
                FAF6F4FBF7F5FBF7F5FBF7F5FAF6F4FAF6F4FBF7F5FBF7F5FAF6F4F9F4F2FAF6
                F4FBF7F5FBF7F5FBF7F5FAF6F4F9F5F3FAF6F4FBF7F5FBF7F5FAF6F4FAF6F3FA
                F6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FBF7F5FAF6F4FAF6F4FBF7F5
                FBF7F5FAF6F4FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F3FAF6F4FAF6F4FAF6
                F4F9F5F3F9F5F3FBF7F5FBF7F5FAF6F4FAF6F4FAF6F4FBF7F5FAF6F4F9F5F3FB
                F7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5F9F5F3FBF7F5FBF7F5FBF7F5
                FBF7F5FBF7F5FBF7F5FBF7F5F9F5F3FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7
                F5FBF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF6F4FAF5F3FBF7F5FBF7F5FBF7F5FB
                F6F4F9F4F1F7F0EDF6EFEBCABEBECABEBECABEBED5CAC9959592E4E4E4F2EFEF
                F2EFEFF2EFEFF7F5F5FDFBFAFDFBFAFDFBFAFCFAF9FDFBFAFDFBFAFDFBFAFDFB
                FAFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFBFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFCFBFAFAF8F7FAF7
                F6FBFAF9FDFCFCFDFCFCFDFCFCFEFCFCFEFCFCFEFCFCFEFDFCFEFDFCFDFBFAFC
                F9F9FCF9F9FDFCFBFEFDFCFEFDFCFEFDFCFDFCFBFCFAF9FDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFCFAF9FCFAFAFDFCFBFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFCFCFCFBFBFDFBFBFDFCFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFC
                FBFAF8F7F6F4F3F2F2F1F1F3F2F1F5F4F4F9F8F7F9F8F7FAF9F8FBFAF9FDFCFB
                FEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFD
                FCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFCFEFD
                FCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFDFEFDFDFEFDFDFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFC
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFCFDFC
                FCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFBF9F8FDFBFAFC
                F9F8FCF9F8FEFCFCFCF9F9FDFCFBFDFBFAFDFBFAFDFBFAF2EFEFF2EFEFF2EFEF
                F4F2F1E4E4E49595920100FF0000FF0201FF2524FD7F7FFB8787FA8788FA8888
                F98786F58786F68584F78483F78483F88484F98484F98383F88383F98383F984
                84FA8584FA8585FA8585F98685F78584F78483F88485F88586F98685FA8685FA
                8685FA8585FA8685F98685F88685F78484F78485F88685F98786FA8785FA8585
                FA8585FA8585FA8585F98685F88586F98585F88685F88585F98686FA8686FA86
                86F98687F98585F88583F68584F58585F58584F68584F88585F98687FA8786FA
                8685FA8585F98585F98583F78583F78584F78484F78485F88585F98686F98685
                F98685F98586F98585FA8685F68684F48684F68584F88686F98786FA8787FA87
                87FA8787FA8787FA8787FA8787FA8786F98786F88686F98686F98787FA8787FA
                8787FA8787FA8787FA8787FA8787FA8787F98787F98786FA8787FA8786F98787
                FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA87
                87FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA
                8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787
                FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA87
                87FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA
                8787FA8787FA8787FA8787FA8787FA8787FA8787F98787FA8787FA8787FA8787
                FA8787FA8787FA8787FA8787F98787FA8787FA8787FA8787FA8786FA8787FA87
                87F98787FA8787FA8888FA8A8AFA8B89F68B88F38C88F48B8AF68A86F08C8BF7
                8C8CFA8C89F58B88F48B88F78A89F88A89F88986F28B8AF78B8BFA8C89F58B88
                F48B88F78A89F88A89F88987F68A88F58B88F78A89F88987F88583F68282F97F
                7FF98080F98080F98080F98080F98180F98080F97F7FF97F7FF97F7FF98080F9
                8282FA8384FA8383F98282F98281F98282F98282F98281F98180F98080F9807F
                F98181FA8282FA8484F98382F98281F98281F98282F98483F88484F88482F884
                82F88282F88181F97F80F97F7EF97F7EF78282F88584F98686F98787FA8787FA
                8784FA0001FF0000FF0000FF2222FE9595929595920100FF0000FF0201FF2524
                FD7F7FFB8787FA8788FA8888F98786F58786F68584F78483F78483F88484F984
                84F98383F88383F98383F98484FA8584FA8585FA8685F98685F78584F78483F7
                8485F88584F98685FA8685FA8585FA8585FA8685F98685F88684F78484F78484
                F88585F98786FA8685FA8585FA8585FA8585FA8585F98585F88586F98585F886
                85F88585F98686FA8686FA8686F98686F98585F88584F68584F58585F68584F6
                8584F88585F98686FA8786FA8685FA8585F98585F98583F78584F78584F78484
                F78485F88585F98685F98685F98685F98585F98585FA8685F88685F58684F685
                84F88686F98786FA8787FA8787FA8787FA8787FA8787FA8787FA8786F98686F8
                8686F98686F98787FA8787FA8787FA8787FA8787FA8787FA8787FA8787F98787
                F98786FA8786FA8786FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA87
                87FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA8787FA
                8786FA8786F98787F98787FA8787FA8787FA8787FA8787FA8787FA8787FA8787
                FA8787FA8787FA8787FA8787F98787FA8787FA8787FA8787FA8787FA8786FA87
                86FA8787FA8787FA8787FA8787F98786F98787FA8787FA8787FA8787FA8787FA
                8787F98786F98786F98787FA8787F98787FA8787FA8787FA8787FA8787FA8786
                F98787F98787F98787F98787FA8786FA8787FA8786F98787F98787FA8787F987
                86FA8786FA8786F98787FA8786F98787FA8787FA8888F98989F98B89F78B89F5
                8C89F78B8AF68B88F48B8BF78C8CFA8C8AF68B89F68A88F78A89F98A89F88A88
                F68A8AF88A8BFA8C89F68B88F58A89F78A89F88A89F98988F78A89F78989F889
                89F98987F88583F68382F98181F98180F98180F98181F98081F98181F98080F9
                7F7FF97F7FF97F7FF98080F98282FA8383FA8383F98282F98281F98282F98282
                F98281F98180F98080F9807FF98181FA8282FA8484F98382F98281F98282F983
                83F98483F88484F88483F88483F88382F88181F98080F97F80F98080F78383F8
                8584F98686F98787FA8787FA8683FA0001FF0000FF0000FF2222FE9595929595
                92A6A6E1A6A6E1A6A6E1D0CDE8F3EEEFF3EEEFF3EEEFF3EFF0F3EFF0F4EFF0F4
                EFF0F4EFF0F3EEEFF3EFF0F3EFF0F4F0F1F4F0F1F4F0F1F4F0F1F4F0F1F4F0F2
                F4F0F2F5F0F2F5F1F2F5F1F2F5F1F2F5F1F2F5F1F3F5F1F3F2EDEFF3EEF0F1EB
                EBF0EAEBF0EAECF2EEF1F3EFF1F4F0F2F6F2F5F5F0F3F3F0F0EEE7E7EEE7E9F0
                EBEDF3F0F2F5F1F4F4F1F4F4EFF2F5F1F3F6F3F5F6F3F5F5F2F4F5F1F3F6F2F5
                F5F0F3F3EFF0F0EAEDF1EBF0F1EDF2F3EFF3F7F4F7F7F5F8F7F4F7F7F4F7F7F4
                F6F6F3F5F5F2F4F5F1F3F6F2F5F6F1F4F5F1F2F2EDF0F2EEF2F3F0F5F5F2F7F4
                F1F7F2EDF3F1EDF3F3EFF3F7F4F7F7F5F8F8F5F8F8F6F9F8F6F9F8F6F9F8F6F9
                F7F5F9F3F0F4EFEBF1F0EBF0EFEBF1EFE8EFF1EEF4F4F1F7F4F1F7F2EDF3F1ED
                F3F3EEF3F7F4F7F8F6F9F8F6F9F8F6F9F8F6F9F6F3F6F3EDEFF3EDEFF5F0F3F8
                F6F9F8F6F9F8F6F9F8F6F9F7F5F8F6F3F8F6F3F6F8F5F8F8F6F9F8F6F9F8F6F9
                F8F6F9F7F4F7F5F1F4F6F2F4F7F3F6F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F7F5
                F9F7F4F7F8F5F8F8F6F9F8F6F9F8F6F9F8F6F9F8F5F8F8F6F9F8F6F9F8F6F9F8
                F6F9F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9
                F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F7F5F9F7F5F8F8F5F8F8F6F9F8F6
                F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F8F6F9F7F5F9F7
                F5F8F8F5F8F8F6F9F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F7F8F9F7F9F8F6F9
                F8F6F9F9F7F9FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8F9F7F8F9F7F9F9F7F8F9F7F8FAF8F8FAF8F8F9F7F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8F9F7F8FAF7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F6F9F9F7F8
                FAF7F8FAF7F8FAF7F8FAF7F8FAF7F8F9F7F8F9F7F8F9F7F8F8F6F9F8F6F9F8F6
                F9F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F8F6F9F8F6F9F9F7F9F9F7F8FAF8F8FAF8F8F9F7F8
                F9F7F8FAF8F8FAF8F8F9F7F8F8F5F7F4F1F5F1EEF3F0ECF2F0ECF2A6A6E1A6A6
                E1A6A6E1B9B8E59595929A9997B8B0AFCABEBECABEBEE1D9D7F6F0ECF6F0ECF6
                F0ECF6F0EDF6F0EDF6F1EDF6F1EEF7F2EFF6F1EEF6F1EEF6F1EEF7F2EEF7F2EE
                F7F2EFF7F2EFF7F2EFF7F2EFF7F2EFF8F2EFF8F3F0F8F3F0F8F3F0F8F3F0F8F3
                F0F8F3F0F8F3F0F8F3F1F9F4F2F8F4F1F8F4F1F8F4F1F9F4F1F9F4F1F9F4F2F9
                F4F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F3F9F5F3F9F5F3F9F5F3F9F6F3FAF6F3
                FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF7F4FAF7F4FAF7F5FAF7F5FAF7
                F5FAF7F5FBF7F5FBF7F5FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF7F5FBF7F5FAF7
                F4FBF7F5FBF8F5FBF7F5FAF7F5FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF7F5FBF7F5FAF7F5FBF7F5FBF8F6FBF8F6FBF8F6FBF8F5FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FAF7F4F8F4F1CCC0C0CABEBECABEBEACA7A69A9997E6E5E5EDEBEBF2EFEFF2
                EFEFF7F5F5FDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFAFDFBFBFDFBFBFDFBFB
                FDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
                FDFCFCFDFCFCFDFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFDFCFBFEFDFCFEFDFCFDFCFCFEFDFCFE
                FCFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FDFCFCFBFAFAFAF9F9F9F8F8FBFAFAFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFC
                FCFBFBFBFAFAFBFAFAFBFAFAFCFBFBFCFBFBFCFBFBFDFCFCFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFCFEFDFDFEFDFCFEFDFDFEFDFDFEFDFCFEFDFCFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFCFBFBFCFAF9FDFB
                FAFDFCFCFEFCFCFEFDFDFEFDFDFEFDFCFDFCFBF2EFEFF2EFEFF2EFEFEAE9E9E6
                E5E59A99973B3AD80001FE0100FF2422FE7D7CFA8282FA8282FA8282FA8282F9
                8282F88282F98281F98281FA8281FA8181F98181FA8181FA8181FA8181FA8282
                FA8282FA8282F98282F98282F98282F98282F98282FA8282FA8282FA8282FA82
                82FA8282F98282F98282F98282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282F98282F98282F98282F98282F98282FA8282FA8282FA8282FA8282
                FA8282F98282F98281F88282F98282F88282FA8282FA8282FA8282FA8282FA82
                82F98282F98281F98282F98282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282F98282FA8282FA8282F88282F98282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8383FA8585FA8686FA8686FA8686FA8585FA8585FA8484FA85
                85FA8484FA8383FA8383FA8383FA8383FA8383FA8383FA8484FA8383FA8383FA
                8383FA8282FA8282FA8383F98383FA8383F98383F98281FA8080FA7E7EF97E7E
                F97E7EF97E7EF97F7FF97F80F97E7EF97E7DF97E7EF97E7EF97F7FF98180FA81
                81FA8180FA8080FA8080FA8081FA8080FA8080FA807FFA8080FA7F80FA8080FA
                8181FA8181FA8280FA8080FA8080FA8081F98081F98081F98181F98281F98281
                F98181F97F7FF97F7FF98081FA8282F98282FA8282FA8282FA8282FA8182FA01
                00FF0000FF0000FF605FBE9A99979A99973B3AD80001FE0100FF2422FE7D7CFA
                8282FA8282FA8282FA8282F98282F88282F98281F98281FA8281FA8181F98181
                FA8181FA8181FA8181FA8282FA8282FA8282F98282F98282F98282F98282F982
                82F98282FA8282FA8282FA8282FA8282F98282F98282F98282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282F98282F98282F98282F98282F98282
                FA8282FA8282FA8282FA8282FA8282F98282F98281F88282F98282F88282FA82
                82FA8282FA8282FA8282FA8282F98282F98281F98282F98282FA8282F98282FA
                8282FA8282FA8282FA8282FA8282FA8282F98282FA8282FA8282F88282F98282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA82
                82FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA
                8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282FA8282
                FA8282FA8282FA8282FA8282FA8282FA8282FA8384FA8584FA8585F98686FA86
                85FA8585F98584FA8484FA8584F98484F98483F98383FA8483F98383F98383FA
                8484F98484F98483F88483F98383FA8383FA8382FA8383F98383FA8383F98382
                F98281FA8080FA7F7EF97E7EF97E7EF97E7EF97F7FF97F7FF97E7EF97E7EF97E
                7EF97E7EF97F7FF98180FA8181FA8180FA8080FA8080FA8080FA8080FA8080FA
                807FFA807FFA7F7FFA8080FA8180FA8181FA8280FA8080FA8080F98081F98081
                F98081F98181F98281F98181F98180F97F7FF97F7FF98081F98282F98282FA82
                82FA8282FA8282FA8182FA0100FF0000FF0000FF605FBE9A99979A9997A1A1C5
                A6A6E1A6A6E1D0CDE8F4EFEFF4EFEFF4EFEFF4F0EFF5F0EFF5F0EFF5F0F0F5F0
                F0F5F0F0F5F0F0F5F0F0F5F1F0F5F1F0F5F1F1F5F1F1F5F1F1F5F1F2F5F1F2F6
                F1F2F6F2F2F6F2F2F6F2F2F6F2F2F6F2F3F6F2F3F6F2F3F6F2F3F6F3F3F6F3F3
                F6F2F3F6F2F4F7F3F4F7F3F4F7F3F4F7F3F4F7F4F4F7F4F5F7F4F5F7F3F4F6F3
                F4F7F3F5F7F4F5F7F4F5F7F5F6F8F5F6F8F5F6F8F5F6F8F4F5F8F4F5F7F4F5F7
                F4F5F8F5F6F8F5F7F8F5F6F8F5F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7F8F6F7
                F8F6F7F8F5F6F8F5F6F8F6F7F9F7F8F9F7F8F8F6F7F8F6F7F8F6F8F8F6F8F7F5
                F8F8F5F7F9F6F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F7
                F5F6F5F1F5F1ECF1F1EDF2F0EBF1F4F1F5F6F3F8F6F4F9F5F2F7F6F2F6F8F5F7
                F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
                F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
                F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7
                F8F9F7F8F9F7F8F9F7F8F9F7F8FAF7F8FAF7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8FAF7F8FAF8F8FAF8F8FAF8F8FAF8F8FBF8F8FAF7F8FAF7F8FAF7F8F9F7F8
                F9F7F8F9F7F8F9F7F8FAF7F8FAF7F8F9F7F8FAF7F8FAF7F8FAF7F8FAF7F8FAF7
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8
                F9F7F8FAF8F8FAF8F8FAF8F8FAF8F8F9F7F8F9F7F8FAF8F8FAF8F8FAF8F8FAF8
                F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9
                F7F8F9F7F8F9F7F8F9F7F8F9F7F8F9F7F8F8F5F7F5F2F5A6A6E1A6A6E1A6A6E1
                9F9EB39A9997FFFFFF9F9E9CD5CBCACABEBEE1D9D7F6F0EDF6F0EDF6F0EDF6F1
                EEF7F1EEF7F1EEF7F1EEF7F2EEF7F2EEF7F2EFF7F2EFF8F2EFF8F2EFF8F2EFF8
                F2EFF8F3EFF8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F4F1F9F4F1
                F9F4F1F9F4F1F9F4F1F9F4F1F9F4F2F9F4F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5
                F2F9F5F3FAF5F3FAF5F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F4FAF6F4FAF6F4FA
                F6F4FAF7F4FAF7F4FAF7F5FAF7F5FBF7F5FBF7F5FBF7F5FBF7F5FBF8F5FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6E1DBDBD1C6C6DBD1D09F9E9CFFFFFFFFFFFFE7E7E6F4F2F2F2EFEFF7F5
                F5FDFBFAFDFBFAFDFBFAFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFDFCFCFDFC
                FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFEFCFCFEFCFCFEFDFCFEFDFCFEFDFCFE
                FDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFC
                FEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFDFCFCFDFCFCFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFD
                FCFCFCFBFBFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFC
                FCFDFCFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFDFCFCFDFCFCFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDF7F6F6F3F1F1F6F3F3E7E7E6FFFFFFFFFF
                FF9F9E9C2120FC0000FD2322FD7B7BF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97F7FF97F7FF97F7FF97F7FF97F7FF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97D7EF97D7CF97D7DF97D7CF9
                7C7CF97D7DF97D7DF97D7CF97D7CF97D7CF97D7DF97E7EF97D7EF97E7DF97E7D
                F97D7DF97E7DF97D7DF97D7EF97E7EF97E7DF97E7DF97D7DF97D7DF97E7EF97E
                7EF97E7DF97E7EF97D7DF97D7DF97E7EF97E7FF97E7FF9807EFA8080FA807EFA
                7E7EFA7F7DF97F7EF97F7EF97E7EF97E7EF97E7EF97E7EF97E7EF90000FF0000
                FF2F2FFD9F9E9CFFFFFFFFFFFF9F9E9C2120FC0000FD2322FD7B7BF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7E
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97F7FF97F7FF97F7FF97F7FF97F7F
                F97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E
                7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF97E7EF9
                7D7EF97D7CF97D7CF97C7CF97C7CF97D7DF97D7DF97D7CF97D7CF97D7CF97C7D
                F97E7EF97D7DF97E7DF97E7DF97D7DF97D7DF97D7DF97D7DF97E7DF97E7DF97E
                7DF97D7DF97D7DF97E7EF97E7EF97E7DF97D7EF97D7DF97D7DF97E7EF97E7FF9
                7E7EF9807EFA7F7FFA807EFA7E7DFA7F7DF97E7EF97F7EF97E7EF97E7EF97E7E
                F97E7EF97D7DF90001FF0000FF2F2FFD9F9E9CFFFFFFFFFFFF9F9E9CBAB9E5A6
                A6E1D1CEE8F5F0EFF5F0EFF5F0EFF5F0EFF6F0EFF6F0EFF6F0F0F6F1F0F6F1F0
                F6F1F0F6F1F0F6F2F0F6F2F0F6F2F1F6F2F1F6F2F1F6F2F2F7F2F2F7F2F2F7F3
                F2F7F3F2F7F3F2F7F3F2F7F3F3F7F3F3F7F3F3F7F3F3F7F4F3F7F4F3F7F4F4F7
                F4F4F8F4F4F8F4F4F8F4F4F8F4F4F8F5F4F8F5F5F8F5F5F8F5F5F8F5F5F8F5F5
                F8F5F5F8F5F5F8F6F6F9F6F6F9F6F6F9F6F6F9F6F6F9F6F6F9F6F7F9F6F7F9F7
                F7F9F7F7F9F7F7F9F7F7F9F7F7F9F7F7FAF7F8FAF7F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8F9F6
                F6F7F4F6F6F2F5F6F2F5F6F4F8F7F5F9F8F6F9F8F6F9F9F7F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FA
                F8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8
                FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8
                F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8A6A6E1A6A6E1C3C2E79F9E9CFF
                FFFFFFFFFFA4A3A0A6A5A2D5CBCADED4D3F6F1EEF6F1EEF6F1EEF6F1EEF7F1EE
                F7F1EEF7F1EFF7F2EFF7F2EFF7F2F0F7F2F0F8F2F0F8F2F0F8F2F0F8F2F0F8F3
                F0F8F3F1F8F3F1F8F3F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F2F9F4F2F9F4F2F9
                F4F2F9F5F2F9F5F2F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F6F3F9F6F4
                FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F5FAF7F5FAF7F5FAF7F5FAF7F5FAF7
                F5FAF7F5FAF7F6FAF7F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F7FBF8F7FB
                F8F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FB
                F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7
                FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9
                F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FAF7F6F9F5F3D4
                CACADBD2D0A4A3A0A4A3A0FFFFFFFFFFFFE8E8E7E9E8E8F4F2F2F7F4F4FDFBFB
                FDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFBFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFD
                FCFBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
                FDFCFCFDFCFCFDFDFCFDFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFDFCFCF4F2F2F6F4F3E8E8E7E8E8E7FFFFFFFFFFFFA4A3A0
                9A98A61F1FFD2829FC7877F87979F97979F97979F97979F97979F87979F97979
                F97979F97979F97979F97979F8797AF97A7AF87A79F87979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97A79F87979F97979F97979F97979F97A7AF97979F97A79F97A79
                F97979F87979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97A79F97979F8797AF97979F87979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F87979F97979F979
                79F87A79F87A79F9797AF8797AF9797AF8797AF97A7AF97979F97B79F87A79F9
                7979F77A79F97A79F87A7AF97A7AF8797AF87A79F87979F97979F97A7AF97979
                F97979F87979F97979F9797AF97A79F97A7AF97A7AF77B7BF97A7AF97A7BF97A
                7AF9797AF97979F87979F97979F97979F97979F97979F90F0FFE2E2EFDA4A3A0
                A4A3A0FFFFFFFFFFFFA4A3A09A98A61F1FFD2829FC7877F87979F97979F97979
                F97979F97979F87979F97979F97979F97979F97979F97979F8797AF97A7AF87A
                79F87979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F87979F97A79F87A79F87979F97979F97A79F97979
                F97A7AF97979F97A79F97A79F97979F87979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97A79F9
                7979F8797AF97979F87979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F979
                79F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F9
                7979F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979
                F97979F97979F97979F97979F97979F97979F97979F97979F97979F97979F879
                79F97979F77979F9797AF87979F87A79F87B7AF9797AF8797AF9797AF8797AF9
                7A7BF97979F97B79F87A7AF97979F77A79F77A79F77A7AF87A7AF8797AF87A79
                F77979F97979F97A7AF87979F97A79F87979F8797AF9797AF97A7AF87A7AF87A
                7AF77B7BF97A7AF97A7BF87A7AF8797AF97979F87979F97979F97979F97979F9
                7979F90F0FFE2E2EFDA4A3A0A4A3A0FFFFFFFFFFFFA4A3A0A4A3A4BAB9E5C9C7
                E7F6F0EFF6F0EFF6F0EFF6F1EFF6F1EFF6F1EFF6F1F0F6F2F0F6F2F0F6F2F0F6
                F2F0F7F2F0F7F2F1F7F2F1F7F2F1F7F3F1F7F3F2F8F3F2F8F3F2F8F3F2F8F3F2
                F8F3F2F8F3F2F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F3F8F4F4F8F4F4F9F5
                F4F9F5F4F9F5F4F9F5F4F9F5F4F9F5F5F9F5F5F9F5F5F9F6F5F9F6F5F9F6F5F9
                F6F6F9F6F6FAF6F6FAF6F6FAF6F6FAF7F6FAF7F6FAF7F7FAF7F7FAF7F7FAF7F7
                FAF7F7FAF7F7FAF8F7FAF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FAF8F8FAF7F8FAF7F8FAF7F8FAF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FAF7F7FAF7F7FAF7F7FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8
                F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FB
                F8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8FBF8F8
                FBF8F8FBF8F8FBF8F8FAF7F7F8F4F4B0B0E3C4C2E7A4A3A0A4A3A0FFFFFFFFFF
                FFFFFFFFA9A8A5A9A8A5ABA9A7F8F3F0F7F2EFF7F2EFF7F2EFF8F2EFF8F2EFF8
                F2F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F1
                F8F3F1F8F3F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4
                F1F8F4F1F8F4F2F8F4F2F9F4F2F9F4F2F9F4F2F9F4F2F9F5F2F9F5F2F9F5F2F9
                F5F2F9F5F2F9F5F2F9F5F2F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3
                F9F5F3F9F5F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F4FAF6F4FAF6F4FAF6
                F4FAF6F4FAF6F4FAF6F4FAF6F4FAF7F5FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FCF9F8FCF9F8FCF9F8FCF9F8FC
                F9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8
                FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9
                F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FC
                F9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8
                FCF9F8FCF9F8FCF9F8FBF8F7FAF7F5F9F5F2F8F3F0F8F3F0F8F3F0ADABA8AFAC
                AAA9A8A5FFFFFFFFFFFFFFFFFFFFFFFFE9E9E8E9E9E8EAE9E9FDFCFBFDFCFBFD
                FCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFB
                FDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFC
                FBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD
                FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
                FDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFEFDFCFEFDFCFEFDFCFEFDFCFEFD
                FCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFCFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
                FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
                FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
                FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFCFDFCFCFDFC
                FBFDFCFBFDFCFBEAEAE9EBEAEAE9E9E8FFFFFFFFFFFFFFFFFFFFFFFFA9A8A5A9
                A8A59C9DAC7575F87574F77676F77776F77777F67777F67778F57778F57776F6
                7677F47776F47776F47879F57778F57B78F77775F57776F77776F57676F47575
                F77577F77775F77575F87476F77475F87774F97877F87576F77677F77575F676
                77F77676F57976F67877F47875F67675F67977F47876F67775F67778F37877F5
                7675F67775F87776F77475F87675F87475F97475F97476F77575F87475F87776
                F87474F87476F87578F77676F77877F77675F57678F87575F47675F57676F775
                75F87477F77575F87677F47476F67774F67674F67575F97575F67674F87578F7
                7676F77577F87674F87575F87475F77475F77475F87574F87574F97574F87476
                F87575F97574F97474F97474F97474F87474F97474F97475F97474F87474F974
                74F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F9
                7474F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474
                F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F974
                74F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F9
                7474F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474
                F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F974
                74F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F9
                7474F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474
                F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F974
                74F97474F97474F97474F97474F97474F97474F97474F97474F97474F97474F9
                7474F97575F97475F87575F77677F77877F47878F5797AF27979F37A7AF17978
                F27A79F07C7BF07A7BF17C7CF47B79F0797BF2787BF27A79F4797BF37C7BF17B
                7AEF7C7BF07B7CF17C7AF27A7BF2797DF2797BF27D79F57A79F4777AF3777AF3
                7777F4777BF4777BF47B7BF17B7AF17979F27B7BF27B7BF17A7BF07B7AF27979
                F47778F67878F77578F57474F97574F97474F99493B08988B6A9A8A5FFFFFFFF
                FFFFFFFFFFFFFFFFA9A8A5A9A8A59C9DAC7575F87574F77676F77776F77777F6
                7777F67778F57778F57776F67677F47776F47776F47879F57778F57B78F77775
                F57776F77776F57676F47576F67777F77776F77575F87477F77475F77774F979
                77F87676F77877F77675F57679F67676F47977F67877F37875F57675F67A77F4
                7877F67776F67778F37977F47675F57775F87777F77576F87776F87575F97475
                F97476F77575F87575F77776F77474F77577F77678F67776F77877F77675F576
                78F87575F47675F57676F77575F87477F67575F87678F37577F67774F67674F6
                7676F97676F67675F87579F77676F77577F87674F77575F77576F77475F77477
                F77574F87574F97574F67576F77675F87574F97475F97574F97476F87474F975
                75F97475F97475F87574F97674F87574F97474F97474F97474F97474F97574F9
                7474F97474F97575F87475F87574F97574F97474F97574F97475F87475F97475
                F87475F87474F87575F97474F87475F87474F97476F97474F97474F97475F974
                74F87574F97475F87474F97474F97475F87574F97474F97575F97475F97475F8
                7474F77575F77574F87474F87474F87474F87474F97574F87474F87474F97474
                F87476F97574F97675F97574F97474F97476F87575F97474F97474F97475F874
                74F77474F87475F77474F77476F97475F97574F97474F87474F97474F87475F8
                7575F97476F97575F97475F67474F97476F77576F77675F97474F87476F87676
                F87474F87675F87574F77675F97477F87774F77475F97577F67574F77474F875
                75F97576F77576F97675F87675F87575F97575F97675F87576F87575F87676F7
                7575F87576F77476F97474F87475F67776F87577F77677F77678F77977F4787B
                F47B7CF07979F27C7BF07A78F27B79EE7C7DED7C7BF07D7DF27D7BEF797BF178
                7CF07B79F47A7CF27C7CF17B7BEF7C7CEF7C7DEF7D7AF17A7BF27980F07A7CF2
                7D7AF47B79F3777AF2787AF27777F3777CF2787BF37D7CF07B7CEF7A7BF27C7C
                F07C7CEF7C7DEE7B7BF2797AF47779F57978F67578F57474F97574F97474F994
                93B08988B6A9A8A5FFFFFFFFFFFFFFFFFFFFFFFFA9A8A5A9A8A5A9A8A9F8F3F0
                F7F2EFF7F2EFF7F2EFF8F2EFF8F2EFF8F2F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3
                F0F8F3F0F8F3F0F8F3F0F8F3F0F8F3F1F8F3F1F8F3F1F8F4F1F8F4F1F8F4F1F8
                F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F1F8F4F2F8F4F2F9F4F2F9F4F2
                F9F4F2F9F4F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F2F9F5F3F9F5
                F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3F9F5F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF6F4FAF7F5
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8
                F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FB
                F8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6FBF8F6
                FBF8F6FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9
                F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FC
                F9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8
                FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9
                F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FCF9F8FBF8F7FAF7F5F9
                F5F2F8F3F0F8F3F0F8F3F0A9A8ADA8A8B0A9A8A5FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEA
                EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEB
                EAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEA
                EBEAEAEBEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAD
                AAAEADABAEADAAAEACAAACADACADACABADABACADABACACACABACACADABADACAC
                ADACADAAADADADADADABABAEACABADACABACACACABABACADADADAEACAAADADAB
                ADADAAADACAAAEADAAAEADACAEADABACACAAAEACABAEADABAEADABAEADADADAC
                ABADACAAADABACADACAAAEADADAEABADADABADACACAAADABACAEADACAEABADAD
                ACABAEADAAAEACABAEADAAAEADAAAEADAAAEADAAAEADACAEADADAEAAACADADAB
                ACABABADACAAAEACACADADAAAEADAAAEADABAEADABABADAAAEADABAAADAAADAC
                ABAEACABADABADAEABAAADABABADACABAEADABAEADABACACAAADACABAEADAAAE
                ADAAAEACAAAEADAAAEACAAAEADAAAEADACAEACAAAEACAAAEADAAAEADAAAEADAB
                AEADAAAEADAAAEADAAAEADAAACADAAAEADAAADADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAADADAAAEADAAAD
                ADAAAEADAAADACABACADACADACACADABACACACADABAAAEACAAAEA9ACB0ABA9B0
                AEAAACAAABADAAAAAEACABAEACA8ADAAAAB0AAA9AEADABADA9AAACAAA9AEABAA
                AEACA9AEA7A9AEAAAAADAAABADACAAACACACACACABACABABAEADABABACACACAC
                ABB0ADADACABABACADAAABABA9ACACA8AFAAA9AFAAAAAFADABAFACAAADABADAC
                ACABACAEADABAEADAAAEADAAAEADAAAEADAAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFAEADAAAEADABAEADAAAEACAAACADACADACABADABACAD
                ABACACACABACACADABADACACADACADAAADADADADADABABAEACABADACABACACAC
                ABABACADADADAEACAAADADABADADAAADACAAAEADAAAEADACAEADABACACAAAEAC
                ABAEADABAEACABAEADADADACABADACAAADABADADABAAAEADADAEABADADABAEAC
                ACAAADABACAEADACAEABADADACABAEADAAAEACABAEADABAEADAAAEADAAADADAA
                ADADACAEADADAEAAACACACABACABABADACAAAEACACACADABAEADAAAEADABAEAC
                ACABADABAEADABAAADAAADACACADACABADABADADABAAADABABADACABAEADABAE
                ACABACACAAACACABAEADAAAEADAAAEACAAAEADAAAEACACAEADAAAEADACAEACAA
                AEACAAAEADAAAEADAAAEADABAEADAAAEADAAAEADABAEADAAACADAAAEADAAADAD
                ABADADAAADADABAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAADADAAAE
                ADAAAEADAAADADAAAEADAAAEADAAAEADAAAEADABAEADAAAEADAAAEACAAAEADAA
                ADADAAAEADAAAEADAAAEADAAAEADABAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEACACAEADAAAEADAAAEADAAAEADAAAEACAAAEADABAE
                ADAAAEADAAAEACAAAEADAAADADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEACAA
                AEACABAEADAAAEADAAAEADAAAEADAAAEADAAADADAAAEADAAADADAAAEADAAAEAD
                AAAEADAAAEADAAAEACAAAEADAAAEACAAAEADAAAEADAAAEADAAAEADAAAEADABAE
                ADAAAEADAAAEACABAEADABAEACAAAEADABAEACAAAEADAAADACABAEADAAAEADAA
                AEADABAEADABAEADABAEACABAEADAAADACAAADADABAEADAAAEACAAAEADABAEAD
                AAADACAAADADAAAEADAAAEACAAADADABAEACAAAEACABAEACABAEACAAAEACAAAD
                ADAAADADABADACAAAEADABADADABAEADAAADACADACACADADABACACAAACACACAF
                ABAAAEACAAAFA9ACB1ABA9B1AEAAACA9ABADAAA9AFACA9AEACA8ADAAAAB1AAA9
                AFADABAEA9A9ACAAA9AEABAAAFACA9AFA7A8AEAAAAAEAAABAEACAAACACACADAC
                ABACABAAB0ACAAABACACACACABB0ACADACABABACABAAACAAA9ACACA7AFAAA8B0
                AAA9AFACABB0ACA9AEABACACACABADADADABAEADAAAEADAAAEADAAAEADAAFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAE
                ADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAA
                AEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEADAAAEAD
                AAAEADAAAEADAAAEADAAFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = sbEsportaTuttoClick
            end
            object LabelComAutoCount: TLabel
              Left = 236
              Top = 5
              Width = 215
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = '- - -'
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object PanelSelezioneColonneComAuto: TPanel
          Left = 0
          Top = 0
          Width = 729
          Height = 44
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnResize = PanelSelezioneColonneResize
          object SubPanelSelezioneColonneComAuto: TPanel
            Left = 0
            Top = 1
            Width = 684
            Height = 43
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            object Shape3: TShape
              Left = 432
              Top = 5
              Width = 238
              Height = 32
              Cursor = crArrow
              Brush.Color = 11064319
              ParentShowHint = False
              Pen.Color = clWhite
              ShowHint = False
            end
            object Label1: TLabel
              Left = 15
              Top = 50
              Width = 654
              Height = 44
              Alignment = taCenter
              AutoSize = False
              Color = 11064319
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Visible = False
            end
            object Shape2: TShape
              Left = 17
              Top = 52
              Width = 650
              Height = 40
              Brush.Style = bsClear
              Pen.Color = 28895
              Visible = False
            end
            object SpeedButton1: TSpeedButton
              Left = 69
              Top = 55
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '1'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton2: TSpeedButton
              Left = 414
              Top = 55
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '4'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton3: TSpeedButton
              Left = 184
              Top = 55
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '2'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton4: TSpeedButton
              Left = 529
              Top = 55
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '5'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton5: TSpeedButton
              Left = 299
              Top = 55
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '3'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton6: TSpeedButton
              Left = 644
              Top = 55
              Width = 21
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              AllowAllUp = True
              GroupIndex = 11111
              Caption = '+'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object Label4: TLabel
              Left = 17
              Top = 53
              Width = 50
              Height = 39
              Alignment = taCenter
              AutoSize = False
              Caption = 'Memorie'
              Color = 28895
              Font.Charset = ANSI_CHARSET
              Font.Color = 12902911
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
              Visible = False
            end
            object SpeedButton7: TSpeedButton
              Left = 69
              Top = 73
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '6'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton8: TSpeedButton
              Left = 184
              Top = 73
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '7'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton9: TSpeedButton
              Left = 299
              Top = 73
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '8'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton10: TSpeedButton
              Left = 414
              Top = 73
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '9'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton11: TSpeedButton
              Left = 529
              Top = 73
              Width = 114
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              GroupIndex = 199
              Caption = '10'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object SpeedButton12: TSpeedButton
              Left = 644
              Top = 73
              Width = 21
              Height = 16
              Cursor = crHandPoint
              Hint = 
                'Clicca qu'#236' per visualizzare tutti i'#13#10'documenti dell'#39'anno in cors' +
                'o.'
              AllowAllUp = True
              GroupIndex = 11111
              Caption = 'P'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object Shape4: TShape
              Left = 14
              Top = 5
              Width = 418
              Height = 32
              Brush.Color = 11064319
              Pen.Color = clWhite
            end
            object Label7: TLabel
              Left = 500
              Top = 14
              Width = 165
              Height = 12
              Cursor = crHandPoint
              Hint = 'Clicca per vedere il credito residuo.'
              Caption = 'Credito residuo:                     sms'
              Color = clGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              OnClick = SpeedButton14Click
            end
            object LabelSmsCreditoResiduoComAuto: TLabel
              Left = 590
              Top = 1
              Width = 50
              Height = 36
              Cursor = crHandPoint
              Hint = 'Clicca per vedere il credito residuo.'
              Alignment = taCenter
              AutoSize = False
              Caption = '- - -'
              Color = clOlive
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              Layout = tlCenter
            end
            object Image1: TImage
              Left = 442
              Top = 0
              Width = 48
              Height = 32
              Cursor = crHandPoint
              Hint = 'Clicca per vedere il credito residuo.'
              AutoSize = True
              ParentShowHint = False
              Picture.Data = {
                07544269746D617036120000424D361200000000000036000000280000003000
                000020000000010018000000000000120000C30E0000C30E0000000000000000
                0000EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEB009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF00
                9CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF
                009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009C
                DF009CDF009CDF009CDF009CDF009CDF009CDF009CDF00DCDFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB009CDF0070DF0070DF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                0070DF0070DF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEB009CDF0070DFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4
                E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF
                C4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1
                FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00DCDFC4E1FF
                C4E1FF00DCDF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF009CDFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DFC4E1FFC4E1FFC4E1FF0070DF
                00DCDFC4E1FFC4E1FFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF00DCDFC4E1FF0070DF0070DF0070DF0070DF0070DFC4E1FFC4E1FF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB00DCDFC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF00DCDFC4E1FF00DCDF00DCDF0070DF
                00DCDF0070DF0070DFC4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEB0070DFC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DFC4E1FFC4E1FFC4E1FFC4E1FF0070DF0070DF0070DF009CDFC4E1FFC4E1FF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB0070DFC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DFC4E1FFC4E1FF009CDF0070DF0070DF
                0070DF009CDFC4E1FFC4E1FFC4E1FF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEB0070DFC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF00DCDFC4E1FF0070DF0070DF0070DF00DCDFC4E1FFC4E1FFC4E1FF009CDF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB009CDF0070DFC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF009CDFC4E1FF00DCDF0070DF0070DF
                0070DF0070DF00DCDFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEB0070DF0070DFC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DFC4E1FFC4E1FF00DCDF0070DF009CDFC4E1FFC4E1FFC4E1FF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB0070DF0070DFC4E1
                FFC4E1FF009CDF0070DFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF009CDFC4E1FFC4E1FFC4E1FF
                C4E1FFC4E1FFC4E1FF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEBD7D7D70070DF009CDFC4E1FFC4E1FF009CDF0070DFC4E1FF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF00DCDFC4E1FFC4E1FF00DCDF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEB00DCDF0070DF009CDFC4E1
                FFC4E1FF009CDF0070DFC4E1FF009CDF009CDF009CDF009CDF009CDF009CDF00
                9CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF
                009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009C
                DF009CDF009CDF009CDF009CDF009CDFC4E1FF009CDF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEB0070DF0070DF00DCDFC4E1FFC4E1FF009CDF0070DFC4E1FFC4E1FF
                C4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1
                FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4
                E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF
                C4E1FF009CDF0070DFEBEBEBEBEBEBEBEBEBEBEBEB0070DF009CDFC4E1FFC4E1
                FFC4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DFEBEBEBEBEBEBEB
                EBEBEBEBEB0070DF0070DF009CDFC4E1FFC4E1FFC4E1FF009CDF009CDF009CDF
                009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009C
                DF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF00
                9CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF009CDF
                009CDF009CDFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB00DCDF0070DF0070DF0070
                DF00DCDFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4
                E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF
                C4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1
                FFC4E1FFC4E1FFC4E1FFC4E1FFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEB00DCDF009CDF009CDF0070DF0070DF0070DF0070DF
                0070DF009CDF00DCDFC4E1FFC4E1FFC4E1FFC4E1FF0070DF0070DF00DCDFC4E1
                FFC4E1FFC4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF0070DFC4E1FF0070DF0070DF00DCDFEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEB00DCDF009CDF0070DF0070DF0070DF0070DF0070DF009CDFC4
                E1FFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF009CDF0070DF0070DF0070DF0070DF
                0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070
                DFC4E1FF0070DF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                E3E3E300DCDF009CDF0070DF0070DF0070DF0070DF0070DF009CDFC4E1FFC4E1
                FFC4E1FFC4E1FFC4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070DF00
                70DF0070DF0070DF0070DF0070DF00DCDFC4E1FF0070DF0070DFEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE0E0E000
                DCDF009CDF0070DF0070DF0070DF0070DF009CDFC4E1FFC4E1FFC4E1FFC4E1FF
                C4E1FF009CDF0070DF0070DF0070DF0070DF0070DF0070DF0070DF0070DFC4E1
                FF00DCDF0070DF00DCDFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE7E7E700DCDF009C
                DF0070DF0070DF0070DF0070DF009CDFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF00
                9CDF0070DF0070DF0070DF0070DFC4E1FF0070DF0070DFEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB00DCDF009CDF0070DF0070DF
                0070DF0070DF0070DFC4E1FFC4E1FFC4E1FFC4E1FFC4E1FF00DCDF00DCDFC4E1
                FF0070DF0070DFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB00DCDF009CDF0070DF0070DF0070DF00
                70DF0070DFC4E1FFC4E1FFC4E1FFC4E1FF0070DF009CDFEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEB00DCDF009CDF0070DF0070DF0070DF0070DF0070
                DF0070DF00DCDFEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBE2E2E200DCDF009CDF009CDF009CDFEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
                EBEB}
              ShowHint = True
              Transparent = True
              OnClick = SpeedButton14Click
            end
            object SpeedButton13: TSpeedButton
              Left = 588
              Top = 8
              Width = 52
              Height = 25
              Cursor = crHandPoint
              Hint = 'Clicca per vedere il credito residuo.'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 25542
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsItalic]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton14Click
            end
          end
        end
      end
    end
  end
  object QryComAuto: TIBOQuery
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    IB_Connection = DM1.DBAzienda
    PessimisticLocking = True
    RecordCountAccurate = True
    OnCalcFields = QryComAutoCalcFields
    SQL.Strings = (
      'SELECT * FROM COM_LIST_PROC')
    Left = 98
    Top = 298
    object QryComAutoID: TIntegerField
      FieldName = 'ID'
    end
    object QryComAutoRIF_ID: TIntegerField
      FieldName = 'RIF_ID'
    end
    object QryComAutoRIF_TIPO: TStringField
      FieldName = 'RIF_TIPO'
    end
    object QryComAutoRIF_DATO: TStringField
      FieldName = 'RIF_DATO'
      Size = 60
    end
    object QryComAutoRIF_TIMEOFFSET_DAYS: TIntegerField
      FieldName = 'RIF_TIMEOFFSET_DAYS'
    end
    object QryComAutoRIF_DATAORASCADENZA: TDateTimeField
      FieldName = 'RIF_DATAORASCADENZA'
    end
    object QryComAutoRIF_TIME_THRESHOLD: TDateTimeField
      FieldName = 'RIF_TIME_THRESHOLD'
    end
    object QryComAutoRIF_DESCRIZIONE: TStringField
      FieldName = 'RIF_DESCRIZIONE'
      Size = 250
    end
    object QryComAutoMSG_TYPE_LETTER: TStringField
      FieldName = 'MSG_TYPE_LETTER'
      Size = 1
    end
    object QryComAutoMSG_TYPE_EMAIL: TStringField
      FieldName = 'MSG_TYPE_EMAIL'
      Size = 1
    end
    object QryComAutoMSG_TYPE_SMS: TStringField
      FieldName = 'MSG_TYPE_SMS'
      Size = 1
    end
    object QryComAutoMSG_OGGETTO: TStringField
      FieldName = 'MSG_OGGETTO'
      Size = 250
    end
    object QryComAutoSOGG_CODICE: TIntegerField
      FieldName = 'SOGG_CODICE'
    end
    object QryComAutoSOGG_RAGSOC: TStringField
      FieldName = 'SOGG_RAGSOC'
      Size = 60
    end
    object QryComAutoSOGG_INDIRIZZO: TStringField
      FieldName = 'SOGG_INDIRIZZO'
      Size = 80
    end
    object QryComAutoSOGG_NUMCIVICO: TStringField
      FieldName = 'SOGG_NUMCIVICO'
      Size = 10
    end
    object QryComAutoSOGG_COMUNE: TStringField
      FieldName = 'SOGG_COMUNE'
      Size = 60
    end
    object QryComAutoSOGG_PROVINCIA: TStringField
      FieldName = 'SOGG_PROVINCIA'
      Size = 3
    end
    object QryComAutoSOGG_CAP: TStringField
      FieldName = 'SOGG_CAP'
      Size = 5
    end
    object QryComAutoSOGG_CELLULARE: TStringField
      FieldName = 'SOGG_CELLULARE'
      Size = 30
    end
    object QryComAutoSOGG_EMAIL: TStringField
      FieldName = 'SOGG_EMAIL'
      Size = 250
    end
    object QryComAutoSOGG_INQUALITADI: TStringField
      FieldName = 'SOGG_INQUALITADI'
    end
    object QryComAutoSOGG_COM_SMS: TStringField
      FieldName = 'SOGG_COM_SMS'
      Size = 1
    end
    object QryComAutoSOGG_COM_EMAIL: TStringField
      FieldName = 'SOGG_COM_EMAIL'
      Size = 1
    end
    object QryComAutoSOGG_COM_LETTERA: TStringField
      FieldName = 'SOGG_COM_LETTERA'
      Size = 1
    end
    object QryComAutoPRAT_CODICE: TIntegerField
      FieldName = 'PRAT_CODICE'
    end
    object QryComAutoPRAT_DATA: TDateTimeField
      FieldName = 'PRAT_DATA'
    end
    object QryComAutoPRAT_ID: TIntegerField
      FieldName = 'PRAT_ID'
    end
    object QryComAutoPRAT_DESCRIZIONE: TStringField
      FieldName = 'PRAT_DESCRIZIONE'
      Size = 60
    end
    object QryComAutoPRAT_COM_SMS: TStringField
      FieldName = 'PRAT_COM_SMS'
      Size = 1
    end
    object QryComAutoPRAT_COM_EMAIL: TStringField
      FieldName = 'PRAT_COM_EMAIL'
      Size = 1
    end
    object QryComAutoPRAT_COM_LETTERA: TStringField
      FieldName = 'PRAT_COM_LETTERA'
      Size = 1
    end
    object QryComAutoMSG_AMEZZO: TStringField
      FieldName = 'MSG_AMEZZO'
    end
    object QryComAutoCOMPUTED_INDIRIZZOFULL: TStringField
      FieldKind = fkCalculated
      FieldName = 'COMPUTED_INDIRIZZOFULL'
      Size = 200
      Calculated = True
    end
    object QryComAutoCOMPUTED_MANCAINDIRIZZO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'COMPUTED_MANCAINDIRIZZO'
      Calculated = True
    end
  end
  object SourceComAuto: TDataSource
    AutoEdit = False
    DataSet = QryComAuto
    Left = 126
    Top = 298
  end
  object QryCom: TIBOQuery
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    DeleteSQL.Strings = (
      'DELETE FROM COM_MESSAGGI WHERE'
      'ID = :ID')
    IB_Connection = DM1.DBAzienda
    IB_Transaction = TransCom
    PessimisticLocking = True
    RecordCountAccurate = True
    OnCalcFields = QryComCalcFields
    SQL.Strings = (
      'SELECT * FROM COM_ELENCO_VIEW')
    Left = 98
    Top = 194
    object QryComID: TIntegerField
      FieldName = 'ID'
    end
    object QryComRIF_ID: TIntegerField
      FieldName = 'RIF_ID'
    end
    object QryComRIF_TIPO: TStringField
      FieldName = 'RIF_TIPO'
      Size = 25
    end
    object QryComRIF_RIFERIMENTO: TStringField
      FieldName = 'RIF_RIFERIMENTO'
      Size = 100
    end
    object QryComID_SOURCE: TIntegerField
      FieldName = 'ID_SOURCE'
    end
    object QryComID_SOGGETTO: TIntegerField
      FieldName = 'ID_SOGGETTO'
    end
    object QryComRIF_SOGGETTO_FULL: TStringField
      FieldName = 'RIF_SOGGETTO_FULL'
      Size = 80
    end
    object QryComDEST_RAGSOC: TStringField
      FieldName = 'DEST_RAGSOC'
      Size = 60
    end
    object QryComDEST_INDIRIZZO: TStringField
      FieldName = 'DEST_INDIRIZZO'
      Size = 80
    end
    object QryComDEST_NUMCIVICO: TStringField
      FieldName = 'DEST_NUMCIVICO'
      Size = 10
    end
    object QryComDEST_COMUNE: TStringField
      FieldName = 'DEST_COMUNE'
      Size = 60
    end
    object QryComDEST_PROVINCIA: TStringField
      FieldName = 'DEST_PROVINCIA'
      Size = 3
    end
    object QryComDEST_CAP: TStringField
      FieldName = 'DEST_CAP'
      Size = 5
    end
    object QryComDEST_EMAIL: TStringField
      FieldName = 'DEST_EMAIL'
      Size = 60
    end
    object QryComDEST_CELLULARE: TStringField
      FieldName = 'DEST_CELLULARE'
      Size = 60
    end
    object QryComID_PRATICA: TIntegerField
      FieldName = 'ID_PRATICA'
    end
    object QryComPRATICA: TIntegerField
      FieldName = 'PRATICA'
    end
    object QryComDATAPRATICA1: TDateTimeField
      FieldName = 'DATAPRATICA1'
    end
    object QryComRIF_PRATICA_FULL: TStringField
      FieldName = 'RIF_PRATICA_FULL'
      Size = 120
    end
    object QryComDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object QryComMSG_TYPE: TStringField
      FieldName = 'MSG_TYPE'
    end
    object QryComMSG_OGGETTO: TStringField
      FieldName = 'MSG_OGGETTO'
      Size = 250
    end
    object QryComDATAULTMOD_CREAZIONE: TDateTimeField
      FieldName = 'DATAULTMOD_CREAZIONE'
    end
    object QryComDATAULTMOD_GENERALE: TDateTimeField
      FieldName = 'DATAULTMOD_GENERALE'
    end
    object QryComNUMEROINVII: TIntegerField
      FieldName = 'NUMEROINVII'
    end
    object QryComPRIMOINVIO_DATAORA: TDateTimeField
      FieldName = 'PRIMOINVIO_DATAORA'
    end
    object QryComULTIMOINVIO_DATAORA: TDateTimeField
      FieldName = 'ULTIMOINVIO_DATAORA'
    end
    object QryComCOMPUTED_INDIRIZZOFULL: TStringField
      FieldKind = fkCalculated
      FieldName = 'COMPUTED_INDIRIZZOFULL'
      Size = 200
      Calculated = True
    end
    object QryComCOMPUTED_NUMEROINVIIFULL: TStringField
      DisplayLabel = 'COMPUTED_NUMEROINVIIFULL'
      FieldKind = fkCalculated
      FieldName = 'COMPUTER_NUMEROINVIIFULL'
      Size = 60
      Calculated = True
    end
    object QryComCOMPUTED_MANCAINDIRIZZO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'COMPUTED_MANCAINDIRIZZO'
      Calculated = True
    end
    object QryComCOMPUTED_ALERT: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'COMPUTED_ALERT'
      Calculated = True
    end
  end
  object SourceCom: TDataSource
    AutoEdit = False
    DataSet = QryCom
    Left = 126
    Top = 194
  end
  object QrySto: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_MSG'
        ParamType = ptUnknown
      end>
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    EditSQL.Strings = (
      
        'EXECUTE PROCEDURE  IMPAPPSEL_SETAPPSEL (:MASTER_ID, :ID, :SELECT' +
        'ED)')
    IB_Connection = DM1.DBAzienda
    IB_Transaction = TransCom
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM COM_STORICO'
      'WHERE ID_MSG = :ID_MSG'
      '')
    Left = 98
    Top = 223
    object QryStoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QryStoID_MSG: TIntegerField
      FieldName = 'ID_MSG'
      Required = True
    end
    object QryStoDATAORAINVIO: TDateTimeField
      FieldName = 'DATAORAINVIO'
    end
    object QryStoDESTINAZIONE: TStringField
      FieldName = 'DESTINAZIONE'
      Size = 200
    end
    object QryStoOPERATORE: TStringField
      FieldName = 'OPERATORE'
      Size = 10
    end
  end
  object SourceSto: TDataSource
    AutoEdit = False
    DataSet = QrySto
    Left = 126
    Top = 223
  end
  object TransCom: TIB_Transaction
    IB_Connection = DM1.DBAzienda
    AutoCommit = True
    Isolation = tiCommitted
    Left = 70
    Top = 194
  end
  object TimerAddMemoryGC: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerAddMemoryGCTimer
    Left = 104
    Top = 144
  end
  object MenuAggiungi: TPopupMenu
    Left = 154
    Top = 194
    object sms1: TMenuItem
      Caption = 'sms'
      OnClick = sms1Click
    end
    object email1: TMenuItem
      Caption = 'e-mail'
      OnClick = email1Click
    end
    object lettera1: TMenuItem
      Caption = 'lettera'
      OnClick = lettera1Click
    end
  end
  object TimerSmsCreditExpired: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = TimerSmsCreditExpiredTimer
    Left = 672
    Top = 27
  end
  object dxPrinter: TdxComponentPrinter
    CurrentLink = GridComLink
    PreviewOptions.EnableOptions = [peoCanChangeMargins, peoPrint]
    PreviewOptions.VisibleOptions = [pvoPrint]
    PreviewOptions.Caption = 'Anteprima di Stampa'
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    OnCustomDrawPageFooter = dxPrinterCustomDrawPageFooter
    OnCustomDrawPageHeader = dxPrinterCustomDrawPageHeader
    Left = 215
    Top = 194
    PixelsPerInch = 96
    object GridComLink: TdxGridReportLink
      Active = True
      Component = GridCom
      PrinterPage.CenterOnPageH = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 14000
      PrinterPage.GrayShading = True
      PrinterPage.Header = 14000
      PrinterPage.Margins.Bottom = 22000
      PrinterPage.Margins.Left = 14000
      PrinterPage.Margins.Right = 14000
      PrinterPage.Margins.Top = 19000
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.Font.Charset = ANSI_CHARSET
      PrinterPage.PageFooter.Font.Color = clBlue
      PrinterPage.PageFooter.Font.Height = -8
      PrinterPage.PageFooter.Font.Name = 'Arial'
      PrinterPage.PageFooter.Font.Style = [fsItalic]
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '')
      PrinterPage.PageHeader.Font.Charset = ANSI_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlue
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Arial'
      PrinterPage.PageHeader.Font.Style = [fsBold, fsItalic]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleFactor = 80
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44298.513795046300000000
      ReportDocument.Creator = 'Mauri Fly'
      ReportTitle.Font.Charset = ANSI_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -13
      ReportTitle.Font.Name = 'Arial'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Mode = tmNone
      ReportTitle.Text = 'Comunicazioni'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsCards.Shadow.Color = clBlack
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.BandHeaders = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      SupportedCustomDraw = True
      OnCustomDrawBandCell = GridComLinkCustomDrawBandCell
      OnCustomDrawCell = GridComLinkCustomDrawCell
      OnCustomDrawHeaderCell = GridComLinkCustomDrawHeaderCell
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
