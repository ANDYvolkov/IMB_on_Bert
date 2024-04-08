object UniMainModule: TUniMainModule
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  WebSocketConnection.Enabled = True
  Height = 488
  Width = 749
  object dsuser: TDataSource
    DataSet = fdtblUser
    Left = 392
    Top = 56
  end
  object fdphysmysqldrvrlnkMain: TFDPhysMySQLDriverLink
    VendorLib = 'C:\IMB\libmysql.dll'
    Left = 440
    Top = 312
  end
  object conMain: TFDConnection
    Params.Strings = (
      'Database=imb_text'
      'User_Name=imbAdm'
      'Password=ghjuhfvvth'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 40
  end
  object fdtblUser: TFDTable
    Active = True
    IndexFieldNames = 'user_Id'
    Connection = conMain
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'imb_text.users'
    Left = 296
    Top = 40
  end
  object fdqrText: TFDQuery
    Active = True
    Connection = conMain
    FormatOptions.AssignedValues = [fvDefaultParamDataType]
    FormatOptions.DefaultParamDataType = ftWideString
    SQL.Strings = (
      'SELECT'
      #9'text.txt_id, '
      #9'text.text'
      'FROM'
      #9'text'
      'WHERE'
      #9'text.txt_id = 22')
    Left = 368
    Top = 176
  end
  object dsText: TDataSource
    DataSet = fdqrText
    Left = 440
    Top = 176
  end
end
