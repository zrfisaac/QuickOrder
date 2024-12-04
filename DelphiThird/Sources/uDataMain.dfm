object DataMain: TDataMain
  Height = 480
  Width = 640
  object fdLinkMssql: TFDPhysMSSQLDriverLink
    Left = 48
    Top = 8
  end
  object fdConnection: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL')
    Transaction = fdTransaction
    Left = 48
    Top = 64
  end
  object fdTransaction: TFDTransaction
    Connection = fdConnection
    Left = 48
    Top = 120
  end
  object fdQuery: TFDQuery
    Connection = fdConnection
    Transaction = fdTransaction
    Left = 48
    Top = 176
  end
end
