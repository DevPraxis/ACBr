{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida               }
{                                                                              }
{ Colaboradores nesse arquivo: Italo Giurizzato Junior                         }
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

unit ISSSJP.Provider;

interface

uses
  SysUtils, Classes,
  ACBrXmlBase, ACBrXmlDocument, ACBrNFSeXClass, ACBrNFSeXConversao,
  ACBrNFSeXGravarXml, ACBrNFSeXLerXml, ACBrNFSeXWebservicesResponse,
  ACBrNFSeXProviderABRASFv1, ACBrNFSeXWebserviceBase;

type
  TACBrNFSeXWebserviceISSSJP = class(TACBrNFSeXWebserviceSoap11)
  public
    function Recepcionar(ACabecalho, AMSG: String): string; override;
    function ConsultarLote(ACabecalho, AMSG: String): string; override;
    function ConsultarSituacao(ACabecalho, AMSG: String): string; override;
    function ConsultarNFSePorRps(ACabecalho, AMSG: String): string; override;
    function ConsultarNFSe(ACabecalho, AMSG: String): string; override;
    function Cancelar(ACabecalho, AMSG: String): string; override;

    function TratarXmlRetornado(const aXML: string): string; override;
  end;

  TACBrNFSeProviderISSSJP = class (TACBrNFSeProviderABRASFv1)
  protected
    procedure Configuracao; override;

    function CriarGeradorXml(const ANFSe: TNFSe): TNFSeWClass; override;
    function CriarLeitorXml(const ANFSe: TNFSe): TNFSeRClass; override;
    function CriarServiceClient(const AMetodo: TMetodo): TACBrNFSeXWebservice; override;

  end;

implementation

uses
  ACBrUtil, ACBrDFeException, ACBrNFSeX, ACBrNFSeXConfiguracoes,
  ACBrNFSeXNotasFiscais, ISSSJP.GravarXml, ISSSJP.LerXml;

{ TACBrNFSeXWebserviceISSSJP }

