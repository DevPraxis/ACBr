{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para interação com equipa- }
{ mentos de Automação Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida               }
{																			   }
{  Você pode obter a última versão desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca é software livre; você pode redistribuí-la e/ou modificá-la }
{ sob os termos da Licença Pública Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a versão 2.1 da Licença, ou (a seu critério) }
{ qualquer versão posterior.                                                   }
{                                                                              }
{  Esta biblioteca é distribuída na expectativa de que seja útil, porém, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia implícita de COMERCIABILIDADE OU      }
{ ADEQUAÇÃO A UMA FINALIDADE ESPECÍFICA. Consulte a Licença Pública Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICENÇA.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Você deve ter recebido uma cópia da Licença Pública Geral Menor do GNU junto}
{ com esta biblioteca; se não, escreva para a Free Software Foundation, Inc.,  }
{ no endereço 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Você também pode obter uma copia da licença em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Simões de Almeida - daniel@projetoacbr.com.br - www.projetoacbr.com.br}
{       Rua Coronel Aureliano de Camargo, 963 - Tatuí - SP - 18270-170         }
{******************************************************************************}

unit UPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, ExtDlgs, ExtCtrls, ACBrDevice, ACBrETQ, ACBrETQZplII;

type

  { TFPrincipal }

  TFPrincipal = class(TForm)
    ACBrETQ: TACBrETQ;
    bCarregarImg: TButton;
    bEtqBloco: TButton;
    bEtqCarreiras: TButton;
    bEtqSimples: TButton;
    bQRCode: TButton;
    bImprimirImagem: TButton;
    bConfSalvar: TButton;
    bConfLer: TButton;
    cbBackFeed: TComboBox;
    cbOrigem: TComboBox;
    cbDPI: TComboBox;
    cbModelo: TComboBox;
    cbPorta: TComboBox;
    cbPagCodigo: TComboBox;
    ckMemoria: TCheckBox;
    edAvanco: TEdit;
    eCopias: TEdit;
    edNomeImg: TEdit;
    edTemperatura: TEdit;
    edMargemEsquerda: TEdit;
    edVelocidade: TEdit;
    gbConfiguracao: TGroupBox;
    gbImagem: TGroupBox;
    gbImpressao: TGroupBox;
    Image1: TImage;
    Label5: TLabel;
    lbAvanco: TLabel;
    lbBackFeed: TLabel;
    lbBackFeed1: TLabel;
    lbCopias: TLabel;
    lbDPI: TLabel;
    lbModelo: TLabel;
    lbNomeImg: TLabel;
    lbPorta: TLabel;
    lbTemperatura: TLabel;
    lbMargem: TLabel;
    lbTemperatura2: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    rbArquivo: TRadioButton;
    rbStream: TRadioButton;
    procedure bConfLerClick(Sender: TObject);
    procedure bConfSalvarClick(Sender: TObject);
    procedure bEtqBlocoClick(Sender: TObject);
    procedure bQRCodeClick(Sender: TObject);
    procedure bEtqSimplesClick(Sender: TObject);
    procedure bEtqCarreirasClick(Sender: TObject);
    procedure bImprimirImagemClick(Sender : TObject);
    procedure bCarregarImgClick(Sender : TObject);
    procedure cbModeloChange(Sender : TObject) ;
    procedure eOnlyNumberKeyPress(Sender : TObject ; var Key : char) ;
    procedure FormCreate(Sender: TObject);
  private
     procedure ConfigurarACBrETQ;
     procedure LerParametros;
     procedure GravarParametros;
     procedure ImprimirEtiquetaComCopiasEAvanco;
    { private declarations }
  public
    { public declarations }
  end; 

var
  FPrincipal: TFPrincipal;

implementation
uses
  typinfo, Printers, IniFiles,
  synautil, synacode,
  ACBrUtil, ACBrImage, ACBrETQClass
  {$IfDef MSWINDOWS}
  ,ACBrWinUSBDevice
  {$EndIf};

