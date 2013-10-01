unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.StdCtrls, FMX.ListBox, FMX.Layouts, FMX.Effects;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    FloatAnimation1: TFloatAnimation;
    ShadowEffect1: TShadowEffect;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  AnimationX : Single;
begin
  AnimationX := Self.ClientWidth - 60;
  if (Panel1.Position.X = AnimationX) then begin
    FloatAnimation1.StartValue := AniMationX;
    FloatAnimation1.StopValue  := 0;
  end else begin
    FloatAnimation1.StartValue := 0;
    FloatAnimation1.StopValue  := AniMationX;
  end;

  FloatAnimation1.Start;

end;

end.
