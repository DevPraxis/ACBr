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

unit Publica.Provider;

interface

uses
  SysUtils, Classes,
  ACBrXmlBase, ACBrXmlDocument, ACBrNFSeXClass, ACBrNFSeXConversao,
  ACBrNFSeXGravarXml, ACBrNFSeXLerXml, ACBrNFSeXWebservicesResponse,
  ACBrNFSeXProviderABRASFv1, ACBrNFSeXWebserviceBase;

type
  TACBrNFSeXWebservicePublica = class(TACBrNFSeXWebserviceSoap11)
  public
    function Recepcionar(ACabecalho, AMSG: String): string; override;
    function GerarNFSe(ACabecalho, AMSG: String): string; override;
    function ConsultarLote(ACabecalho, AMSG: String): string; override;
    function ConsultarSituacao(ACabecalho, AMSG: String): string; override;
    function ConsultarNFSePorRps(ACabecalho, AMSG: String): string; override;
    function ConsultarNFSe(ACabecalho, AMSG: String): string; override;
    function Cancelar(ACabecalho, AMSG: String): string; override;

    function TratarXmlRetornado(const aXML: string): string; override;
  end;

  TACBrNFSeProviderPublica = class (TACBrNFSeProviderABRASFv1)
  protected
    procedure Configuracao; override;

    function CriarGeradorXml(const ANFSe: TNFSe): TNFSeWClass; override;
    function CriarLeitorXml(const ANFSe: TNFSe): TNFSeRClass; override;
    function CriarServiceClient(const AMetodo: TMetodo): TACBrNFSeXWebservice; override;

    procedure PrepararEmitir(Response: TNFSeEmiteResponse); override;
    procedure TratarRetornoEmitir(Response: TNFSeEmiteResponse); override;
    procedure TratarRetornoConsultaNFSeporRps(Response: TNFSeConsultaNFSeporRpsResponse); override;

    procedure PrepararConsultaNFSe(Response: TNFSeConsultaNFSeResponse); override;
    procedure PrepararCancelaNFSe(Response: TNFSeCancelaNFSeResponse); override;

  public
    function NaturezaOperacaoDescricao(const t: TnfseNaturezaOperacao): string; override;
  end;

implementation

uses
  ACBrUtil, ACBrDFeException,
  ACBrNFSeX, ACBrNFSeXConfiguracoes, ACBrNFSeXConsts,
  ACBrNFSeXNotasFiscais, Publica.GravarXml, Publica.LerXml;

{ TACBrNFSeXWebservicePublica }