{$R *.lfm}

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  I : TACBrETQModelo ;
  J: TACBrETQDPI;
  K: TACBrETQUnidade;
  L: TACBrETQBackFeed;
  M: Integer;
  N: TACBrETQOrigem;
  O: TACBrETQPaginaCodigo;
begin
  cbModelo.Items.Clear ;
  For I := Low(TACBrETQModelo) to High(TACBrETQModelo) do
     cbModelo.Items.Add( GetEnumName(TypeInfo(TACBrETQModelo), integer(I) ) ) ;

  cbDPI.Items.Clear ;
  For J := Low(TACBrETQDPI) to High(TACBrETQDPI) do
     cbDPI.Items.Add( GetEnumName(TypeInfo(TACBrETQDPI), integer(J) ) ) ;

  cbBackFeed.Items.Clear ;
  For L := Low(TACBrETQBackFeed) to High(TACBrETQBackFeed) do
     cbBackFeed.Items.Add( GetEnumName(TypeInfo(TACBrETQBackFeed), integer(L) ) ) ;

  cbOrigem.Items.Clear ;
  For N := Low(TACBrETQOrigem) to High(TACBrETQOrigem) do
     cbOrigem.Items.Add( GetEnumName(TypeInfo(TACBrETQOrigem), integer(N) ) ) ;

  cbPagCodigo.Items.Clear ;
  For O := Low(TACBrETQPaginaCodigo) to High(TACBrETQPaginaCodigo) do
     cbPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrETQPaginaCodigo), integer(O) ) ) ;

  cbPorta.Items.Clear;
  //ACBrETQ.Device.AcharPortasSeriais( cbPorta.Items );

  {$IfDef MSWINDOWS}
   ACBrETQ.Device.WinUSB.FindUSBPrinters();
   for M := 0 to ACBrETQ.Device.WinUSB.DeviceList.Count-1 do
     cbPorta.Items.Add('USB:'+ACBrETQ.Device.WinUSB.DeviceList.Items[M].DeviceName);
  {$EndIf}

  ACBrETQ.Device.AcharPortasRAW( cbPorta.Items );

  {$IfDef MSWINDOWS}
   cbPorta.Items.Add('LPT1') ;
   cbPorta.Items.Add('\\localhost\L42') ;
   cbPorta.Items.Add('c:\temp\teste.txt') ;
  {$Else}
   cbPorta.Items.Add('/dev/ttyS0') ;
   cbPorta.Items.Add('/dev/ttyUSB0') ;
   cbPorta.Items.Add('/tmp/ecf.txt') ;
  {$EndIf}
  cbPorta.Items.Add('TCP:192.168.0.31:9100') ;

  cbPagCodigo.ItemIndex := 2;
  cbDPI.ItemIndex := 0;
  cbModelo.ItemIndex := 1;
  cbPorta.ItemIndex := 0;

  LerParametros;
end;

procedure TFPrincipal.bEtqSimplesClick(Sender: TObject);
begin
  ConfigurarACBrETQ ;

  with ACBrETQ do
  begin
     if not (ETQ is TACBrETQZplII) then
      begin
        ImprimirTexto(orNormal, 2, 2, 2, 3, 3, 'RAÇÃO PARA CÃES ÁÉÍÓÚ 5KG', 0, True);
        ImprimirTexto(orNormal, 2, 2, 1, 8, 3, 'MÉDIO PORTE');
        ImprimirBarras(orNormal, barEAN13, 2, 2, 13, 5, '7896003701685', 10, becSIM);
        ImprimirCaixa(10,32,56,13,1,1);
        ImprimirTexto(orNormal, 3, 3, 2, 16, 35, 'R$');
        ImprimirTexto(orNormal, 3, 4, 4, 12, 50, '20,59');
      end
      else
      begin
        ImprimirCaixa(3,3,90,5,5,0, 4);
        ImprimirTexto(orNormal, 'T', 10, 10, 3, 3, 'RAÇÃO PARA CÃES ÁÉÍÓÚ 5KG', 0, True);
        ImprimirTexto(orNormal, 'S', 10, 10, 8, 3, 'MÉDIO PORTE');
        ImprimirBarras(orNormal, barEAN13, 2, 2, 13, 5, '7896003701685', 10, becSIM);
        ImprimirCaixa(13,32,56,17,1,1);
        ImprimirTexto(orNormal, 'G', 40, 80, 18, 35, 'R$');
        ImprimirTexto(orNormal, 'G', 55, 100, 15, 50, '20,59');
      end;

     ImprimirEtiquetaComCopiasEAvanco;
     Desativar;
  end;
