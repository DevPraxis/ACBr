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

{
     Funcionou informando httpWinINet para HTTPLib
}

{$I ACBr.inc}

unit Ginfes.Provider;

interface

uses
  SysUtils, Classes,
  ACBrXmlBase, ACBrNFSeXClass, ACBrNFSeXConversao,
  ACBrNFSeXGravarXml, ACBrNFSeXLerXml,
  ACBrNFSeXProviderABRASFv1,
  ACBrNFSeXWebserviceBase, ACBrNFSeXWebservicesResponse;

type
  TACBrNFSeXWebserviceGinfes = class(TACBrNFSeXWebserviceSoap11)
  private
    function GetNameSpace: string;
  public
    function Recepcionar(ACabecalho, AMSG: String): string; override;
    function ConsultarLote(ACabecalho, AMSG: String): string; override;
    function ConsultarSituacao(ACabecalho, AMSG: String): string; override;
    function ConsultarNFSePorRps(ACabecalho, AMSG: String): string; override;
    function ConsultarNFSe(ACabecalho, AMSG: String): string; override;
    function Cancelar(ACabecalho, AMSG: String): string; override;

    function TratarXmlRetornado(const aXML: string): string; override;

    property NameSpace: string read GetNameSpace;
  end;

  TACBrNFSeProviderGinfes = class (TACBrNFSeProviderABRASFv1)
  protected
    procedure Configuracao; override;

    function CriarGeradorXml(const ANFSe: TNFSe): TNFSeWClass; override;
    function CriarLeitorXml(const ANFSe: TNFSe): TNFSeRClass; override;
    function CriarServiceClient(const AMetodo: TMetodo): TACBrNFSeXWebservice; override;

    procedure GerarMsgDadosCancelaNFSe(Response: TNFSeCancelaNFSeResponse;
      Params: TNFSeParamsResponse); override;

    procedure TratarRetornoCancelaNFSe(Response: TNFSeCancelaNFSeResponse); override;
  end;

implementation

uses
  ACBrUtil, ACBrDFeException, ACBrXmlDocument,
  ACBrNFSeX, ACBrNFSeXConfiguracoes, ACBrNFSeXConsts,
  Ginfes.GravarXml, Ginfes.LerXml;

{ TACBrNFSeProviderGinfes }

procedure TACBrNFSeProviderGinfes.Configuracao;
begin
  inherited Configuracao;

  ConfigGeral.QuebradeLinha := '\n';

  with ConfigMsgDados do
  begin
    Prefixo := 'ns3';
    PrefixoTS := 'ns4';

    DadosCabecalho := '<ns2:cabecalho versao="3" xmlns:ns2="http://www.ginfes.com.br/cabecalho_v03.xsd">' +
                      '<versaoDados>3</versaoDados>' +
                      '</ns2:cabecalho>';

    XmlRps.xmlns := 'http://www.ginfes.com.br/tipos_v03.xsd';

    LoteRps.xmlns := 'http://www.ginfes.com.br/servico_enviar_lote_rps_envio_v03.xsd';

    ConsultarSituacao.xmlns := 'http://www.ginfes.com.br/servico_consultar_situacao_lote_rps_envio_v03.xsd';

    ConsultarLote.xmlns := 'http://www.ginfes.com.br/servico_consultar_lote_rps_envio_v03.xsd';

    ConsultarNFSeRps.xmlns := 'http://www.ginfes.com.br/servico_consultar_nfse_rps_envio_v03.xsd';

    ConsultarNFSe.xmlns := 'http://www.ginfes.com.br/servico_consultar_nfse_envio_v03.xsd';

    with CancelarNFSe do
    begin
      xmlns := 'http://www.ginfes.com.br/servico_cancelar_nfse_envio';
      InfElemento := 'Prestador';
      DocElemento := 'CancelarNfseEnvio';
    end;
  end;

  with ConfigAssinar do
  begin
    LoteRps           := True;
    ConsultarSituacao := True;
    ConsultarLote     := True;
    ConsultarNFSeRps  := True;
    ConsultarNFSe     := True;
    CancelarNFSe      := True;
  end;

  with ConfigSchemas do
  begin
    Recepcionar := 'servico_enviar_lote_rps_envio_v03.xsd';
    ConsultarSituacao := 'servico_consultar_situacao_lote_rps_envio_v03.xsd';
    ConsultarLote := 'servico_consultar_lote_rps_envio_v03.xsd';
    ConsultarNFSeRps := 'servico_consultar_nfse_rps_envio_v03.xsd';
    ConsultarNFSe := 'servico_consultar_nfse_envio_v03.xsd';
    CancelarNFSe := 'servico_cancelar_nfse_envio_v02.xsd';
  end;
end;

function TACBrNFSeProviderGinfes.CriarGeradorXml(const ANFSe: TNFSe): TNFSeWClass;
begin
  Result := TNFSeW_Ginfes.Create(Self);
  Result.NFSe := ANFSe;
end;

function TACBrNFSeProviderGinfes.CriarLeitorXml(const ANFSe: TNFSe): TNFSeRClass;
begin
  Result := TNFSeR_Ginfes.Create(Self);
  Result.NFSe := ANFSe;
end;

function TACBrNFSeProviderGinfes.CriarServiceClient(const AMetodo: TMetodo): TACBrNFSeXWebservice;
var
  URL: string;
begin
  URL := GetWebServiceURL(AMetodo);

  if URL <> '' then
    Result := TACBrNFSeXWebserviceGinfes.Create(FAOwner, AMetodo, URL)
  else
  begin
    if ConfigGeral.Ambiente = taProducao then
      raise EACBrDFeException.Create(ERR_SEM_URL_PRO)
    else
      raise EACBrDFeException.Create(ERR_SEM_URL_HOM);
  end;