function TACBrNFSeXWebserviceISSSJP.Recepcionar(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<nfse:nfse_RecepcionarLoteRpsV3>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</nfse:nfse_RecepcionarLoteRpsV3>';

  Result := Executar('RecepcionarLoteRpsV3', Request,
                     ['return', 'EnviarLoteRpsResposta'],
                     ['xmlns:nfe="http://nfe.sjp.pr.gov.br"']);
end;

function TACBrNFSeXWebserviceISSSJP.ConsultarLote(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<nfse:nfse_ConsultarLoteRpsV3>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</nfse:nfse_ConsultarLoteRpsV3>';

  Result := Executar('ConsultarLoteRpsV3', Request,
                     ['return', 'ConsultarLoteRpsResposta'],
                     ['xmlns:nfe="http://nfe.sjp.pr.gov.br"']);
end;

function TACBrNFSeXWebserviceISSSJP.ConsultarSituacao(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<nfse:nfse_ConsultarSituacaoLoteRpsV3>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</nfse:nfse_ConsultarSituacaoLoteRpsV3>';

  Result := Executar('ConsultarSituacaoLoteRpsV3', Request,
                     ['return', 'ConsultarSituacaoLoteRpsResposta'],
                     ['xmlns:nfe="http://nfe.sjp.pr.gov.br"']);
end;

function TACBrNFSeXWebserviceISSSJP.ConsultarNFSePorRps(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<nfse:nfse_ConsultarNfsePorRpsV3>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</nfse:nfse_ConsultarNfsePorRpsV3>';

  Result := Executar('ConsultarNfsePorRpsV3', Request,
                     ['return', 'ConsultarNfseRpsResposta'],
                     ['xmlns:nfe="http://nfe.sjp.pr.gov.br"']);
end;

function TACBrNFSeXWebserviceISSSJP.ConsultarNFSe(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<nfse:nfse_ConsultarNfseV3>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</nfse:nfse_ConsultarNfseV3>';

  Result := Executar('ConsultarNfseV3', Request,
                     ['return', 'ConsultarNfseResposta'],
                     ['xmlns:nfe="http://nfe.sjp.pr.gov.br"']);
end;

function TACBrNFSeXWebserviceISSSJP.Cancelar(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<nfse:nfse_CancelarNfseV3>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</nfse:nfse_CancelarNfseV3>';

  Result := Executar('CancelarNfseV3', Request,
                     ['return', 'CancelarNfseResposta'],
                     ['xmlns:nfe="http://nfe.sjp.pr.gov.br"']);
end;

function TACBrNFSeXWebserviceISSSJP.TratarXmlRetornado(
  const aXML: string): string;
begin
  Result := inherited TratarXmlRetornado(aXML);

  Result := ParseText(AnsiString(Result), True, False);
  Result := RemoverDeclaracaoXML(Result);
  Result := RemoverIdentacao(Result);
  Result := RemoverPrefixosDesnecessarios(Result);
end;

{ TACBrNFSeProviderISSSJP }

procedure TACBrNFSeProviderISSSJP.Configuracao;
begin
  inherited Configuracao;

  with ConfigAssinar do
  begin
    LoteRps := True;
    ConsultarSituacao := True;
    ConsultarLote := True;
    ConsultarNFSeRps := True;
    ConsultarNFSe := True;
  end;

  with ConfigMsgDados do
  begin
    PrefixoTS := 'tipos';

    XmlRps.xmlns := 'http://nfe.sjp.pr.gov.br/tipos_v03.xsd';

    LoteRps.xmlns := 'http://nfe.sjp.pr.gov.br/servico_enviar_lote_rps_envio_v03.xsd';

    ConsultarSituacao.xmlns := 'http://nfe.sjp.pr.gov.br/servico_consultar_situacao_lote_rps_envio_v03.xsd';

    ConsultarLote.xmlns := 'http://nfe.sjp.pr.gov.br/servico_consultar_lote_rps_envio_v03.xsd';

    ConsultarNFSeRps.xmlns := 'http://nfe.sjp.pr.gov.br/servico_consultar_nfse_rps_envio_v03.xsd';

    ConsultarNFSe.xmlns := 'http://nfe.sjp.pr.gov.br/servico_consultar_nfse_envio_v03.xsd';

    CancelarNFSe.xmlns := 'http://nfe.sjp.pr.gov.br/servico_cancelar_nfse_envio_v03.xsd';

    DadosCabecalho := '<ns2:cabecalho versao="3" xmlns:ns2="http://nfe.sjp.pr.gov.br/cabecalho_v03.xsd">' +
                      '<versaoDados>3</versaoDados>' +
                      '</ns2:cabecalho>';
  end;

  with ConfigSchemas do
  begin
    Recepcionar := 'servico_enviar_lote_rps_envio_v03.xsd';
    ConsultarSituacao := 'servico_consultar_situacao_lote_rps_envio_v03.xsd';
    ConsultarLote := 'servico_consultar_lote_rps_envio_v03.xsd';
    ConsultarNFSeRps := 'servico_consultar_nfse_rps_envio_v03.xsd';
    ConsultarNFSe := 'servico_consultar_nfse_envio_v03.xsd';
    CancelarNFSe := 'servico_cancelar_nfse_envio_v03.xsd';
  end;
end;

function TACBrNFSeProviderISSSJP.CriarGeradorXml(const ANFSe: TNFSe): TNFSeWClass;
begin
  Result := TNFSeW_ISSSJP.Create(Self);
  Result.NFSe := ANFSe;
end;

function TACBrNFSeProviderISSSJP.CriarLeitorXml(const ANFSe: TNFSe): TNFSeRClass;
begin
  Result := TNFSeR_ISSSJP.Create(Self);
  Result.NFSe := ANFSe;
end;

function TACBrNFSeProviderISSSJP.CriarServiceClient(const AMetodo: TMetodo): TACBrNFSeXWebservice;
var
  URL: string;
begin
  URL := GetWebServiceURL(AMetodo);

  if URL <> '' then
    Result := TACBrNFSeXWebserviceISSSJP.Create(FAOwner, AMetodo, URL)
  else
  begin
    if ConfigGeral.Ambiente = taProducao then
      raise EACBrDFeException.Create(ERR_SEM_URL_PRO)
    else
      raise EACBrDFeException.Create(ERR_SEM_URL_HOM);
  end;
end;

end.
