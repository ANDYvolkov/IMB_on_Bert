unit LoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel,
  uniBasicGrid, uniDBGrid, uniEdit, uniButton, uniPanel;

type
  TUniLoginForm1 = class(TUniLoginForm)
    unlblTitul: TUniLabel;
    unpnlInsertUser: TUniPanel;
    ubtnAddUser: TUniButton;
    undtUser: TUniEdit;
    undbgrdUser: TUniDBGrid;
    unlblUser: TUniLabel;
    ubtnStart: TUniButton;
    procedure UniLoginFormCreate(Sender: TObject);
    procedure ubtnStartClick(Sender: TObject);
    procedure ubtnAddUserClick(Sender: TObject);
    procedure undbgrdUserCellClick(Column: TUniDBGridColumn);
    procedure undbgrdUserBodyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.ubtnAddUserClick(Sender: TObject);
begin
 if Length(Trim(undtUser.Text)) > 0 then
 begin
  UniMainModule.fdtblUser.Insert;
  UniMainModule.fdtblUser.FieldByName('user_name').Value := Trim(undtUser.Text);
  UniMainModule.fdtblUser.Post;
  unlblUser.Caption := UniMainModule.fdtblUser.FieldByName('user_name').AsString;
 end;
end;

procedure TUniLoginForm1.ubtnStartClick(Sender: TObject);
begin
 ModalResult:=mrOK;
end;

procedure TUniLoginForm1.undbgrdUserBodyClick(Sender: TObject);
begin
  unlblUser.Caption := UniMainModule.fdtblUser.FieldByName('user_name').AsString;
end;

procedure TUniLoginForm1.undbgrdUserCellClick(Column: TUniDBGridColumn);
begin
  unlblUser.Caption := UniMainModule.fdtblUser.FieldByName('user_name').AsString;
end;

procedure TUniLoginForm1.UniLoginFormCreate(Sender: TObject);
begin
  //
  unlblUser.Caption := UniMainModule.fdtblUser.FieldByName('user_name').AsString;
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