end;

procedure TFPrincipal.ImprimirEtiquetaComCopiasEAvanco;
begin
  ACBrETQ.Imprimir(StrToIntDef(eCopias.Text, 1), StrToIntDef(edAvanco.Text, 0));
end;

procedure TFPrincipal.bEtqBlocoClick(Sender: TObject);

  procedure FinalizarEtiquetaComCopiasEAvanco;
  begin
    ACBrETQ.FinalizarEtiqueta(StrToIntDef(eCopias.Text, 1), StrToIntDef(edAvanco.Text, 0));
  end;

begin
  ConfigurarACBrETQ;

  with ACBrETQ do
  begin
     if not (ETQ is TACBrETQZplII) then
     begin
       IniciarEtiqueta;
       ImprimirTexto(orNormal, 2, 2, 2, 3, 3, 'BISCOITO MARILAN RECH 335G', 0, True);
       ImprimirTexto(orNormal, 2, 2, 1, 8, 3, 'CHOC BRANCO');
       ImprimirBarras(orNormal, barEAN13, 2, 2, 13, 5, '7896003701685', 10, becSIM);
       ImprimirTexto(orNormal, 3, 3, 2, 18, 35, 'R$');
       ImprimirTexto(orNormal, 3, 4, 4, 15, 50, '20,59');
       FinalizarEtiquetaComCopiasEAvanco;

       IniciarEtiqueta;
       ImprimirTexto(orNormal, 2, 2, 2, 3, 3, 'SABAO EM PO FLASH 1KG', 0, True);
       ImprimirTexto(orNormal, 2, 2, 1, 8, 3, 'ADVANCED - UNIDADE');
       ImprimirBarras(orNormal, barEAN13, 2, 2, 13, 5, '7898903097042', 10, becSIM);
       ImprimirTexto(orNormal, 3, 3, 2, 18, 35, 'R$');
       ImprimirTexto(orNormal, 3, 4, 4, 15, 50, '3,18');
       FinalizarEtiquetaComCopiasEAvanco;

       IniciarEtiqueta;
       ImprimirTexto(orNormal, 2, 2, 2, 3, 3, 'AMACIANTE AMACIEX 5 LTS', 0, True);
       ImprimirTexto(orNormal, 2, 2, 1, 8, 3, 'MACIO MATRIX FIX');
       ImprimirBarras(orNormal, barEAN13, 2, 2, 13, 5, '7898237690230', 10, becSIM);
       ImprimirTexto(orNormal, 3, 3, 2, 18, 35, 'R$');
       ImprimirTexto(orNormal, 3, 4, 4, 15, 50, '8,60');
       FinalizarEtiquetaComCopiasEAvanco;
     end
     else
     begin
       IniciarEtiqueta;
       ImprimirCaixa(3,3,90,5,5,0);
       ImprimirTexto(orNormal, 'T', 10, 10, 3, 3, 'BISCOITO MARILAN RECH 335G', 0, True);
       ImprimirTexto(orNormal, 'S', 10, 10, 8, 3, 'CHOC BRANCO');
       ImprimirBarras(orNormal, barEAN13, 2, 2, 13, 5, '7896003701685', 10, becSIM);
       ImprimirTexto(orNormal, 'G', 40, 80, 18, 35, 'R$');
       ImprimirTexto(orNormal, 'G', 55, 100, 15, 50, '20,59');
       FinalizarEtiquetaComCopiasEAvanco;

       IniciarEtiqueta;
       ImprimirCaixa(3,3,90,5,5,0);
       ImprimirTexto(orNormal, 'T', 10, 10, 3, 3, 'SABAO EM PO FLASH 1KG', 0, True);
       ImprimirTexto(orNormal, 'S', 10, 10, 8, 3, 'ADVANCED - UNIDADE');
       ImprimirBarras(orNormal, barEAN13, 2, 2, 13, 5, '7898903097042', 10, becSIM);
       ImprimirTexto(orNormal, 'G', 40, 80, 18, 35, 'R$');
       ImprimirTexto(orNormal, 'G', 55, 100, 15, 50, '3,18');
       FinalizarEtiquetaComCopiasEAvanco;

       IniciarEtiqueta;
       ImprimirCaixa(3,3,90,5,5,0);
       ImprimirTexto(orNormal, 'T', 10, 10, 3, 3, 'AMACIANTE AMACIEX 5 LTS', 0, True);
       ImprimirTexto(orNormal, 'S', 10, 10, 8, 3, 'MACIO MATRIX FIX');
       ImprimirBarras(orNormal, barEAN13, 2, 2, 13, 5, '7898237690230', 10, becSIM);
       ImprimirTexto(orNormal, 'G', 40, 80, 18, 35, 'R$');
       ImprimirTexto(orNormal, 'G', 55, 100, 15, 50, '8,60');
       FinalizarEtiquetaComCopiasEAvanco;
     end;

     Imprimir(1, StrToIntDef(edAvanco.Text, 0));
     Desativar;
  end;
