object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 469
  ClientWidth = 709
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  OnBroadcastMessage = UniFormBroadcastMessage
  TextHeight = 15
  object UniDBGrid1: TUniDBGrid
    Left = 83
    Top = 49
    Width = 542
    Height = 184
    Hint = ''
    LoadMask.Message = 'Loading data...'
    TabOrder = 0
    Columns = <
      item
        FieldName = 'id'
        Title.Caption = 'id'
        Width = 104
      end
      item
        FieldName = 'Company'
        Title.Caption = 'Company'
        Width = 129
      end
      item
        FieldName = 'Phone'
        Title.Caption = 'Phone'
        Width = 117
      end
      item
        FieldName = 'Address'
        Title.Caption = 'Address'
        Width = 109
      end
      item
        FieldName = 'Country'
        Title.Caption = 'Country'
        Width = 115
      end>
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 409
    Top = 422
    Width = 209
    Height = 22
    Hint = ''
    TabOrder = 1
  end
  object UniLabel1: TUniLabel
    Left = 83
    Top = 32
    Width = 458
    Height = 13
    Hint = ''
    Caption = 
      'When you update, delete or insert records, changes will be refle' +
      'cted to all open sessions'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object UniButton1: TUniButton
    Left = 83
    Top = 423
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Delete All'
    TabOrder = 3
  end
  object undbtxtShowText: TUniDBText
    Left = 83
    Top = 239
    Width = 553
    Height = 73
    Hint = ''
    DataField = 'text'
    DataSource = UniMainModule.dsText
    AutoSize = False
  end
  object unmText: TUniMemo
    Left = 83
    Top = 312
    Width = 553
    Height = 89
    Hint = ''
    Lines.Strings = (
      'unmText')
    TabOrder = 5
  end
  object UniTimer1: TUniTimer
    Interval = 5500
    Enabled = False
    RunOnce = True
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 344
    Top = 240
  end
end
