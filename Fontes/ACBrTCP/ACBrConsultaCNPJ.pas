{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida               }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida - daniel@projetoacbr.com.br - www.projetoacbr.com.br}
{       Rua Coronel Aureliano de Camargo, 963 - Tatu� - SP - 18270-170         }
{******************************************************************************}

{$I ACBr.inc}

unit ACBrConsultaCNPJ;

interface

uses
  SysUtils, Classes,
  ACBrBase, ACBrSocket, ACBrIBGE;

const
  CURL_CAPTCH = 'https://servicos.receita.fazenda.gov.br/Servicos/cnpjreva/captcha/gerarCaptcha.asp';
  CURL_REFER = 'http://servicos.receita.fazenda.gov.br/Servicos/cnpjreva/Cnpjreva_Solicitacao_CS.asp';
  CURL_POST = 'https://servicos.receita.fazenda.gov.br/Servicos/cnpjreva/valida.asp';


type
  EACBrConsultaCNPJException = class ( Exception );

  { TACBrConsultaCNPJ }
  {$IFDEF RTL230_UP}
  [ComponentPlatformsAttribute(piacbrAllPlatforms)]
  {$ENDIF RTL230_UP}
  TACBrConsultaCNPJ = class(TACBrHTTP)
  private
    FACBrIBGE: TACBrIBGE;
    FNaturezaJuridica : String ;
    //FViewState: String;
    FEmpresaTipo: String;
    FAbertura: TDateTime;
    FRazaoSocial: String;
    FFantasia: String;
    FPorte: String;
    FCNAE1: String;
    FCNAE2: TStringList;
    FEndereco: String;
    FNumero: String;
    FComplemento: String;
    FCEP: String;
    FBairro: String;
    FCidade: String;
    FUF: String;
    FSituacao: String;
    FSituacaoEspecial : String;
    FCNPJ: String;
    FDataSituacao: TDateTime;
    FDataSituacaoEspecial : TDateTime;
    FEndEletronico: String;
    FTelefone: String;
    FEFR: string;  //ENTE FEDERATIVO RESPONS�VEL (EFR)
    FMotivoSituacaoCad: string;
    FPesquisarIBGE: Boolean;
    FCodigoIBGE: String;
    //Function GetCaptchaURL: String;
    function GetIBGE_UF : String ;

    function VerificarErros(const Str: String): String;
    function LerCampo(Texto: TStringList; NomeCampo: String): String;
  public
    procedure Captcha(Stream: TStream);
    function Consulta(const ACNPJ, ACaptcha: String;
      ARemoverEspacosDuplos: Boolean = False): Boolean;
    procedure Clear;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property CNPJ: String Read FCNPJ Write FCNPJ;
    property EmpresaTipo: String Read FEmpresaTipo;
    property Abertura: TDateTime Read FAbertura;
    property RazaoSocial: String Read FRazaoSocial;
    property Fantasia: String Read FFantasia;
    property Porte: String read FPorte;
    property CNAE1: String Read FCNAE1;
    property CNAE2: TStringList Read FCNAE2;
    property Endereco: String Read FEndereco;
    property Numero: String Read FNumero;
    property Complemento: String Read FComplemento;
    property CEP: String Read FCEP;
    property Bairro: String Read FBairro;
    property Cidade: String Read FCidade;
    property UF: String Read FUF;
    property Situacao: String Read FSituacao;
    property SituacaoEspecial: String Read FSituacaoEspecial;
    property DataSituacao: TDateTime Read FDataSituacao;
    property DataSituacaoEspecial : TDatetime Read FDataSituacaoEspecial;
    property NaturezaJuridica: String Read FNaturezaJuridica;
    property EndEletronico: string read FEndEletronico;
    property Telefone: String read FTelefone;
    property EFR: string read FEFR;
    property MotivoSituacaoCad: string read FMotivoSituacaoCad;
    property IBGE_Municipio  : String read FCodigoIBGE;
    property IBGE_UF         : String read GetIBGE_UF ;
    property PesquisarIBGE: Boolean read FPesquisarIBGE write FPesquisarIBGE;
  end;