end;

procedure TFPrincipal.bConfLerClick(Sender: TObject);
begin
  LerParametros;
end;

procedure TFPrincipal.bConfSalvarClick(Sender: TObject);
begin
  GravarParametros;
end;

procedure TFPrincipal.bQRCodeClick(Sender: TObject);
begin
  ConfigurarACBrETQ;
  with ACBrETQ do
  begin
    ImprimirQRCode( 10, 10, 'https://www.projetoacbr.com.br' );
    FinalizarEtiqueta;
    ImprimirEtiquetaComCopiasEAvanco;
    Desativar;
  end;
end;

procedure TFPrincipal.bEtqCarreirasClick(Sender: TObject);
begin
  ConfigurarACBrETQ;

  with ACBrETQ do
  begin
     if not (ETQ is TACBrETQZplII) then
      begin
        ImprimirTexto(orNormal, 2, 1, 2, 2, 3, 'BISCOITO REC 33G');
        ImprimirTexto(orNormal, 2, 1, 1, 6, 3, 'CHOC BRANCO');
        ImprimirBarras(orNormal, barEAN13, 2, 2, 8, 3, '7896003701685', 10);

        ImprimirTexto(orNormal, 2, 1, 2, 2, 32, 'BISCOITO RECH 33G');
        ImprimirTexto(orNormal, 2, 1, 1, 6, 32, 'CHOC BRANCO');
        ImprimirBarras(orNormal, barEAN13, 2, 2, 8, 32, '7896003701685', 10);

        ImprimirTexto(orNormal, 2, 1, 2, 2, 61, 'BISCOITO RECH 33G');
        ImprimirTexto(orNormal, 2, 1, 1, 6, 61, 'CHOC BRANCO');
        ImprimirBarras(orNormal, barEAN13, 2, 2, 8, 61, '7896003701685', 10);
      end
     else
      begin
         ImprimirTexto(orNormal, '0', 20, 30, 2, 3, 'BISCOITO REC 33G');
         ImprimirTexto(orNormal, '0', 20, 20, 6, 3, 'CHOC BRANCO');
         ImprimirBarras(orNormal, barEAN13, 2, 2, 8, 3, '7896003701685', 10);

         ImprimirTexto(orNormal, '0', 20, 30, 2, 32, 'BISCOITO RECH 33G');
         ImprimirTexto(orNormal, '0', 20, 20, 6, 32, 'CHOC BRANCO');
         ImprimirBarras(orNormal, barEAN13, 2, 2, 8, 32, '7896003701685', 10);

         ImprimirTexto(orNormal, '0', 20, 30, 2, 61, 'BISCOITO RECH 33G');
         ImprimirTexto(orNormal, '0', 20, 20, 6, 61, 'CHOC BRANCO');
         ImprimirBarras(orNormal, barEAN13, 2, 2, 8, 61, '7896003701685', 10);
      end;

      FinalizarEtiqueta;

      ImprimirEtiquetaComCopiasEAvanco;
      Desativar;
  end;