function TACBrNFSeXWebservicePublica.Recepcionar(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns2:RecepcionarLoteRps>';
  Request := Request + '<XML>' + IncluirCDATA(AMSG) + '</XML>';
  Request := Request + '</ns2:RecepcionarLoteRps>';

  Result := Executar('', Request,
                     ['return', 'EnviarLoteRpsResposta'],
                     ['xmlns:ns2="http://service.nfse.integracao.ws.publica/"']);
end;

function TACBrNFSeXWebservicePublica.GerarNFSe(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns2:GerarNfse>';
  Request := Request + '<XML>' + IncluirCDATA(AMSG) + '</XML>';
  Request := Request + '</ns2:GerarNfse>';

  Result := Executar('', Request,
                     ['return', 'GerarNfseResposta'],
                     ['xmlns:ns2="http://service.nfse.integracao.ws.publica/"']);
end;

function TACBrNFSeXWebservicePublica.ConsultarLote(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns2:ConsultarLoteRps>';
  Request := Request + '<XML>' + IncluirCDATA(AMSG) + '</XML>';
  Request := Request + '</ns2:ConsultarLoteRps>';

  Result := Executar('', Request,
                     ['return', 'ConsultarLoteRpsResposta'],
                     ['xmlns:ns2="http://service.nfse.integracao.ws.publica/"']);
end;

function TACBrNFSeXWebservicePublica.ConsultarSituacao(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns2:ConsultarSituacaoLoteRps>';
  Request := Request + '<XML>' + IncluirCDATA(AMSG) + '</XML>';
  Request := Request + '</ns2:ConsultarSituacaoLoteRps>';

  Result := Executar('', Request,
                     ['return', 'ConsultarSituacaoLoteRpsResposta'],
                     ['xmlns:ns2="http://service.nfse.integracao.ws.publica/"']);
end;

function TACBrNFSeXWebservicePublica.ConsultarNFSePorRps(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns2:ConsultarNfsePorRps>';
  Request := Request + '<XML>' + IncluirCDATA(AMSG) + '</XML>';
  Request := Request + '</ns2:ConsultarNfsePorRps>';

  Result := Executar('', Request,
                     ['return', 'ConsultarNfseResposta'],
                     ['xmlns:ns2="http://service.nfse.integracao.ws.publica/"']);
end;

function TACBrNFSeXWebservicePublica.ConsultarNFSe(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns2:ConsultarNfseFaixa>';
  Request := Request + '<XML>' + IncluirCDATA(AMSG) + '</XML>';
  Request := Request + '</ns2:ConsultarNfseFaixa>';

  Result := Executar('', Request,
                     ['return', 'ConsultarNfseFaixaResposta'],
                     ['xmlns:ns2="http://service.nfse.integracao.ws.publica/"']);
end;

function TACBrNFSeXWebservicePublica.Cancelar(ACabecalho, AMSG: String): string;
var
  Request: string;
begin
  FPMsgOrig := AMSG;

  Request := '<ns2:CancelarNfse>';
  Request := Request + '<XML>' + IncluirCDATA(AMSG) + '</XML>';
  Request := Request + '</ns2:CancelarNfse>';

  Result := Executar('', Request,
                     ['return', 'CancelarNfseResposta'],
                     ['xmlns:ns2="http://service.nfse.integracao.ws.publica/"']);
end;

function TACBrNFSeXWebservicePublica.TratarXmlRetornado(
  const aXML: string): string;
begin
  Result := inherited TratarXmlRetornado(aXML);

  Result := ParseText(AnsiString(Result), True, False);
  Result := RemoverDeclaracaoXML(Result);
  Result := RemoverIdentacao(Result);
end;

{ TACBrNFSeProviderPublica }

procedure TACBrNFSeProviderPublica.Configuracao;
begin
  inherited Configuracao;

  with ConfigGeral do
  begin
    Identificador := 'id';
    UseCertificateHTTP := False;
    CancPreencherMotivo := True;
  end;

  with ConfigAssinar do
  begin
    LoteRps := True;
    ConsultarSituacao := True;
    ConsultarLote := True;
    ConsultarNFSeRps := True;
    ConsultarNFSe := True;
    CancelarNFSe := True;
    LoteGerarNFSe := True;
  end;

  SetXmlNameSpace('http://www.publica.inf.br');

  with ConfigMsgDados do
  begin
    ConsultarNFSe.DocElemento := 'ConsultarNfseFaixaEnvio';
//  ConsultarNFSe.InfElemento := 'Prestador';

    with GerarNFSe do
    begin
      InfElemento := 'InfRps';
      DocElemento := 'Rps';
    end;
  end;

  ConfigWebServices.AtribVerLote := 'versao';
end;

function TACBrNFSeProviderPublica.CriarGeradorXml(const ANFSe: TNFSe): TNFSeWClass;
begin
  Result := TNFSeW_Publica.Create(Self);
  Result.NFSe := ANFSe;
end;

function TACBrNFSeProviderPublica.CriarLeitorXml(const ANFSe: TNFSe): TNFSeRClass;
begin
  Result := TNFSeR_Publica.Create(Self);
  Result.NFSe := ANFSe;
end;

function TACBrNFSeProviderPublica.CriarServiceClient(const AMetodo: TMetodo): TACBrNFSeXWebservice;
var
  URL: string;
begin
  URL := GetWebServiceURL(AMetodo);

  if URL <> '' then
    Result := TACBrNFSeXWebservicePublica.Create(FAOwner, AMetodo, URL)
  else
  begin
    if ConfigGeral.Ambiente = taProducao then
      raise EACBrDFeException.Create(ERR_SEM_URL_PRO)
    else
      raise EACBrDFeException.Create(ERR_SEM_URL_HOM);
  end;
end;

function TACBrNFSeProviderPublica.NaturezaOperacaoDescricao(
  const t: TnfseNaturezaOperacao): string;
begin
  case t of
    no511 : Result := '511 - ISS devido para outro munic�pio (Simples Nacional)';
  else
    Result := inherited NaturezaOperacaoDescricao(t);
  end;
end;

procedure TACBrNFSeProviderPublica.PrepararEmitir(Response: TNFSeEmiteResponse);
var
  AErro: TNFSeEventoCollectionItem;
  Nota: TNotaFiscal;
  IdAttr, NameSpace, xRps, ListaRps, Prefixo: string;
  I: Integer;
begin
  if Response.ModoEnvio <> meUnitario then
  begin
    inherited PrepararEmitir(Response);
    Exit;
  end;

  if TACBrNFSeX(FAOwner).NotasFiscais.Count <= 0 then
  begin
    AErro := Response.Erros.New;
    AErro.Codigo := Cod002;
    AErro.Descricao := Desc002;
  end;

  if TACBrNFSeX(FAOwner).NotasFiscais.Count > Response.MaxRps then
  begin
    AErro := Response.Erros.New;
    AErro.Codigo := Cod003;
    AErro.Descricao := 'Conjunto de RPS transmitidos (m�ximo de ' +
                       IntToStr(Response.MaxRps) + ' RPS)' +
                       ' excedido. Quantidade atual: ' +
                       IntToStr(TACBrNFSeX(FAOwner).NotasFiscais.Count);
  end;

  if Response.Erros.Count > 0 then Exit;

  if ConfigAssinar.IncluirURI then
    IdAttr := ConfigGeral.Identificador
  else
    IdAttr := 'ID';

  ListaRps := '';

  for I := 0 to TACBrNFSeX(FAOwner).NotasFiscais.Count -1 do
  begin
    Nota := TACBrNFSeX(FAOwner).NotasFiscais.Items[I];

    Nota.GerarXML;

    Nota.XmlRps := ConverteXMLtoUTF8(Nota.XmlRps);
    Nota.XmlRps := ChangeLineBreak(Nota.XmlRps, '');

    if ConfigAssinar.RpsGerarNFSe then
    begin
      Nota.XmlRps := FAOwner.SSL.Assinar(Nota.XmlRps,
                                         ConfigMsgDados.XmlRps.DocElemento,
                                         ConfigMsgDados.XmlRps.InfElemento, '', '', '', IdAttr);
    end;

    SalvarXmlRps(Nota);

    xRps := RemoverDeclaracaoXML(Nota.XmlRps);
    xRps := PrepararRpsParaLote(xRps);

    ListaRps := ListaRps + xRps;
  end;

  ListaRps := ChangeLineBreak(ListaRps, '');

  if EstaVazio(ConfigMsgDados.GerarNFSe.xmlns) then
    NameSpace := ''
  else
    NameSpace := ' xmlns="' + ConfigMsgDados.GerarNFSe.xmlns + '"';

  Response.ArquivoEnvio := '<' + Prefixo + 'GerarNfseEnvio' + NameSpace + '>' +
                          ListaRps +
                       '</' + Prefixo + 'GerarNfseEnvio' + '>';
end;

procedure TACBrNFSeProviderPublica.TratarRetornoEmitir(
  Response: TNFSeEmiteResponse);
var
  Document: TACBrXmlDocument;
  AErro: TNFSeEventoCollectionItem;
  ANode, AuxNode: TACBrXmlNode;
  ANodeArray: TACBrXmlNodeArray;
  ANota: TNotaFiscal;
  NumRps: String;
  I: Integer;
begin
  if Response.ModoEnvio <> meUnitario then
  begin
    inherited TratarRetornoEmitir(Response);
    Exit;
  end;

  Document := TACBrXmlDocument.Create;
  try
    try
      Document.LoadFromXml(Response.ArquivoRetorno);

      ProcessarMensagemErros(Document.Root, Response);
      ProcessarMensagemErros(Document.Root, Response, 'ListaMensagemRetornoLote');

      ANode := Document.Root;

      Response.Data := ObterConteudoTag(ANode.Childrens.FindAnyNs('DataRecebimento'), tcDatHor);
      Response.Protocolo := ObterConteudoTag(ANode.Childrens.FindAnyNs('Protocolo'), tcStr);

      ANode := Document.Root.Childrens.FindAnyNs('ListaNfse');
      if not Assigned(ANode) then
      begin
        AErro := Response.Erros.New;
        AErro.Codigo := Cod202;
        AErro.Descricao := Desc202;
        Exit;
      end;

      ANodeArray := ANode.Childrens.FindAllAnyNs('CompNfse');
      if not Assigned(ANode) then
      begin
        AErro := Response.Erros.New;
        AErro.Codigo := Cod203;
        AErro.Descricao := Desc203;
        Exit;
      end;

      for I := Low(ANodeArray) to High(ANodeArray) do
      begin
        ANode := ANodeArray[I];
        AuxNode := ANode.Childrens.FindAnyNs('Nfse');
        AuxNode := AuxNode.Childrens.FindAnyNs('InfNfse');
        AuxNode := AuxNode.Childrens.FindAnyNs('IdentificacaoRps');
        AuxNode := AuxNode.Childrens.FindAnyNs('Numero');
        NumRps := AuxNode.AsString;

        ANota := TACBrNFSeX(FAOwner).NotasFiscais.FindByRps(NumRps);

        if Assigned(ANota) then
          ANota.XmlNfse := ANode.AsString
        else
          TACBrNFSeX(FAOwner).NotasFiscais.LoadFromString(ANode.AsString);
      end;

      Response.Sucesso := (Response.Erros.Count > 0);
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

procedure TACBrNFSeProviderPublica.TratarRetornoConsultaNFSeporRps(Response: TNFSeConsultaNFSeporRpsResponse);
var
  Document: TACBrXmlDocument;
  ANode, AuxNode, AuxNodeCanc: TACBrXmlNode;
  AErro: TNFSeEventoCollectionItem;
  ANota: TNotaFiscal;
  NumNFSe, InfNfseID: String;
  sLink: Variant;
begin
  Document := TACBrXmlDocument.Create;

  try
    try
      TACBrNFSeX(FAOwner).NotasFiscais.Clear;

      if Response.ArquivoRetorno = '' then
      begin
        AErro := Response.Erros.New;
        AErro.Codigo := Cod201;
        AErro.Descricao := Desc201;
        Exit
      end;

      Document.LoadFromXml(Response.ArquivoRetorno);

      ProcessarMensagemErros(Document.Root, Response);

      Response.Sucesso := (Response.Erros.Count = 0);
      
      ANode := Document.Root.Childrens.FindAnyNs('ListaNfse');
      ANode := ANode.Childrens.FindAnyNs('CompNfse');
      if ANode = nil then
        ANode := Document.Root.Childrens.FindAnyNs('ComplNfse');

      if not Assigned(ANode) then
      begin
        AErro := Response.Erros.New;
        AErro.Codigo := Cod203;
        AErro.Descricao := Desc203;
        Exit;
      end;

      AuxNode := ANode.Childrens.FindAnyNs('tcCompNfse');

      if AuxNode = nil then
      begin
        AuxNodeCanc := ANode.Childrens.FindAnyNs('NfseCancelamento');

        if AuxNodeCanc <> nil then
        begin
          AuxNodeCanc := AuxNodeCanc.Childrens.FindAnyNs('Confirmacao');

          if AuxNodeCanc <> nil then
          begin
            Response.Data := ObterConteudoTag(AuxNodeCanc.Childrens.FindAnyNs('DataHora'), tcDatHor);
            Response.DescSituacao := 'Nota Cancelada';
          end;
        end;

        AuxNode := ANode.Childrens.FindAnyNs('Nfse')
      end
      else
      begin
        AuxNodeCanc := AuxNode.Childrens.FindAnyNs('NfseCancelamento');

        if AuxNodeCanc <> nil then
        begin
          AuxNodeCanc := AuxNodeCanc.Childrens.FindAnyNs('Confirmacao');

          Response.Data := ObterConteudoTag(AuxNodeCanc.Childrens.FindAnyNs('DataHora'), tcDatHor);
          Response.DescSituacao := 'Nota Cancelada';
        end;

        AuxNode := AuxNode.Childrens.FindAnyNs('Nfse');
      end;

      if AuxNode <> nil then
      begin
        AuxNode := AuxNode.Childrens.FindAnyNs('InfNfse');
        InfNfseID := ObterConteudoTag(AuxNode.Attributes.Items['id']);
        NumNFSe := ObterConteudoTag(AuxNode.Childrens.FindAnyNs('Numero'), tcStr);
        sLink := ObterConteudoTag(AuxNode.Childrens.FindAnyNs('LinkVisualizacaoNfse'), tcStr);

        with Response do
        begin
          NumeroNota := NumNFSe;
          idNota := InfNfseID;
          Link := sLink;
          CodVerificacao := ObterConteudoTag(AuxNode.Childrens.FindAnyNs('CodigoVerificacao'), tcStr);
          Data := ObterConteudoTag(AuxNode.Childrens.FindAnyNs('DataEmissao'), tcDatHor);
        end;

        ANota := TACBrNFSeX(FAOwner).NotasFiscais.FindByNFSe(NumNFSe);

        if Assigned(ANota) then
          ANota.XmlNfse := ANode.OuterXml
        else
        begin
          TACBrNFSeX(FAOwner).NotasFiscais.LoadFromString(ANode.OuterXml, False);
          ANota := TACBrNFSeX(FAOwner).NotasFiscais.Items[TACBrNFSeX(FAOwner).NotasFiscais.Count-1];
        end;

        SalvarXmlNfse(ANota);
      end;
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

procedure TACBrNFSeProviderPublica.PrepararConsultaNFSe(
  Response: TNFSeConsultaNFSeResponse);
var
  Emitente: TEmitenteConfNFSe;
  XmlConsulta, NameSpace, NumFinal, IdAttr: string;
  NumNFSeI, NumNFSeF: Integer;
begin
  NumNFSeI := StrToIntDef(Response.InfConsultaNFSe.NumeroIniNFSe, 0);
  Response.InfConsultaNFSe.NumeroIniNFSe := FormatFloat('000000000000000', NumNFSeI);

  NumNFSeF := StrToIntDef(Response.InfConsultaNFSe.NumeroFinNFSe, 0);
  Response.InfConsultaNFSe.NumeroFinNFSe := FormatFloat('000000000000000', NumNFSeF);

  Emitente := TACBrNFSeX(FAOwner).Configuracoes.Geral.Emitente;

  Response.Metodo := tmConsultarNFSe;

  if (NumNFSeF <> 0) and (NumNFSeF <> NumNFSeI) then
    NumFinal := '<NumeroNfseFinal>' +
                  OnlyNumber(Response.InfConsultaNFSe.NumeroFinNFSe) +
                '</NumeroNfseFinal>'
  else
    NumFinal := '';

  XmlConsulta := '<Faixa>' +
                   '<NumeroNfseInicial>' +
                      OnlyNumber(Response.InfConsultaNFSe.NumeroIniNFSe) +
                   '</NumeroNfseInicial>' +
                   NumFinal +
                 '</Faixa>';

  if ConfigGeral.Identificador <> '' then
    IdAttr := ' ' + ConfigGeral.Identificador + '="Cons_' +
              Response.InfConsultaNFSe.NumeroIniNFSe + '"'
  else
    IdAttr := '';

  if EstaVazio(ConfigMsgDados.ConsultarNFSe.xmlns) then
    NameSpace := ''
  else
    NameSpace := ' xmlns="' + ConfigMsgDados.ConsultarNFSe.xmlns + '"';

  Response.ArquivoEnvio := '<ConsultarNfseFaixaEnvio' + NameSpace + '>' +
                         '<Prestador' + IdAttr + '>' +
//                           '<CpfCnpj>' + GetCpfCnpj(Emitente.CNPJ) + '</CpfCnpj>' +
                           '<Cnpj>' + Emitente.CNPJ + '</Cnpj>' +
                           GetInscMunic(Emitente.InscMun) +
                         '</Prestador>' +
                         XmlConsulta +
                       '</ConsultarNfseFaixaEnvio>';
end;

procedure TACBrNFSeProviderPublica.PrepararCancelaNFSe(
  Response: TNFSeCancelaNFSeResponse);
var
  NumNFSe: Int64;
begin
  NumNFSe := StrToInt64Def(Response.InfCancelamento.NumeroNFSe, 0);
  Response.InfCancelamento.NumeroNFSe := FormatFloat('000000000000000', NumNFSe);

  inherited PrepararCancelaNFSe(Response);
end;

end.
