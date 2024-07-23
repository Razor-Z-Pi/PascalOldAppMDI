unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Menus, ImgList, ExtDlgs, Unit2, jpeg;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    OpenPictureDialog1: TOpenPictureDialog;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
if openPictureDialog1.Execute then
    with  TForm2.Create(Application) do
            begin
                Caption:= openPictureDialog1.FileName;
                Image1.Picture.LoadFromFile(openPictureDialog1.FileName);
                ClientWidth:= Image1.Picture.Width;
                ClientHeight:= Image1.Picture.Height;
            end;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
if not (ActiveMDIChild = Nil) then
  if ActiveMDIChild is TForm2 then
     TForm2(ActiveMDIChild).Image1.Stretch:= Toolbutton3.Down;


end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
   if not (ActiveMDIChild = Nil) then
     if ActiveMDIChild is TForm2 then
        TForm2(ActiveMDIChild).Image1.Center:= Toolbutton4.Down;

end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin
    if not (ActiveMDIChild = Nil) then
     if ActiveMDIChild is TForm2 then
        TForm2(ActiveMDIChild).Image1.Previous:= Toolbutton7.Down;
end;

end.