end;

procedure TFPrincipal.bImprimirImagemClick(Sender : TObject);
begin
  ConfigurarACBrETQ;

  with ACBrETQ do
  begin
     ImprimirImagem(1,1,10,edNomeImg.Text);
     ImprimirEtiquetaComCopiasEAvanco;
     Desativar;
  end ;
end;

procedure TFPrincipal.bCarregarImgClick(Sender : TObject);
var
  MS : TMemoryStream;
  OK: Boolean;
  NomeImagem: String;
begin
  if (edNomeImg.Text = '') then
  begin
    ShowMessage('Defina um nome para a Imagem');
    Exit;
  end;

  ConfigurarACBrETQ;

  OK := False;
  OpenPictureDialog1.InitialDir := ExtractFileDir(Application.ExeName);

  case ACBrETQ.Modelo of
    etqPplb: OpenPictureDialog1.Filter := 'PCX|*.pcx';
    etqPpla: OpenPictureDialog1.Filter := 'PCX|*.pcx|BMP MonoCromático|*.bmp';
  else
    OpenPictureDialog1.Filter := 'PNG|*.png|PCX|*.pcx|BMP MonoCromático|*.bmp';
  end;

  NomeImagem := edNomeImg.Text;
  if rbStream.Checked then
   begin
     if (Image1.Picture.Bitmap.Empty) then
     begin
       if OpenPictureDialog1.Execute then
       begin
         try
           Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
         except
           Image1.Picture.Clear;
         end ;
       end;
     end;

     MS := TMemoryStream.Create;
     try
       Image1.Picture.SaveToStream(MS);
       MS.Position := 0;
       ACBrETQ.CarregarImagem( MS, NomeImagem, True, ExtractFileExt(OpenPictureDialog1.FileName) );
       OK := True;
     finally
       MS.Free ;
     end ;
   end
  else
   begin
     if OpenPictureDialog1.Execute then
     begin
       NomeImagem := ExtractFileName(OpenPictureDialog1.FileName);
       ACBrETQ.CarregarImagem( OpenPictureDialog1.FileName, NomeImagem);
       OK := True;
       try
         Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
       except
         Image1.Picture.Clear;
       end ;
     end ;
   end ;

  if OK then
  begin
    edNomeImg.Text := NomeImagem;
    MessageDlg('Imagem '+edNomeImg.Text+', carregada na memória da Impressora', mtInformation,[mbOK],0);
  end;

  ACBrETQ.Desativar;
end;

procedure TFPrincipal.cbModeloChange(Sender : TObject) ;
begin
   edAvanco.Enabled := (cbModelo.ItemIndex = 1);
   ACBrETQ.Desativar;
end;

