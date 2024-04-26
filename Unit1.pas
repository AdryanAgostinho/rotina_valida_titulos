unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  ZAbstractConnection, ZTransaction, ZConnection, Vcl.Grids, Vcl.DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBEdit1: TDBEdit;
    Button2: TButton;
    DataSource1: TDataSource;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  with ZQuery1 do
  begin
    close;

     sql.Clear;
     sql.add('SELECT ');
     sql.add('L.RECNUM,');
     sql.add('L.TIPOSERVICO,');
     sql.add('L.TIPOPARCEIRO,');
     sql.add('L.FORMAPGTO,');
     sql.add('L.BOLETO,');
     sql.add('L.HISTORICO,');
     sql.add('L.HISTORICO2,');
     sql.add('L.NUMCODBARRA,');
     sql.add('F.NUMBANCODOC,');
     sql.add('F.NUMAGENCIADOC,');
     sql.add('F.DVAG,');
     sql.add('F.NUMCCORRENTEDOC,');
     sql.add('F.DVCC');
     Sql.add('FROM ');
     sql.add('PCLANC L');
     sql.add('INNER JOIN PCFORNEC F ON F.CODFORNEC = L.CODFORNEC');
     sql.add('WHERE L.VPAGO IS NULL AND L.DTLANC = TRUNC(SYSDATE)' );
     open;


  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
       if DBGrid1.DataSource.DataSet.RecordCount > 0 then
  begin

    DBGrid1.DataSource.DataSet.First;


    while not DBGrid1.DataSource.DataSet.Eof do
    begin
      DBGrid1.SelectedRows.CurrentRowSelected := True;
      DBGrid1.DataSource.DataSet.Next;
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

var
  i: Integer;
begin

  if DBGrid1.SelectedRows.Count > 0 then
  begin
    // Itera pelas linhas selecionadas
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin

      DBGrid1.DataSource.DataSet.Bookmark := DBGrid1.SelectedRows.Items[i];

      // Exibe o valor da primeira coluna
      ShowMessage('Valor da primeira coluna: ' + DBGrid1.DataSource.DataSet.Fields[0].AsString);
    end;
  end
  else
    ShowMessage('Nenhuma linha selecionada.');
end;
end;


end.
