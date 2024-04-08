unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, ADODB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL;

type
  TUniMainModule = class(TUniGUIMainModule)
    dsuser: TDataSource;
    fdphysmysqldrvrlnkMain: TFDPhysMySQLDriverLink;
    conMain: TFDConnection;
    fdtblUser: TFDTable;
    fdqrText: TFDQuery;
    dsText: TDataSource;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
   conMain.Connected := True;
  fdtblUser.Open;
  fdqrText.Open;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
