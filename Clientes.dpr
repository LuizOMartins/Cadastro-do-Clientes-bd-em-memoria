program Clientes;

uses
  Vcl.Forms,
  BancoDeDados in 'BancoDeDados.pas' {frmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.Run;
end.
