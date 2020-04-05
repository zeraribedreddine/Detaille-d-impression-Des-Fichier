object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 353
  Width = 608
  object MyConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\kikatokiro\Desktop\login form exemple with per' +
        'mition\DB\test1.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    AfterConnect = MyConnectionAfterConnect
    BeforeDisconnect = MyConnectionBeforeDisconnect
    Left = 272
    Top = 80
  end
  object qry_login: TFDQuery
    Active = True
    Connection = MyConnection
    SQL.Strings = (
      'select * from Tabl_Login')
    Left = 176
    Top = 160
    object qry_loginid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_loginnom: TWideStringField
      FieldName = 'nom'
      Origin = 'nom'
      Size = 50
    end
    object qry_loginPassWord: TWideStringField
      FieldName = 'PassWord'
      Origin = '[PassWord]'
      Size = 50
    end
    object qry_logindroit: TWideStringField
      FieldName = 'droit'
      Origin = 'droit'
      Size = 50
    end
  end
  object ds_qry_login: TDataSource
    DataSet = qry_login
    Left = 360
    Top = 160
  end
  object tbl_Detaille_Impression: TFDTable
    Active = True
    AfterScroll = tbl_Detaille_ImpressionAfterScroll
    IndexFieldNames = 'id'
    Connection = MyConnection
    UpdateOptions.UpdateTableName = 'Tabl_detaille_impression'
    TableName = 'Tabl_detaille_impression'
    Left = 168
    Top = 240
    object tbl_Detaille_Impressionid: TFDAutoIncField
      Alignment = taCenter
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbl_Detaille_Impressionnom_fichier: TWideStringField
      Alignment = taCenter
      FieldName = 'nom_fichier'
      Origin = 'nom_fichier'
      Size = 100
    end
    object tbl_Detaille_Impressionnbr_impression: TIntegerField
      Alignment = taCenter
      FieldName = 'nbr_impression'
      Origin = 'nbr_impression'
    end
    object tbl_Detaille_Impressionnom_utilisateur: TWideStringField
      Alignment = taCenter
      FieldName = 'nom_utilisateur'
      Origin = 'nom_utilisateur'
      Size = 50
    end
    object tbl_Detaille_Impressiondate_impression: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'date_impression'
      Origin = 'date_impression'
    end
  end
  object ds_tbl_Detaille_Impression: TDataSource
    DataSet = tbl_Detaille_Impression
    Left = 360
    Top = 240
  end
  object frxReport1: TfrxReport
    Version = '6.4.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43926.810757303200000000
    ReportOptions.LastChange = 43926.825029294000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'New Variable1'
        Value = 
          'COUNT(,<frxDBDataset1."nbr_impression">)[SUM(<frxDBDataset1."nbr' +
          '_impression">)]'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 687.874460000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 228.653680000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxDBDataset1nom_fichier: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 37.795300000000000000
          DataField = 'nom_fichier'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cairo Black'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."nom_fichier"]')
          ParentFont = False
        end
        object frxDBDataset1nbr_impression: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataField = 'nbr_impression'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cairo Black'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."nbr_impression"]')
          ParentFont = False
        end
        object frxDBDataset1nom_utilisateur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 34.015770000000000000
          DataField = 'nom_utilisateur'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cairo Black'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."nom_utilisateur"]')
          ParentFont = False
        end
        object frxDBDataset1date_impression: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          DataField = 'date_impression'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Cairo Black'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."date_impression"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 90.708720000000000000
          Width = 268.346630000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1593#1583#1583' '#1606#1602#1585#1575#1578' '#1586#1585' '#1591#1576#1575#1593#1577' '#1602#1575#1574#1605#1577' '#1578#1604#1575#1605#1610#1584)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 90.708720000000000000
          Width = 268.346630000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1593#1583#1583' '#1606#1602#1585#1575#1578' '#1586#1585' '#1591#1576#1575#1593#1577' '#1602#1575#1574#1605#1577' '#1575#1604#1586#1576#1575#1574#1606)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 90.708720000000000000
          Width = 49.133890000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 15.118120000000000000
          Width = 291.023810000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1601#1575#1589#1610#1604' '#1575#1604#1591#1576#1575#1593#1577' ')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 90.708720000000000000
          Width = 49.133890000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1587#1605' '#1575#1604#1608#1579#1610#1602#1577)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1593#1583#1583' '#1575#1604#1606#1602#1585#1575#1578)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 7.559060000000000000
          Width = 185.196970000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Cairo Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582' '#1608#1587#1575#1593#1577' '#1575#1604#1591#1576#1575#1593#1577)
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 687.874460000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 3.779530000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 3.779530000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 228.653680000000000000
          Top = 3.779530000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = ds_tbl_Detaille_Impression
    BCDToCurrency = False
    Left = 152
    Top = 56
  end
end
