unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Data.DB,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, uniLabel, uniDBNavigator, uniTimer,
  uniButton, Data.Win.ADODB, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, uniDBText,
  uniMemo;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    UniLabel1: TUniLabel;
    UniButton1: TUniButton;
    UniTimer1: TUniTimer;
    undbtxtShowText: TUniDBText;
    unmText: TUniMemo;
    procedure UniFormBroadcastMessage(const Sender: TComponent;
      const Msg: string; const Params: TUniStrings);
    procedure UniFormCreate(Sender: TObject);
    procedure ADOQuery1AfterPost(DataSet: TDataSet);
    procedure ADOQuery1AfterDelete(DataSet: TDataSet);
  private
    procedure RefreshUI;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.RefreshUI;
begin
// Here we have used the "boIgnoreCurrentSession" option because we don't need to refresh the current session.
  BroadcastMessage('refresh', [boIgnoreCurrentSession]);
end;

procedure TMainForm.ADOQuery1AfterDelete(DataSet: TDataSet);
begin
  RefreshUI;
end;

procedure TMainForm.ADOQuery1AfterPost(DataSet: TDataSet);
begin
  RefreshUI;
end;

procedure TMainForm.UniFormBroadcastMessage(const Sender: TComponent;
  const Msg: string; const Params: TUniStrings);
begin
  if Msg = 'refresh' then
  begin
    // We use a timer here because Microsoft Jet OLEDB driver uses a lazy write mechanism (changes are committed to disk ~5 seconds later)
    // However, this timer is not needed for a server based database
    // In a server based database you can refresh your query directly here (without using a timer)

    // This timer runs only one time (RunOnce = True)
    UniTimer1.Enabled := False; // make sure Timer is restarted each time there is a change
    UniTimer1.Enabled := True;  // actual refresh will occur ~5 seconds later
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  //
  unmText.Lines.Add(UniMainModule.fdqrText.FieldByName('text').AsString);

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
