object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 288
  ClientWidth = 358
  Caption = ''
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  OnCreate = UniLoginFormCreate
  TextHeight = 15
  object unlblTitul: TUniLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 352
    Height = 21
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = #1055#1088#1077#1089#1090#1072#1074#1100#1090#1077#1089#1100', '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072'.'
    Align = alTop
    ParentFont = False
    Font.Color = clPurple
    Font.Height = -16
    ParentColor = False
    Color = clPurple
    TabOrder = 0
  end
  object unpnlInsertUser: TUniPanel
    Left = 0
    Top = 27
    Width = 358
    Height = 37
    Hint = ''
    Align = alTop
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = 'unpnlInsertUser'
    object ubtnAddUser: TUniButton
      AlignWithMargins = True
      Left = 280
      Top = 3
      Width = 75
      Height = 31
      Hint = ''
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Align = alRight
      TabOrder = 1
      OnClick = ubtnAddUserClick
    end
    object undtUser: TUniEdit
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 252
      Height = 31
      Hint = ''
      Margins.Left = 10
      Margins.Right = 15
      Alignment = taCenter
      Text = ''
      ParentFont = False
      Font.Height = -16
      Align = alClient
      TabOrder = 2
    end
  end
  object undbgrdUser: TUniDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 67
    Width = 338
    Height = 125
    Hint = ''
    Margins.Left = 10
    Margins.Right = 10
    DataSource = UniMainModule.dsuser
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
    WebOptions.Paged = False
    LoadMask.Message = 'Loading data...'
    BorderStyle = ubsNone
    Align = alClient
    TabOrder = 2
    OnBodyClick = undbgrdUserBodyClick
    OnCellClick = undbgrdUserCellClick
  end
  object unlblUser: TUniLabel
    AlignWithMargins = True
    Left = 3
    Top = 205
    Width = 352
    Height = 29
    Hint = ''
    Margins.Top = 10
    Alignment = taCenter
    AutoSize = False
    Caption = 'unlblUser'
    Align = alBottom
    TabOrder = 3
  end
  object ubtnStart: TUniButton
    AlignWithMargins = True
    Left = 3
    Top = 240
    Width = 352
    Height = 45
    Hint = ''
    Caption = #1047#1072#1087#1091#1089#1082' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
    Align = alBottom
    ParentFont = False
    Font.Color = clTeal
    Font.Height = -16
    TabOrder = 4
    OnClick = ubtnStartClick
  end
end