implementation

uses
  strutils,
  blcksock, synautil,
  ACBrUtil, ACBrValidador;

(*function TACBrConsultaCNPJ.GetCaptchaURL : String ;
var
  AURL, Html: String;
begin
  try
    Self.HTTPGet('https://www.receita.fazenda.gov.br/pessoajuridica/cnpj/cnpjreva/Cnpjreva_solicitacao3.asp');
    Html := Self.RespHTTP.Text;

    AURL := RetornarConteudoEntre(Html, '<img id="imgCaptcha" src="', '"');

    FViewState := RetornarConteudoEntre(Html, '<input type=hidden id=viewstate name=viewstate value='+'''', '''');

    Result := StringReplace(AURL, 'amp;', '', []);
  except
    on E: Exception do
    begin
      raise EACBrConsultaCNPJException.Create('Erro na hora de obter a URL do captcha.'+#13#10+E.Message);
    end;
  end;
end;*)

procedure TACBrConsultaCNPJ.Captcha(Stream: TStream);
begin
  try
    HTTPGet(CURL_CAPTCH);  // GetCaptchaURL
    if HttpSend.ResultCode = 200 then
    begin
      HTTPSend.Document.Position := 0;
      Stream.CopyFrom(HttpSend.Document, HttpSend.Document.Size);
      Stream.Position := 0;
    end;
  except
    on E: Exception do
      raise EACBrConsultaCNPJException.Create('Erro na hora de fazer o download da imagem do captcha.'+sLineBreak+E.Message);
  end;
end;

function TACBrConsultaCNPJ.VerificarErros(const Str: String): String;
  var
    Res: String;
begin
  Res := '';
  if Res = '' then
    if Pos( ACBrStr('Imagem com os caracteres anti rob�'), Str) > 0 then
      Res := 'Catpcha errado.';

  if Res = '' then
    if Pos( 'Erro na Consulta', Str ) > 0  then
       Res := 'Erro na Consulta. Atualize o Captcha';

  if Res = '' then
    if Pos(ACBrStr('N�o existe no Cadastro de Pessoas Jur�dicas o n�mero de CNPJ informado. '+
                   'Verifique se o mesmo foi digitado corretamente.'), Str) > 0 then
      Res := 'N�o existe no Cadastro de Pessoas Jur�dicas o n�mero de CNPJ informado. '+
             'Verifique se o mesmo foi digitado corretamente.';

  if Res = '' then
    if Pos(ACBrStr('a. No momento n�o podemos atender a sua solicita��o. Por favor tente mais tarde.'), Str) > 0 then
      Res := 'Erro no site da receita federal. Tente mais tarde.';

  Result := ACBrStr(Res);
end;

function TACBrConsultaCNPJ.LerCampo(Texto: TStringList; NomeCampo: String
  ): String;
var
  i : integer;
  linha: String;
begin
  Result := '';
  for i := 0 to Texto.Count-1 do
  begin
    linha := Trim(Texto[i]);
    if linha = NomeCampo then
    begin
      Result := StringReplace(Trim(Texto[i+1]),'&nbsp;',' ',[rfReplaceAll]);
      Texto.Delete(I);
      break;
    end;
  end
end;

function TACBrConsultaCNPJ.Consulta(const ACNPJ, ACaptcha: String;
  ARemoverEspacosDuplos: Boolean): Boolean;
var
  Erro, StrAux, PostStr:String;
  Resposta : TStringList;
  CountCid, Tentativas:Integer;
  Retentar: Boolean;
begin
  Erro := ValidarCNPJ( ACNPJ ) ;
  if Erro <> '' then
     raise EACBrConsultaCNPJException.Create(Erro);

  Clear;
  Retentar := True;
  Tentativas := 0;
  while Retentar do
  begin
    HTTPSend.Clear;
    PostStr := 'origem=comprovante&' +
               'cnpj='+OnlyNumber(ACNPJ)+'&' +
               'txtTexto_captcha_serpro_gov_br=' +Trim(ACaptcha) +'&' +
               'search_type=cnpj';

    WriteStrToStream( HTTPSend.Document, PostStr );
    HTTPSend.MimeType := 'application/x-www-form-urlencoded';
    HTTPSend.Cookies.Add('flag=1');
    HTTPSend.Headers.Add('Referer: '+CURL_REFER);
    HTTPPost(CURL_POST);

    //DEBUG:
    //RespHTTP.SaveToFile('c:\temp\cnpj1.txt');

    Retentar := (Tentativas < 2) and
                (pos('Captcha Sonoro', RespHTTP.Text) > 0) and
                (pos(ACBrStr('Digite o n�mero de CNPJ da empresa e clique em'), RespHTTP.Text) > 0);
    Inc( Tentativas );
  end;

  Erro := VerificarErros(RespHTTP.Text);

  if Erro <> '' then
  begin
    raise EACBrConsultaCNPJException.Create(Erro);
  end;

  Result:= True;
  Resposta := TStringList.Create;
  try
    Resposta.Text := StripHTML(RespHTTP.Text);
    RemoveEmptyLines( Resposta );

    //DEBUG:
    //Resposta.SaveToFile('c:\temp\cnpj2.txt');

    FCNPJ         := LerCampo(Resposta,ACBrStr('N�MERO DE INSCRI��O'));
    if FCNPJ <> '' then
      FEmpresaTipo  := LerCampo(Resposta,FCNPJ);
    FAbertura     := StringToDateTimeDef(LerCampo(Resposta,'DATA DE ABERTURA'),0);
    FRazaoSocial  := LerCampo(Resposta,'NOME EMPRESARIAL');
    FFantasia     := LerCampo(Resposta,ACBrStr('T�TULO DO ESTABELECIMENTO (NOME DE FANTASIA)'));
    FPorte        := LerCampo(Resposta,'PORTE');
    FCNAE1        := LerCampo(Resposta,ACBrStr('C�DIGO E DESCRI��O DA ATIVIDADE ECON�MICA PRINCIPAL'));
    FEndereco     := LerCampo(Resposta,'LOGRADOURO');
    FNumero       := LerCampo(Resposta,ACBrStr('N�MERO'));
    FComplemento  := LerCampo(Resposta,'COMPLEMENTO');
    FCEP          := OnlyNumber( LerCampo(Resposta,'CEP') ) ;
    if FCEP <> '' then
      FCEP        := copy(FCEP,1,5)+'-'+copy(FCEP,6,3) ;

    FBairro       := LerCampo(Resposta,'BAIRRO/DISTRITO');
    FCidade       := LerCampo(Resposta,ACBrStr('MUNIC�PIO'));
    FUF           := LerCampo(Resposta,'UF');
    FSituacao     := LerCampo(Resposta,ACBrStr('SITUA��O CADASTRAL'));
    FSituacaoEspecial     := LerCampo(Resposta,ACBrStr('SITUA��O ESPECIAL'));
    FDataSituacao := StringToDateTimeDef(LerCampo(Resposta,ACBrStr('DATA DA SITUA��O CADASTRAL')),0);
    FDataSituacaoEspecial := StringToDateTimeDef(LerCampo(Resposta,ACBrStr('DATA DA SITUA��O ESPECIAL')),0);
    FNaturezaJuridica := LerCampo(Resposta,ACBrStr('C�DIGO E DESCRI��O DA NATUREZA JUR�DICA'));
    FEndEletronico:= LerCampo(Resposta, ACBrStr('ENDERE�O ELETR�NICO'));
    if Trim(FEndEletronico) = 'TELEFONE' then
      FEndEletronico := '';
    FTelefone     := LerCampo(Resposta, 'TELEFONE');
    FEFR          := LerCampo(Resposta, ACBrStr('ENTE FEDERATIVO RESPONS�VEL (EFR)'));
    FMotivoSituacaoCad := LerCampo(Resposta, ACBrStr('MOTIVO DE SITUA��O CADASTRAL'));

    FCNAE2.Clear;
    repeat
      StrAux := LerCampo(Resposta,ACBrStr('C�DIGO E DESCRI��O DAS ATIVIDADES ECON�MICAS SECUND�RIAS'));
      if trim(StrAux) = '' then
        Break;

      FCNAE2.Add(ACBrUtil.RemoverEspacosDuplos(StrAux));

      repeat
        StrAux := LerCampo(Resposta, StrAux);
        if trim(StrAux) = '' then
          Break;

        FCNAE2.Add(ACBrUtil.RemoverEspacosDuplos(StrAux));
      until False;
    until False;
  finally
    Resposta.Free;
  end ;

  // Removendo astr�sticos do inicio do nome da Cidade e UF..
  while (Length(FCidade) > 0) and (FCidade[1] = '*') do
    Delete(FCidade,1,1);

  while (Length(FUF) > 0) and (FUF[1] = '*') do
    Delete(FUF,1,1);

  // Consulta Codigo da Cidade ACBrIBGE
  fCodigoIBGE := '';
  if FPesquisarIBGE and (FCidade <> '') and (FUF <> '') then
  begin
    FACBrIBGE.BuscarPorNome( FCidade, FUF, False);

    if FACBrIBGE.Cidades.Count > 0 then  // Achou ?
    begin
      for CountCid := 0 to FACBrIBGE.Cidades.Count -1 do
      Begin
         if (UpperCase(TiraAcentos(FCidade)) = UpperCase(TiraAcentos(FACBrIBGE.Cidades[CountCid].Municipio))) And
            (FUF = FACBrIBGE.Cidades[CountCid].UF) then
         Begin
           FCodigoIBGE := IntToStr( FACBrIBGE.Cidades[CountCid].CodMunicipio );
           Break;
         End;
      end;
    end;
  end ;

  if Trim(FRazaoSocial) = '' then
    raise EACBrConsultaCNPJException.Create(ACBrStr('N�o foi poss�vel obter os dados.'));

  if ARemoverEspacosDuplos then
  begin
    FRazaoSocial := RemoverEspacosDuplos(FRazaoSocial);
    FFantasia    := RemoverEspacosDuplos(FFantasia);
    FEndereco    := RemoverEspacosDuplos(FEndereco);
    FNumero      := RemoverEspacosDuplos(FNumero);
    FComplemento := RemoverEspacosDuplos(FComplemento);
    FBairro      := RemoverEspacosDuplos(FBairro);
    FCidade      := RemoverEspacosDuplos(FCidade);
  end;
end;

constructor TACBrConsultaCNPJ.Create(AOwner: TComponent);
begin
  inherited;
  FCNAE2 := TStringList.Create;
  FPesquisarIBGE := False;
  fACBrIBGE := TACBrIBGE.Create(nil);
  FACBrIBGE.IgnorarCaixaEAcentos := True;

  HTTPSend.Sock.SSL.SSLType := LT_TLSv1;
end;

destructor TACBrConsultaCNPJ.Destroy;
begin
  fACBrIBGE.Free;
  FCNAE2.Free;
  inherited;
end;

procedure TACBrConsultaCNPJ.Clear;
begin
  FNaturezaJuridica := '';
  FEmpresaTipo      := '';
  FAbertura         := 0;
  FRazaoSocial      := '';
  FFantasia         := '';
  FPorte            := '';
  FCNAE1            := '';
  FEndereco         := '';
  FNumero           := '';
  FComplemento      := '';
  FCEP              := '';
  FBairro           := '';
  FCidade           := '';
  FUF               := '';
  FSituacao         := '';
  FSituacaoEspecial := '';
  FCNPJ             := '';
  FDataSituacao     := 0;
  FDataSituacaoEspecial     := 0;
  FEndEletronico    := '';
  FTelefone         := '';
  FEFR              := '';
  FMotivoSituacaoCad:= '';
  fCodigoIBGE       := '';

  FCNAE2.Clear;
end;

function TACBrConsultaCNPJ.GetIBGE_UF: String;
begin
  Result := copy(fCodigoIBGE,1,2) ;
end;

end.