end;

procedure TACBrNFSeProviderGinfes.GerarMsgDadosCancelaNFSe(
  Response: TNFSeCancelaNFSeResponse; Params: TNFSeParamsResponse);
var
  Emitente: TEmitenteConfNFSe;
  InfoCanc: TInfCancelamento;
begin
  Emitente := TACBrNFSeX(FAOwner).Configuracoes.Geral.Emitente;
  InfoCanc := Response.InfCancelamento;

  with Params do
  begin
    NameSpace := StringReplace(NameSpace, '_v03.xsd', '', [rfReplaceAll]);

    Response.ArquivoEnvio := '<' + Prefixo + 'CancelarNfseEnvio' + NameSpace + '>' +
                           '<' + Prefixo + 'Prestador>' +
                             '<' + Prefixo2 + 'Cnpj>' +
                               OnlyNumber(Emitente.CNPJ) +
                             '</' + Prefixo2 + 'Cnpj>' +
                             GetInscMunic(Emitente.InscMun, Prefixo2) +
                           '</' + Prefixo + 'Prestador>' +
                           '<' + Prefixo + 'NumeroNfse>' +
                             InfoCanc.NumeroNFSe +
                           '</' + Prefixo + 'NumeroNfse>' +
                         '</' + Prefixo + 'CancelarNfseEnvio>';
  end;
end;

procedure TACBrNFSeProviderGinfes.TratarRetornoCancelaNFSe(
  Response: TNFSeCancelaNFSeResponse);
var
  AErro: TNFSeEventoCollectionItem;
  Document: TACBrXmlDocument;
  ANode: TACBrXmlNode;
  Ret: TRetCancelamento;
begin
  Document := TACBrXmlDocument.Create;

  try
    try
      if Response.ArquivoRetorno = '' then
      begin
        AErro := Response.Erros.New;
        AErro.Codigo := Cod201;
        AErro.Descricao := Desc201;
        Exit
      end;

      Document.LoadFromXml(Response.ArquivoRetorno);

      ProcessarMensagemErros(Document.Root, Response);

      ANode := Document.Root;

      Response.Sucesso := (Response.Erros.Count = 0);

      Ret :=  Response.RetCancelamento;
      Ret.Sucesso := ObterConteudoTag(ANode.Childrens.FindAnyNs('Sucesso'), tcBool);
      Ret.DataHora := ObterConteudoTag(ANode.Childrens.FindAnyNs('DataHora'), tcDatHor);
    except
      on E:Exception do
      begin
        AErro := Response.Erros.New;
        AErro.Codigo := Cod999;
        AErro.Descricao := Desc999 + E.Message;
      end;
    end;
  finally
    FreeAndNil(Document);
  end;
end;

{ TACBrNFSeXWebserviceGinfes }

function TACBrNFSeXWebserviceGinfes.GetNameSpace: string;
begin
  if FPConfiguracoes.WebServices.AmbienteCodigo = 2 then
    Result := 'http://homologacao.ginfes.com.br'
  else
    Result := 'http://producao.ginfes.com.br';

  Result := ' xmlns:ns1="' + Result + '"';
end;

function TACBrNFSeXWebserviceGinfes.Recepcionar(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns1:RecepcionarLoteRpsV3' + NameSpace + '>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</ns1:RecepcionarLoteRpsV3>';

  Result := Executar('', Request,
                     ['return', 'EnviarLoteRpsResposta'],
                     []);
end;

function TACBrNFSeXWebserviceGinfes.ConsultarLote(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns1:ConsultarLoteRpsV3' + NameSpace + '>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</ns1:ConsultarLoteRpsV3>';

  Result := Executar('', Request,
                     ['return', 'ConsultarLoteRpsResposta'],
                     []);
end;

function TACBrNFSeXWebserviceGinfes.ConsultarSituacao(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns1:ConsultarSituacaoLoteRpsV3' + NameSpace + '>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</ns1:ConsultarSituacaoLoteRpsV3>';

  Result := Executar('', Request,
                     ['return', 'ConsultarSituacaoLoteRpsResposta'],
                     []);
end;

function TACBrNFSeXWebserviceGinfes.ConsultarNFSePorRps(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns1:ConsultarNfsePorRpsV3' + NameSpace + '>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</ns1:ConsultarNfsePorRpsV3>';

  Result := Executar('', Request,
//                     ['return', 'ConsultarNfseResposta'],
                     ['return', 'ConsultarNfseRpsResposta'], // <== esse � o correto
                     []);
end;

function TACBrNFSeXWebserviceGinfes.ConsultarNFSe(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns1:ConsultarNfseV3' + NameSpace + '>';
  Request := Request + '<arg0>' + XmlToStr(ACabecalho) + '</arg0>';
  Request := Request + '<arg1>' + XmlToStr(AMSG) + '</arg1>';
  Request := Request + '</ns1:ConsultarNfseV3>';

  Result := Executar('', Request,
                     ['return', 'ConsultarNfseResposta'],
                     []);
end;

function TACBrNFSeXWebserviceGinfes.Cancelar(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns1:CancelarNfse' + NameSpace + '>';
  Request := Request + '<arg0>' + XmlToStr(AMSG) + '</arg0>';
  Request := Request + '</ns1:CancelarNfse>';

  Result := Executar('', Request,
                     ['return', 'CancelarNfseResposta'],
                     []);
end;

function TACBrNFSeXWebserviceGinfes.TratarXmlRetornado(
  const aXML: string): string;
begin
  Result := inherited TratarXmlRetornado(aXML);

  Result := ParseText(AnsiString(Result), True, False);
  Result := RemoverDeclaracaoXML(Result);
  Result := RemoverPrefixosDesnecessarios(Result);
end;

end.
