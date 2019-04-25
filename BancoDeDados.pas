unit BancoDeDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Datasnap.DBClient;

type
  TfrmClientes = class(TForm)
    cdsClientes: TClientDataSet;
    cdsClientesAPELIDO: TStringField;
    cdsClientesRazaoSocial: TStringField;
    cdsClientesDataCadastro: TDateTimeField;
    cdsClientesCNPJCPF: TStringField;
    cdsClientesEndereco: TStringField;
    cdsClientesNumero: TIntegerField;
    cdsClientesCEP: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dtsClientes: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

procedure TfrmClientes.Button1Click(Sender: TObject);
begin
  // Carrega os daos do arvuiso
  cdsClientes.LoadFromFile('C:\Users\Computador Acer\Desktop\delphi\Cadastro do Clientes\Clientes.cds');
end;

procedure TfrmClientes.Button2Click(Sender: TObject);
begin
  // Grava os dados no arquivo
  cdsClientes.SaveToFile('C:\Users\Computador Acer\Desktop\delphi\Cadastro do Clientes\Clientes.cds');
end;

end.