procedure TFPrincipal.eOnlyNumberKeyPress(Sender : TObject ; var Key : char) ;
begin
  if not (Key in ['0'..'9',#8,#13]) then
    Key := #0 ;
end;

procedure TFPrincipal.ConfigurarACBrETQ;
begin
  with ACBrETQ do
  begin
     Desativar;
     DPI := TACBrETQDPI(cbDPI.ItemIndex);
     Modelo := TACBrETQModelo(cbModelo.ItemIndex);
     Porta := cbPorta.Text;
     LimparMemoria := ckMemoria.Checked;
     Temperatura := StrToIntDef(edTemperatura.Text,10);
     Velocidade := StrToIntDef(edVelocidade.Text,-1);
     BackFeed := TACBrETQBackFeed(cbBackFeed.ItemIndex);
     Unidade := etqMilimetros; //etqDecimoDeMilimetros;
     MargemEsquerda := StrToIntDef(edMargemEsquerda.Text, 0);
     Origem := TACBrETQOrigem(cbOrigem.ItemIndex);
     PaginaDeCodigo := TACBrETQPaginaCodigo(cbPagCodigo.ItemIndex);

     Ativar;
     cbPorta.Text := Porta;
     cbModelo.ItemIndex := Integer(Modelo);
  end;
  GravarParametros;
end;

procedure TFPrincipal.LerParametros;
Var
  ArqINI: String ;
  INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;
  if not FileExists(ArqINI) then
    Exit;

  INI := TIniFile.Create(ArqINI);
  try
    cbPorta.Text := INI.ReadString('ETQ', 'Porta', ACBrETQ.Porta);
    cbModelo.ItemIndex := INI.ReadInteger('ETQ', 'Modelo', Integer(ACBrETQ.Modelo));
    edTemperatura.Text := INI.ReadString('ETQ', 'Temperatura', IntToStr(ACBrETQ.Temperatura));
    edMargemEsquerda.Text := INI.ReadString('ETQ', 'MargemEsquerda', IntToStr(ACBrETQ.MargemEsquerda));
    edVelocidade.Text := INI.ReadString('ETQ', 'Velocidade', IntToStr(ACBrETQ.Velocidade));
    edAvanco.Text := INI.ReadString('ETQ', 'Avanco', IntToStr(ACBrETQ.Avanco));
    cbDPI.ItemIndex := INI.ReadInteger('ETQ', 'DPI', Integer(ACBrETQ.DPI));
    cbBackFeed.ItemIndex := INI.ReadInteger('ETQ', 'BackFeed', Integer(ACBrETQ.BackFeed));
    cbPagCodigo.ItemIndex := INI.ReadInteger('ETQ','PaginaDeCodigo', Integer(ACBrETQ.PaginaDeCodigo));
    cbOrigem.ItemIndex := INI.ReadInteger('ETQ','Origem', Integer(ACBrETQ.Origem));
    ckMemoria.Checked  := INI.ReadBool('ETQ','Memoria', ACBrETQ.LimparMemoria);
  finally
     INI.Free ;
  end ;
end;

procedure TFPrincipal.GravarParametros;
Var
  ArqINI: String ;
  INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;
  INI := TIniFile.Create(ArqINI);
  try
    INI.WriteString('ETQ', 'Porta', cbPorta.Text);
    INI.WriteInteger('ETQ', 'Modelo', cbModelo.ItemIndex);
    INI.WriteString('ETQ', 'Temperatura', edTemperatura.Text);
    INI.WriteString('ETQ', 'MargemEsquerda', edMargemEsquerda.Text);
    INI.WriteString('ETQ', 'Velocidade', edVelocidade.Text);
    INI.WriteString('ETQ', 'Avanco', edAvanco.Text);
    INI.WriteInteger('ETQ', 'DPI', cbDPI.ItemIndex);
    INI.WriteInteger('ETQ', 'BackFeed', cbBackFeed.ItemIndex);
    INI.WriteInteger('ETQ','PaginaDeCodigo', cbPagCodigo.ItemIndex);
    INI.WriteInteger('ETQ','Origem', cbOrigem.ItemIndex);
    INI.WriteBool('ETQ','Memoria', ckMemoria.Checked);
  finally
     INI.Free ;
  end ;
end;

end.

