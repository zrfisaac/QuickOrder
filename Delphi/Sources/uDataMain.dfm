object DataMain: TDataMain
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object fdTraDatabase: TFDTransaction
    Connection = fdConDatabase
    Left = 48
    Top = 96
  end
  object fdConDatabase: TFDConnection
    Transaction = fdTraDatabase
    Left = 48
    Top = 24
  end
  object fdTabProduct: TFDTable
    Connection = fdConDatabase
    Transaction = fdTraDatabase
    UpdateTransaction = fdTraDatabase
    Left = 528
    Top = 24
  end
  object fdUpdProduct: TFDUpdateSQL
    Connection = fdConDatabase
    Left = 528
    Top = 96
  end
  object dtsProduct: TDataSource
    DataSet = fdTabProduct
    Left = 528
    Top = 312
  end
  object fdTabClient: TFDTable
    Connection = fdConDatabase
    Transaction = fdTraDatabase
    UpdateTransaction = fdTraDatabase
    Left = 392
    Top = 24
  end
  object fdUpdClient: TFDUpdateSQL
    Connection = fdConDatabase
    Left = 392
    Top = 96
  end
  object dtsClient: TDataSource
    DataSet = fdTabClient
    Left = 392
    Top = 312
  end
  object exConDatabase: TSQLConnection
    Left = 48
    Top = 168
  end
  object adConDatabase: TADOConnection
    Left = 48
    Top = 240
  end
  object adTabClient: TADOTable
    Left = 392
    Top = 240
  end
  object adUpdProduct: TADOTable
    Left = 528
    Top = 240
  end
  object exTabClient: TSQLTable
    Left = 392
    Top = 168
  end
  object adTabProduct: TSQLTable
    Left = 528
    Top = 168
  end
  object fdQuery: TFDQuery
    Connection = fdConDatabase
    Left = 280
    Top = 24
  end
  object exQuery: TSQLQuery
    Params = <>
    Left = 280
    Top = 168
  end
  object adQuery: TADOQuery
    Connection = adConDatabase
    Parameters = <>
    Left = 280
    Top = 240
  end
  object fdLkMysql: TFDPhysMySQLDriverLink
    Left = 168
    Top = 24
  end
  object fdLkSqlite: TFDPhysSQLiteDriverLink
    Left = 168
    Top = 96
  end
end
