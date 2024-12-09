object DataMain: TDataMain
  Height = 600
  Width = 800
  PixelsPerInch = 120
  object fdtClient: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'cl_client'
    Connection = fdConnection
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateObject = fduClient
    TableName = 'tb_client'
    Left = 176
    Top = 8
    object fdtClientcl_client: TFDAutoIncField
      FieldName = 'cl_client'
      Origin = 'cl_client'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdtClientcl_name: TStringField
      FieldName = 'cl_name'
      Origin = 'cl_name'
      Required = True
      Size = 100
    end
    object fdtClientcl_address: TStringField
      FieldName = 'cl_address'
      Origin = 'cl_address'
      Size = 255
    end
    object fdtClientcl_phone: TStringField
      FieldName = 'cl_phone'
      Origin = 'cl_phone'
    end
    object fdtClientcl_email: TStringField
      FieldName = 'cl_email'
      Origin = 'cl_email'
      Size = 100
    end
  end
  object fdtProduct: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'cl_product'
    Connection = fdConnection
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateObject = fduProduct
    TableName = 'tb_product'
    Left = 305
    Top = 8
    object fdtProductcl_product: TFDAutoIncField
      FieldName = 'cl_product'
      Origin = 'cl_product'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdtProductcl_name: TStringField
      FieldName = 'cl_name'
      Origin = 'cl_name'
      Required = True
      Size = 100
    end
    object fdtProductcl_description: TStringField
      FieldName = 'cl_description'
      Origin = 'cl_description'
      Size = 255
    end
    object fdtProductcl_price: TFMTBCDField
      FieldName = 'cl_price'
      Origin = 'cl_price'
      Required = True
      Precision = 24
      Size = 2
    end
  end
  object dtsClient: TDataSource
    DataSet = fdtClient
    Left = 176
    Top = 153
  end
  object dtsProduct: TDataSource
    DataSet = fdtProduct
    Left = 305
    Top = 153
  end
  object fduClient: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO tb_client (cl_name, cl_address, cl_phone, cl_email)'
      'VALUES (:cl_name, :cl_address, :cl_phone, :cl_email);')
    ModifySQL.Strings = (
      'UPDATE tb_client'
      'SET'
      '    cl_name = :cl_name,'
      '    cl_address = :cl_address,'
      '    cl_phone = :cl_phone,'
      '    cl_email = :cl_email'
      'WHERE cl_client = :cl_client;')
    DeleteSQL.Strings = (
      'DELETE FROM tb_client'
      'WHERE cl_client = :cl_client;')
    LockSQL.Strings = (
      'SELECT * FROM tb_client WHERE cl_client = :cl_client FOR UPDATE;')
    UnlockSQL.Strings = (
      '-- In most cases, explicit unlocking is not required'
      '-- Unlocking happens automatically after a commit or rollback')
    FetchRowSQL.Strings = (
      'SELECT cl_order, cl_client, cl_date, cl_value'
      'FROM tb_product'
      'WHERE cl_product = :cl_product;'
      '')
    Left = 176
    Top = 80
  end
  object fduProduct: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO tb_product (cl_name, cl_description, cl_price) '
      'VALUES (:cl_name, :cl_description, :cl_price);')
    ModifySQL.Strings = (
      'UPDATE tb_product '
      'SET cl_name = :cl_name, '
      '    cl_description = :cl_description, '
      '    cl_price = :cl_price '
      'WHERE cl_product = :cl_product;')
    DeleteSQL.Strings = (
      'DELETE FROM tb_product '
      'WHERE cl_product = :cl_product;')
    LockSQL.Strings = (
      'SELECT * FROM tb_product '
      'WHERE cl_product = :cl_product '
      'FOR UPDATE;')
    UnlockSQL.Strings = (
      '-- In most cases, explicit unlocking is not required'
      '-- Unlocking happens automatically after a commit or rollback'
      '')
    FetchRowSQL.Strings = (
      'SELECT cl_product, cl_name, cl_description, cl_price'
      'FROM tb_product'
      'WHERE cl_product = :cl_product;')
    Left = 305
    Top = 80
  end
  object fdtClientDelete: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'DELETE FROM tb_client'
      'WHERE cl_client = :cl_client;')
    Left = 180
    Top = 220
    ParamData = <
      item
        Name = 'CL_CLIENT'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object fdtProductDelete: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'DELETE FROM tb_product'
      'WHERE cl_product = :cl_product;')
    Left = 308
    Top = 220
    ParamData = <
      item
        Name = 'CL_PRODUCT'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object fdpReport: TFDStoredProc
    Connection = fdConnection
    Transaction = fdTransaction
    StoredProcName = 'PR_REPORT'
    Left = 584
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Name = '@P_CLIENT'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = '@P_DATE_BEGIN'
        DataType = ftString
        ParamType = ptInput
        Value = '2024-12-09'
      end
      item
        Name = '@P_DATE_END'
        DataType = ftString
        ParamType = ptInput
        Value = '2024-12-09'
      end>
    object fdpReportorder_id: TFDAutoIncField
      FieldName = 'order_id'
      Origin = 'order_id'
    end
    object fdpReportorder_date: TSQLTimeStampField
      FieldName = 'order_date'
      Origin = 'order_date'
    end
    object fdpReportorder_value: TFMTBCDField
      FieldName = 'order_value'
      Origin = 'order_value'
      Precision = 24
      Size = 2
    end
    object fdpReportorder_item_id: TFDAutoIncField
      FieldName = 'order_item_id'
      Origin = 'order_item_id'
    end
    object fdpReportorder_item_price: TFMTBCDField
      FieldName = 'order_item_price'
      Origin = 'order_item_price'
      Precision = 24
      Size = 2
    end
    object fdpReportorder_item_quantity: TIntegerField
      FieldName = 'order_item_quantity'
      Origin = 'order_item_quantity'
    end
    object fdpReportorder_item_value: TFMTBCDField
      FieldName = 'order_item_value'
      Origin = 'order_item_value'
      ReadOnly = True
      Precision = 35
      Size = 2
    end
    object fdpReportproduct_name: TStringField
      FieldName = 'product_name'
      Origin = 'product_name'
      Required = True
      Size = 100
    end
    object fdpReportclient_name: TStringField
      FieldName = 'client_name'
      Origin = 'client_name'
      Required = True
      Size = 100
    end
  end
  object dtsReport: TDataSource
    DataSet = fdpReport
    Left = 584
    Top = 80
  end
  object fdLinkMssql: TFDPhysMSSQLDriverLink
    Left = 60
    Top = 10
  end
  object fdConnection: TFDConnection
    ConnectionName = 'QuickOrder'
    Params.Strings = (
      'DriverID=MSSQL'
      'Server=localhost'
      'Database=QUICK_ORDER'
      'User_Name=sa'
      'Password=ABcd!@34'
      'OSAuthent=No'
      'Trusted_Connection=Yes'
      'ODBCAdvanced=TrustServerCertificate=yes')
    Left = 60
    Top = 80
  end
  object fdTransaction: TFDTransaction
    Connection = fdConnection
    Left = 60
    Top = 150
  end
  object fdQuery: TFDQuery
    Connection = fdConnection
    Transaction = fdTransaction
    Left = 60
    Top = 220
  end
  object fdpOrderId: TFDStoredProc
    Connection = fdConnection
    Transaction = fdTransaction
    StoredProcName = 'PR_ORDER_NEW'
    Left = 584
    Top = 152
    ParamData = <
      item
        Name = '@P_CLIENT'
        ParamType = ptInput
      end>
  end
  object fdtItem: TFDMemTable
    FieldDefs = <
      item
        Name = 'fdtItemProductId'
        DataType = ftInteger
      end
      item
        Name = 'fdtItemProductName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'fdtItemProductQuantity'
        DataType = ftInteger
      end
      item
        Name = 'fdtItemProductPrice'
        DataType = ftFloat
      end
      item
        Name = 'fdtItemProductValue'
        DataType = ftFloat
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 472
    Top = 8
    object fdtItemfdtItemProductId: TIntegerField
      FieldName = 'fdtItemProductId'
    end
    object fdtItemfdtItemProductName: TStringField
      FieldName = 'fdtItemProductName'
    end
    object fdtItemfdtItemProductQuantity: TIntegerField
      FieldName = 'fdtItemProductQuantity'
    end
    object fdtItemfdtItemProductPrice: TFloatField
      FieldName = 'fdtItemProductPrice'
      DisplayFormat = '#####0.00'
    end
    object fdtItemfdtItemProductValue: TFloatField
      FieldName = 'fdtItemProductValue'
      DisplayFormat = '#####0.00'
    end
  end
  object dtsItem: TDataSource
    DataSet = fdtItem
    Left = 473
    Top = 81
  end
  object fdtItemAdd: TFDQuery
    Connection = fdConnection
    SQL.Strings = (
      'INSERT INTO tb_order_item'
      '('
      ' cl_order'
      ',cl_product'
      ',cl_quantity'
      ',cl_price'
      ')'
      'VALUES'
      '('
      ' :cl_order'
      ',:cl_product'
      ',:cl_quantity'
      ',:cl_price'
      ')')
    Left = 476
    Top = 148
    ParamData = <
      item
        Name = 'cl_order'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'cl_product'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'cl_quantity'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'cl_price'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object fdStart: TFDQuery
    Connection = fdConnection
    Transaction = fdTransaction
    SQL.Strings = (
      '-- # [ zrfisaac ]'
      ''
      '-- # [ about ]'
      '-- # - author : Isaac Caires'
      '-- # . - email : zrfisaac@gmail.com'
      '-- # . - site : zrfisaac.github.io'
      ''
      '-- # [ mssql ]'
      ''
      '-- ######### TABLE #########'
      ''
      '-- # : Creation of the products table'
      'IF NOT EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM INFORMATION_SCHEMA.TABLES'
      #9'WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = '#39'BASE TABLE'#39
      #9'AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = '#39'tb_product'#39
      ')'
      'BEGIN'
      #9'CREATE TABLE tb_product ('
      #9#9'-- Fields of the table'
      
        #9#9' cl_product'#9#9#9#9'INT IDENTITY(1,1)'#9#9'NOT NULL'#9#9'-- Product code (p' +
        'rimary key)'
      #9#9',cl_name'#9#9#9#9'VARCHAR(100)'#9#9#9'NOT NULL'#9#9'-- Product name'
      #9#9',cl_description'#9#9#9'VARCHAR(255)'#9#9#9#9'NULL'#9#9'-- Product description'
      #9#9',cl_price'#9#9#9#9'DECIMAL(24,2)'#9#9#9'NOT NULL'#9#9'-- Product price'
      #9#9'-- Defines the primary key with clustered indexing'
      #9#9',CONSTRAINT pk_product PRIMARY KEY CLUSTERED (cl_product ASC)'
      #9#9'WITH'
      #9#9'('
      
        #9#9#9' PAD_INDEX'#9#9#9#9'='#9'OFF'#9#9'-- Do not pad index pages to the fill fa' +
        'ctor; allows tighter packing of data.'
      
        #9#9#9',STATISTICS_NORECOMPUTE'#9'='#9'OFF'#9#9'-- Automatically recompute sta' +
        'tistics when they are out-of-date.'
      
        #9#9#9',IGNORE_DUP_KEY'#9#9#9'='#9'OFF'#9#9'-- Do not ignore duplicate keys; ins' +
        'ertion of duplicates will cause an error.'
      
        #9#9#9',ALLOW_ROW_LOCKS'#9#9'='#9'ON'#9#9'-- Allow row-level locks to improve c' +
        'oncurrency for individual rows.'
      
        #9#9#9',ALLOW_PAGE_LOCKS'#9#9'='#9'ON'#9#9'-- Allow page-level locks to improve' +
        ' performance during bulk operations.'
      #9#9')'
      #9');'
      'END;'
      '-- */'
      ''
      '-- # : Creation of the clients table'
      '-- /*'
      'IF NOT EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM INFORMATION_SCHEMA.TABLES'
      #9'WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = '#39'BASE TABLE'#39
      #9'AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = '#39'tb_client'#39
      ')'
      'BEGIN'
      #9'CREATE TABLE tb_client ('
      #9#9'-- Fields of the table'
      
        #9#9' cl_client'#9#9#9#9'INT IDENTITY(1,1)'#9#9'NOT NULL'#9#9'-- Client code (pri' +
        'mary key)'
      #9#9',cl_name'#9#9#9#9'VARCHAR(100)'#9#9#9'NOT NULL'#9#9'-- Client name'
      #9#9',cl_address'#9#9#9#9'VARCHAR(255)'#9#9#9#9'NULL'#9#9'-- Client address'
      #9#9',cl_phone'#9#9#9#9'VARCHAR(20)'#9#9#9#9#9'NULL'#9#9'-- Client phone'
      #9#9',cl_email'#9#9#9#9'VARCHAR(100)'#9#9#9#9'NULL'#9#9'-- Client email'
      #9#9'-- Defines the primary key with clustered indexing'
      #9#9',CONSTRAINT pk_client PRIMARY KEY CLUSTERED (cl_client ASC)'
      #9#9'WITH'
      #9#9'('
      
        #9#9#9' PAD_INDEX'#9#9#9#9'='#9'OFF'#9#9'-- Do not pad index pages to the fill fa' +
        'ctor; allows tighter packing of data.'
      
        #9#9#9',STATISTICS_NORECOMPUTE'#9'='#9'OFF'#9#9'-- Automatically recompute sta' +
        'tistics when they are out-of-date.'
      
        #9#9#9',IGNORE_DUP_KEY'#9#9#9'='#9'OFF'#9#9'-- Do not ignore duplicate keys; ins' +
        'ertion of duplicates will cause an error.'
      
        #9#9#9',ALLOW_ROW_LOCKS'#9#9'='#9'ON'#9#9'-- Allow row-level locks to improve c' +
        'oncurrency for individual rows.'
      
        #9#9#9',ALLOW_PAGE_LOCKS'#9#9'='#9'ON'#9#9'-- Allow page-level locks to improve' +
        ' performance during bulk operations.'
      #9#9')'
      #9');'
      'END;'
      '-- */'
      ''
      '-- # : Creation of the orders table'
      '-- /*'
      'IF NOT EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM INFORMATION_SCHEMA.TABLES'
      #9'WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = '#39'BASE TABLE'#39
      #9'AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = '#39'tb_order'#39
      ')'
      'BEGIN'
      #9'CREATE TABLE tb_order ('
      #9#9'-- Fields of the table'
      
        #9#9' cl_order'#9#9#9#9'INT IDENTITY(1,1)'#9#9#9#9#9#9'-- Order code (primary key' +
        ')'
      #9#9',cl_client'#9#9#9#9'INT'#9#9#9#9#9#9#9#9#9#9'-- Client code (foreign key)'
      #9#9',cl_date'#9#9#9#9'DATETIME'#9#9#9#9#9#9#9#9'-- Order date'
      #9#9',cl_value'#9#9#9#9'DECIMAL(24,2)'#9#9#9#9#9#9#9'-- Total order value'
      #9#9'-- Relationship with the clients table'
      
        #9#9',CONSTRAINT fk_order_cl_client FOREIGN KEY (cl_client) REFEREN' +
        'CES tb_client(cl_client)'
      #9#9'-- Defines the primary key with clustered indexing'
      #9#9',CONSTRAINT pk_order PRIMARY KEY CLUSTERED (cl_order ASC)'
      #9#9'WITH'
      #9#9'('
      
        #9#9#9' PAD_INDEX'#9#9#9#9'='#9'OFF'#9#9'-- Do not pad index pages to the fill fa' +
        'ctor; allows tighter packing of data.'
      
        #9#9#9',STATISTICS_NORECOMPUTE'#9'='#9'OFF'#9#9'-- Automatically recompute sta' +
        'tistics when they are out-of-date.'
      
        #9#9#9',IGNORE_DUP_KEY'#9#9#9'='#9'OFF'#9#9'-- Do not ignore duplicate keys; ins' +
        'ertion of duplicates will cause an error.'
      
        #9#9#9',ALLOW_ROW_LOCKS'#9#9'='#9'ON'#9#9'-- Allow row-level locks to improve c' +
        'oncurrency for individual rows.'
      
        #9#9#9',ALLOW_PAGE_LOCKS'#9#9'='#9'ON'#9#9'-- Allow page-level locks to improve' +
        ' performance during bulk operations.'
      #9#9')'
      #9');'
      'END;'
      '-- */'
      ''
      '-- # : Creation of the order items table'
      '-- /*'
      'IF NOT EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM INFORMATION_SCHEMA.TABLES'
      #9'WHERE INFORMATION_SCHEMA.TABLES.TABLE_TYPE = '#39'BASE TABLE'#39
      #9'AND INFORMATION_SCHEMA.TABLES.TABLE_NAME = '#39'tb_order_item'#39
      ')'
      'BEGIN'
      #9'CREATE TABLE tb_order_item ('
      #9#9'-- Fields of the table'
      
        #9#9' cl_order_item'#9#9'INT IDENTITY(1,1)'#9#9#9#9#9#9#9'-- Order item code (pr' +
        'imary key)'
      #9#9',cl_order'#9#9#9'INT'#9#9#9#9#9#9#9#9#9#9#9'-- Order code (foreign key)'
      #9#9',cl_product'#9#9#9'INT'#9#9#9#9#9#9#9#9#9#9#9'-- Product code (foreign key)'
      
        #9#9',cl_quantity'#9#9'INT'#9#9#9#9#9#9#9#9#9#9#9'-- Quantity of the item in the ord' +
        'er'
      
        #9#9',cl_price'#9#9#9'DECIMAL(24,2)'#9#9#9#9#9#9#9#9'-- Unit price of the item in ' +
        'the order'
      #9#9'-- Relationship with the orders table'
      
        #9#9',CONSTRAINT fk_order_item_cl_order FOREIGN KEY (cl_order) REFE' +
        'RENCES tb_order(cl_order)'
      #9#9'-- Relationship with the products table'
      
        #9#9',CONSTRAINT fk_order_item_cl_product FOREIGN KEY (cl_product) ' +
        'REFERENCES tb_product(cl_product)'
      #9#9'-- Defines the primary key with clustered indexing'
      
        #9#9',CONSTRAINT pk_order_item PRIMARY KEY CLUSTERED (cl_order_item' +
        ' ASC)'
      #9#9'WITH'
      #9#9'('
      
        #9#9#9' PAD_INDEX'#9#9#9#9'='#9'OFF'#9#9'-- Do not pad index pages to the fill fa' +
        'ctor; allows tighter packing of data.'
      
        #9#9#9',STATISTICS_NORECOMPUTE'#9'='#9'OFF'#9#9'-- Automatically recompute sta' +
        'tistics when they are out-of-date.'
      
        #9#9#9',IGNORE_DUP_KEY'#9#9#9'='#9'OFF'#9#9'-- Do not ignore duplicate keys; ins' +
        'ertion of duplicates will cause an error.'
      
        #9#9#9',ALLOW_ROW_LOCKS'#9#9'='#9'ON'#9#9'-- Allow row-level locks to improve c' +
        'oncurrency for individual rows.'
      
        #9#9#9',ALLOW_PAGE_LOCKS'#9#9'='#9'ON'#9#9'-- Allow page-level locks to improve' +
        ' performance during bulk operations.'
      #9#9')'
      ''
      #9');'
      'END;'
      '-- */'
      ''
      '-- ######### DATA #########'
      ''
      '-- # : Insert 3 fictitious products into the tb_product table'
      'insert tb_product'
      '('
      #9' cl_name'
      #9',cl_description'
      #9',cl_price'
      ') SELECT * FROM ('
      #9'SELECT'
      #9#9' '#39#39#9#9#9'AS cl_name'
      #9#9','#39#39#9#9#9'AS cl_description'
      #9#9','#39#39#9#9#9'AS cl_price'
      #9'WHERE 0 <> 0'
      #9'--'#9#9#9#9#9'cl_name'#9#9#9#9#9'cl_description'#9#9#9#9#9#9'cl_price'
      
        #9'UNION ALL SELECT'#9#39'Laptop'#39#9#9#9#9','#39'High-performance laptop'#39#9#9#9',   1' +
        '500.00'
      
        #9'UNION ALL SELECT'#9#39'Wireless Mouse'#39#9#9','#39'Ergonomic wireless mouse'#39#9 +
        #9#9',     30.00'
      
        #9'UNION ALL SELECT'#9#39'Mechanical Keyboard'#39#9','#39'Durable mechanical key' +
        'board'#39#9#9',     80.00'
      ') AS al_data'
      'WHERE NOT EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM tb_product'
      #9'WHERE tb_product.cl_name = al_data.cl_name'
      #9'AND tb_product.cl_description = al_data.cl_description'
      #9'AND tb_product.cl_price = al_data.cl_price'
      ');'
      ''
      ''
      '-- # : Insert 5 fictitious clients into the tb_client table'
      'insert tb_client'
      '('
      #9' cl_name'
      #9',cl_address'
      #9',cl_phone'
      #9',cl_email'
      ') SELECT * FROM ('
      #9'SELECT'
      #9#9' '#39#39#9#9#9'AS cl_name'
      #9#9','#39#39#9#9#9'AS cl_address'
      #9#9','#39#39#9#9#9'AS cl_phone'
      #9#9','#39#39#9#9#9'AS cl_email'
      #9'WHERE 0 <> 0'
      #9'--'#9#9#9#9#9'cl_name'#9#9#9#9'cl_address'#9#9#9#9'cl_phone'#9#9'cl_email'
      
        #9'UNION ALL SELECT'#9#39'Alice Johnson'#39#9#9','#39'123 Flower Street'#39#9','#39'123456' +
        '7890'#39#9','#39'alice.johnson@email.com'#39
      
        #9'UNION ALL SELECT'#9#39'Bob Smith'#39#9#9#9','#39'456 Main Avenue'#39#9#9','#39'9876543210' +
        #39#9','#39'bob.smith@email.com'#39
      
        #9'UNION ALL SELECT'#9#39'Charlie Brown'#39#9#9','#39'789 Green Square'#39#9#9','#39'112233' +
        '4455'#39#9','#39'charlie.brown@email.com'#39
      
        #9'UNION ALL SELECT'#9#39'Diana Ross'#39#9#9','#39'321 Blue Lane'#39#9#9','#39'9988776655'#39#9 +
        ','#39'diana.ross@email.com'#39
      
        #9'UNION ALL SELECT'#9#39'Edward King'#39#9#9','#39'654 Sunny Alley'#39#9#9','#39'443322110' +
        '0'#39#9','#39'edward.king@email.com'#39
      ') AS al_data'
      'WHERE NOT EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM tb_client'
      #9'WHERE tb_client.cl_name = al_data.cl_name'
      #9'AND tb_client.cl_address = al_data.cl_address'
      #9'AND tb_client.cl_phone = al_data.cl_phone'
      #9'AND tb_client.cl_email = al_data.cl_email'
      ');'
      ''
      '-- # : Insert 1 order into the tb_order table'
      'insert tb_order'
      '('
      #9' cl_client'
      #9',cl_date'
      #9',cl_value'
      ') SELECT'
      #9' tb_client.cl_client'
      #9'AS cl_client'
      #9',CONVERT(DATETIME,al_data.cl_date,120)'
      #9'AS cl_date'
      #9',al_data.cl_value'
      #9'AS cl_value'
      'FROM ('
      #9'SELECT'
      #9#9' '#39#39#9#9#9'AS cl_client'
      #9#9','#39#39#9#9#9'AS cl_date'
      #9#9',0.0'#9#9'AS cl_value'
      #9'WHERE 0 <> 0'
      #9'--'#9#9#9#9#9'cl_client'#9#9#9'cl_date'#9#9#9#9#9'cl_value'
      #9'UNION ALL SELECT'#9#39'Diana Ross'#39#9#9','#39'2024-12-09'#39#9#9#9',110.00'
      ') AS al_data'
      'INNER JOIN tb_client ON tb_client.cl_name = al_data.cl_client'
      'WHERE NOT EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM tb_order'
      #9'WHERE tb_order.cl_client = tb_client.cl_client'
      #9'AND tb_order.cl_date = CONVERT(DATETIME,al_data.cl_date,120)'
      #9'AND tb_order.cl_value = al_data.cl_value'
      ');'
      ''
      '-- # : Insert 2 order item into the tb_order_item table'
      'insert tb_order_item'
      '('
      #9' cl_order'
      #9',cl_product'
      #9',cl_quantity'
      #9',cl_price'
      ') SELECT'
      #9' tb_order.cl_order'
      #9'AS cl_order'
      #9',tb_product.cl_product'
      #9'AS cl_product'
      #9',al_data.cl_quantity'
      #9'AS cl_quantity'
      #9',tb_product.cl_price'
      #9'AS cl_price'
      'FROM ('
      #9'SELECT'
      #9#9' '#39#39#9#9#9'AS cl_client'
      #9#9','#39#39#9#9#9'AS cl_date'
      #9#9',0.0'#9#9'AS cl_value'
      #9#9','#39#39#9#9#9'AS cl_product'
      #9#9',0'#9#9#9'AS cl_quantity'
      #9'WHERE 0 <> 0'
      
        #9'--'#9#9#9#9#9'cl_client'#9#9#9'cl_date'#9#9#9#9#9'cl_value'#9#9'cl_product'#9#9#9#9#9'cl_quan' +
        'tity'
      
        #9'UNION ALL SELECT'#9#39'Diana Ross'#39#9#9','#39'2024-12-09'#39#9#9#9',110.00'#9#9#9','#39'Wire' +
        'less Mouse'#39#9#9#9',1'
      
        #9'UNION ALL SELECT'#9#39'Diana Ross'#39#9#9','#39'2024-12-09'#39#9#9#9',110.00'#9#9#9','#39'Mech' +
        'anical Keyboard'#39#9#9',1'
      ') AS al_data'
      'INNER JOIN tb_client ON tb_client.cl_name = al_data.cl_client'
      'INNER JOIN tb_product ON tb_product.cl_name = al_data.cl_product'
      'INNER JOIN tb_order ON tb_order.cl_client = tb_client.cl_client'
      #9'AND tb_order.cl_date = CONVERT(DATETIME,al_data.cl_date,120)'
      #9'AND tb_order.cl_value = al_data.cl_value'
      'WHERE NOT EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM tb_order_item'
      #9'WHERE tb_order_item.cl_order = tb_order.cl_order'
      #9'AND tb_order_item.cl_product = tb_product.cl_product'
      #9'AND tb_order_item.cl_quantity = al_data.cl_quantity'
      #9'AND tb_order_item.cl_price = tb_product.cl_price'
      ');'
      ''
      '-- # : Procedure is responsible for generating a report'
      'IF'#9'EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM SYSOBJECTS'
      #9'WHERE UPPER(NAME) = N'#39'PR_REPORT'#39
      #9'AND UPPER(TYPE) = N'#39'P'#39
      ') DROP PROCEDURE PR_REPORT'
      'CREATE PROCEDURE PR_REPORT'
      #9' @P_CLIENT'#9#9'VARCHAR(100)'
      #9',@P_DATE_BEGIN'#9'VARCHAR( 10)'
      #9',@P_DATE_END'#9'VARCHAR( 10)'
      'AS'
      #9'SELECT'
      #9#9' tb_order.cl_order'
      #9#9'AS order_id'
      #9#9',tb_order.cl_date'
      #9#9'AS order_date'
      #9#9',tb_order.cl_value'
      #9#9'AS order_value'
      #9#9',tb_order_item.cl_order_item'
      #9#9'AS order_item_id'
      #9#9',tb_order_item.cl_price'
      #9#9'AS order_item_price'
      #9#9',tb_order_item.cl_quantity'
      #9#9'AS order_item_quantity'
      #9#9',tb_order_item.cl_price * tb_order_item.cl_quantity'
      #9#9'AS order_item_value'
      #9#9',tb_product.cl_name'
      #9#9'as product_name'
      #9#9',tb_client.cl_name'
      #9#9'as client_name'
      #9'FROM'
      #9#9'tb_order'
      #9#9'INNER JOIN tb_order_item'
      #9#9#9'ON tb_order_item.cl_order = tb_order.cl_order'
      #9#9'INNER JOIN tb_product'
      #9#9#9'ON tb_product.cl_product = tb_order_item.cl_product'
      #9#9'INNER JOIN tb_client'
      #9#9#9'ON tb_client.cl_client = tb_order.cl_client'
      #9'WHERE'
      
        #9#9'UPPER(tb_client.cl_name) LIKE '#39'%'#39' + UPPER(ISNULL(@P_CLIENT,'#39#39')' +
        ') + '#39'%'#39
      #9#9'AND tb_order.cl_date >= CONVERT(DATETIME,@P_DATE_BEGIN,120)'
      
        #9#9'AND tb_order.cl_date < DATEADD(DAY,1,CONVERT(DATETIME,@P_DATE_' +
        'BEGIN,120))'
      #9'ORDER BY'
      #9#9'tb_order.cl_date ASC'
      ' /*'
      'EXEC PR_REPORT'
      #9' @P_CLIENT'#9#9'='#9#39#39
      #9',@P_DATE_BEGIN'#9'='#9#39'2024-12-09'#39
      #9',@P_DATE_END'#9'='#9#39'2024-12-09'#39
      '-- */'
      ''
      
        '-- # : Stored procedure to calculate the total value of an order' +
        ' by considering the quantity of each item and the corresponding ' +
        'product price'
      'IF'#9'EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM SYSOBJECTS'
      #9'WHERE UPPER(NAME) = N'#39'PR_ORDER_TOTAL'#39
      #9'AND UPPER(TYPE) = N'#39'P'#39
      ') DROP PROCEDURE PR_ORDER_TOTAL'
      'CREATE PROCEDURE PR_ORDER_TOTAL'
      #9' @P_ORDER'#9#9'INT'
      'AS'
      #9'SELECT'
      #9#9'SUM(cl_price * cl_quantity)'
      #9#9'AS total'
      #9'FROM'
      #9#9'tb_order_item'
      ' /*'
      'EXEC PR_ORDER_TOTAL'
      #9' @P_ORDER'#9#9'='#9'1'
      '-- */'
      ''
      
        '-- # : Stored procedure to calculate the total value of an order' +
        ' by considering the quantity of each item and the corresponding ' +
        'product price'
      'IF'#9'EXISTS ('
      #9'SELECT TOP 1 NULL'
      #9'FROM SYSOBJECTS'
      #9'WHERE UPPER(NAME) = N'#39'PR_ORDER_NEW'#39
      #9'AND UPPER(TYPE) = N'#39'P'#39
      ') DROP PROCEDURE PR_ORDER_NEW'
      'CREATE PROCEDURE PR_ORDER_NEW'
      #9' @P_CLIENT'#9#9'INT'
      'AS'
      #9'DECLARE @P_ORDER INT = -1'
      
        #9'SET @P_ORDER = (SELECT TOP 1 cl_order FROM tb_order WHERE NOT E' +
        'XISTS(SELECT TOP 1 NULL FROM tb_order_item WHERE tb_order_item.c' +
        'l_order = tb_order.cl_order))'
      #9'IF (@P_ORDER IS NULL)'
      #9'BEGIN'
      
        #9#9'INSERT INTO tb_order (cl_client,cl_date,cl_value) VALUES(@P_CL' +
        'IENT,GETDATE(),0.0)'
      #9#9'SELECT @P_ORDER = SCOPE_IDENTITY()'
      #9'END'
      #9'SELECT @P_ORDER AS order_id'
      ' /*'
      'EXEC PR_ORDER_NEW'
      #9'@P_CLIENT = 1'
      '-- */')
    Left = 60
    Top = 292
  end
end
