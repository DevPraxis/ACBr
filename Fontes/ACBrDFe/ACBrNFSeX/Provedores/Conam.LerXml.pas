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

unit Conam.LerXml;

interface

uses
  SysUtils, Classes, StrUtils,
  ACBrUtil,
  ACBrXmlBase, ACBrXmlDocument,
  ACBrNFSeXParametros, ACBrNFSeXConversao, ACBrNFSeXLerXml;

type
  { TNFSeR_Conam }

  TNFSeR_Conam = class(TNFSeRClass)
  protected

    procedure LerReg30(const ANode: TACBrXmlNode);
  public
    function LerXml: Boolean; override;
    function LerXmlRps(const ANode: TACBrXmlNode): Boolean;
    function LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
  end;

implementation

//==============================================================================
// Essa unit tem por finalidade exclusiva ler o XML do provedor:
//     Conam
//==============================================================================

{ TNFSeR_Conam }

procedure TNFSeR_Conam.LerReg30(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
  ANodes: TACBrXmlNodeArray;
  i: Integer;
  aValor: string;
begin
  AuxNode := ANode.Childrens.FindAnyNs('Reg30');

  if AuxNode <> nil then
  begin
    ANodes := AuxNode.Childrens.FindAllAnyNs('Reg30Item');

    for i := 0 to Length(ANodes) - 1 do
    begin
      aValor := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoSigla'), tcStr);

      with NFSe.Servico.Valores do
      begin
        if aValor = 'IR' then
        begin
          AliquotaIr := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoAliquota'), tcDe2);
          ValorIr    := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoValor'), tcDe2);
        end;

        if aValor = 'PIS' then
        begin
          AliquotaPis := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoAliquota'), tcDe2);
          ValorPis    := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoValor'), tcDe2);
        end;

        if aValor = 'COFINS' then
        begin
          AliquotaCofins := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoAliquota'), tcDe2);
          ValorCofins    := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoValor'), tcDe2);
        end;

        if aValor = 'CSLL' then
        begin
          AliquotaCsll := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoAliquota'), tcDe2);
          ValorCsll    := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoValor'), tcDe2);
        end;

        if aValor = 'INSS' then
        begin
          AliquotaInss := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoAliquota'), tcDe2);
          ValorInss    := ObterConteudo(ANodes[i].Childrens.FindAnyNs('TributoValor'), tcDe2);
        end;
      end;
    end;
  end;
end;

function TNFSeR_Conam.LerXml: Boolean;
var
  XmlNode: TACBrXmlNode;
  xRetorno: string;
begin
  if EstaVazio(Arquivo) then
    raise Exception.Create('Arquivo xml n�o carregado.');

  xRetorno := TiraAcentos(Arquivo);

  if FDocument = nil then
    FDocument := TACBrXmlDocument.Create();

  Document.Clear();
  Document.LoadFromXml(xRetorno);

  if (Pos('Reg20Item', xRetorno) > 0) then
    tpXML := txmlNFSe
  else
    tpXML := txmlRPS;

  XmlNode := Document.Root;

  if XmlNode = nil then
    raise Exception.Create('Arquivo xml vazio.');

  if tpXML = txmlNFSe then
    Result := LerXmlNfse(XmlNode)
  else
    Result := LerXmlRps(XmlNode);

  FreeAndNil(FDocument);
end;

function TNFSeR_Conam.LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
var
  AuxNode: TACBrXmlNode;
  aValor: string;
  ValorIssRet: Double;
begin
  Result := True;
  NFSe.SituacaoNfse := snNormal;

  if not Assigned(ANode) or (ANode = nil) then Exit;

  AuxNode := ANode.Childrens.FindAnyNs('Reg20Item');

  if AuxNode = nil then
    AuxNode := ANode.Childrens.FindAnyNs('CompNfse');

  if AuxNode = nil then Exit;

  with NFSe do
  begin
    Numero         := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumNf'), tcStr);
//    Protocolo      := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumNf'), tcStr);
    SeriePrestacao := ObterConteudo(AuxNode.Childrens.FindAnyNs('SerNf'), tcStr);

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('SitNf'), tcStr);

    if aValor = '2' then
      NFSe.SituacaoNfse := snCancelado;

    MotivoCancelamento := ObterConteudo(AuxNode.Childrens.FindAnyNs('MotivoCncNf'), tcStr);

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('DtEmi'), tcStr);

    if aValor = '' then
      aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('DtEmiNf'), tcStr);

    if aValor <> '' then
    begin
      DataEmissao := StrToDate(aValor);
      Competencia := DataEmissao;
    end;

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('DtEmiRps'), tcStr);

    DataEmissaoRps := StrToDate(aValor);

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('DtHrGerNf'), tcStr);

    dhRecebimento := StrToDateTimeDef(aValor, Now);

    with IdentificacaoRps do
    begin
      Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumRps'), tcStr);
      Serie  := ObterConteudo(AuxNode.Childrens.FindAnyNs('SerRps'), tcStr);
    end;

    InfID.ID := OnlyNumber(NFSe.IdentificacaoRps.Numero) + NFSe.IdentificacaoRps.Serie;

    CodigoVerificacao := ObterConteudo(AuxNode.Childrens.FindAnyNs('CodVernf'), tcStr);

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('TipoTribPre'), tcStr);

    if aValor = 'SN' then
      OptanteSimplesNacional := snSim
    else
      OptanteSimplesNacional := snNao;

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('DtAdeSN'), tcStr);

    if (aValor <> '') and (aValor <> '/  /') then
      DataOptanteSimplesNacional := StrToDate(aValor);

    with Prestador do
    begin
      RazaoSocial := ObterConteudo(AuxNode.Childrens.FindAnyNs('RazSocPre'), tcStr);

      with IdentificacaoPrestador do
      begin
        CpfCnpj := ObterConteudo(AuxNode.Childrens.FindAnyNs('CpfCnpjPre'), tcStr);
        InscricaoEstadual := ObterConteudo(AuxNode.Childrens.FindAnyNs('IEPr'), tcStr);
        InscricaoMunicipal := ObterConteudo(AuxNode.Childrens.FindAnyNs('CodCadBic'), tcStr);
      end;

      with Endereco do
      begin
        Endereco    := ObterConteudo(AuxNode.Childrens.FindAnyNs('LogPre'), tcStr);
        Numero      := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumEndPre'), tcStr);
        Bairro      := ObterConteudo(AuxNode.Childrens.FindAnyNs('BairroPre'), tcStr);
        Complemento := ObterConteudo(AuxNode.Childrens.FindAnyNs('ComplEndPre'), tcStr);
        xMunicipio  := ObterConteudo(AuxNode.Childrens.FindAnyNs('MunPre'), tcStr);
        CEP         := ObterConteudo(AuxNode.Childrens.FindAnyNs('CepPre'), tcStr);
        UF          := ObterConteudo(AuxNode.Childrens.FindAnyNs('SiglaUFPre'), tcStr);
      end;
    end;

    with Servico do
    begin
      Discriminacao    := ObterConteudo(AuxNode.Childrens.FindAnyNs('DiscrSrv'), tcStr);
      ItemListaServico := ObterConteudo(AuxNode.Childrens.FindAnyNs('CodSrv'), tcStr);

      if FpAOwner.ConfigGeral.TabServicosExt then
        xItemListaServico := ObterDescricaoServico(OnlyNumber(ItemListaServico))
      else
        xItemListaServico := CodItemServToDesc(OnlyNumber(ItemListaServico));
    end;

    ValorIssRet := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlIssRet'), tcDe2);

    with ValoresNfse do
    begin
      ValorLiquidoNfse := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlNFS'), tcDe2);

      if ValorIssRet > 0 then
        ValorLiquidoNfse := ValorLiquidoNfse - ValorIssRet;

      BaseCalculo := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlBasCalc'), tcDe2);
      Aliquota    := ObterConteudo(AuxNode.Childrens.FindAnyNs('AlqIss'), tcDe2);
      ValorIss    := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlIss'), tcDe2);
    end;

    with Servico.Valores do
    begin
      ValorServicos  := ValoresNfse.ValorLiquidoNfse;
      BaseCalculo    := ValoresNfse.BaseCalculo;
      Aliquota       := ValoresNfse.Aliquota;
      ValorIssRetido := ValorIssRet;

      if ValorIssRet > 0 then
      begin
        IssRetido := stRetencao;
        ValorIss  := 0;
      end
      else
      begin
        IssRetido := stNormal;
        ValorIss  := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlIss'), tcDe2);
      end;

      ValorDeducoes := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlDed'), tcDe2);

      JustificativaDeducao := ObterConteudo(AuxNode.Childrens.FindAnyNs('DiscrDed'), tcStr);
    end;

    with Tomador do
    begin
      RazaoSocial := ObterConteudo(AuxNode.Childrens.FindAnyNs('RazSocTom'), tcStr);

      with IdentificacaoTomador do
        CpfCnpj := ObterConteudo(AuxNode.Childrens.FindAnyNs('CpfCnpjTom'), tcStr);

      with  Endereco do
      begin
        Endereco    := ObterConteudo(AuxNode.Childrens.FindAnyNs('LogTom'), tcStr);
        Numero      := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumEndTom'), tcStr);
        Complemento := ObterConteudo(AuxNode.Childrens.FindAnyNs('ComplEndTom'), tcStr);
        Bairro      := ObterConteudo(AuxNode.Childrens.FindAnyNs('BairroTom'), tcStr);
        xMunicipio  := ObterConteudo(AuxNode.Childrens.FindAnyNs('MunTom'), tcStr);
        UF          := ObterConteudo(AuxNode.Childrens.FindAnyNs('SiglaUFTom'), tcStr);
        CEP         := ObterConteudo(AuxNode.Childrens.FindAnyNs('CepTom'), tcStr);
      end;
    end;

    //valores dos tributos
    LerReg30(AuxNode);
  end;
end;

function TNFSeR_Conam.LerXmlRps(const ANode: TACBrXmlNode): Boolean;
var
  AuxNode: TACBrXmlNode;
  aValor: string;
  i: Integer;
begin
  Result := True;

  if not Assigned(ANode) or (ANode = nil) then Exit;

  AuxNode := ANode.Childrens.FindAnyNs('Reg20Item');

  if AuxNode = nil then Exit;

  with NFSe do
  begin
    with IdentificacaoRps do
    begin
      aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('TipoNFS'), tcStr);

      if aValor = 'RPS' then
        Tipo := trRPS
      else
        Tipo := trNone;

      Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumRps'), tcStr);

      Serie := ObterConteudo(AuxNode.Childrens.FindAnyNs('SerRps'), tcStr);
    end;

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('DtEmi'), tcStr);

    if aValor <> '' then
    begin
      DataEmissaoRps := StrToDate(aValor);
      Competencia := DataEmissao;
    end;

    with Servico do
    begin
      ItemListaServico := ObterConteudo(AuxNode.Childrens.FindAnyNs('CodSrv'), tcStr);

      Discriminacao := ObterConteudo(AuxNode.Childrens.FindAnyNs('DiscrSrv'), tcStr);

      with Valores do
      begin
        aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('RetFonte'), tcStr);

        if aValor <> 'NAO' then
          IssRetido := stNormal
        else
          IssRetido := stRetencao;

        ValorServicos := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlNFS'), tcDe2);

        ValorDeducoes := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlDed'), tcDe2);

        JustificativaDeducao := ObterConteudo(AuxNode.Childrens.FindAnyNs('DiscrDed'), tcStr);

        BaseCalculo := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlBasCalc'), tcDe2);

        Aliquota := ObterConteudo(AuxNode.Childrens.FindAnyNs('AlqIss'), tcDe2);

        ValorIss := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlIss'), tcDe2);

        ValorIssRetido := ObterConteudo(AuxNode.Childrens.FindAnyNs('VlIssRet'), tcDe2);
      end;
    end;

    with Tomador do
    begin
      RazaoSocial := ObterConteudo(AuxNode.Childrens.FindAnyNs('RazSocTom'), tcStr);

      with IdentificacaoTomador do
      begin
        CpfCnpj := ObterConteudo(AuxNode.Childrens.FindAnyNs('CpfCnpTom'), tcStr);

        InscricaoMunicipal := ObterConteudo(AuxNode.Childrens.FindAnyNs('InscricaoMunicipal'), tcStr);
      end;

      with  Endereco do
      begin
        TipoLogradouro := ObterConteudo(AuxNode.Childrens.FindAnyNs('TipoLogtom'), tcStr);

        Endereco    := ObterConteudo(AuxNode.Childrens.FindAnyNs('LogTom'), tcStr);
        Numero      := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumEndTom'), tcStr);
        Complemento := ObterConteudo(AuxNode.Childrens.FindAnyNs('ComplEndTom'), tcStr);
        Bairro      := ObterConteudo(AuxNode.Childrens.FindAnyNs('BairroTom'), tcStr);
        xMunicipio  := ObterConteudo(AuxNode.Childrens.FindAnyNs('MunTom'), tcStr);
        UF          := ObterConteudo(AuxNode.Childrens.FindAnyNs('SiglaUFTom'), tcStr);
        CEP         := ObterConteudo(AuxNode.Childrens.FindAnyNs('CepTom'), tcStr);
      end;

      with Contato do
      begin
        Telefone := ObterConteudo(AuxNode.Childrens.FindAnyNs('Telefone'), tcStr);
        Email := ObterConteudo(AuxNode.Childrens.FindAnyNs('Email1'), tcStr);
      end;
    end;

    with Prestador do
    begin
      with Endereco do
      begin
        Endereco := ObterConteudo(AuxNode.Childrens.FindAnyNs('LogLocPre'), tcStr);

        if Endereco = Tomador.Endereco.Endereco then
          LogradouLocalPrestacaoServico := llpTomador
        else
          LogradouLocalPrestacaoServico := llpPrestador;

        TipoLogradouro := ObterConteudo(AuxNode.Childrens.FindAnyNs('TipoLogLocPre'), tcStr);
        Numero      := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumEndLocPre'), tcStr);
        Complemento := ObterConteudo(AuxNode.Childrens.FindAnyNs('ComplEndLocPre'), tcStr);
        Bairro      := ObterConteudo(AuxNode.Childrens.FindAnyNs('BairroLocPre'), tcStr);
        xMunicipio  := ObterConteudo(AuxNode.Childrens.FindAnyNs('MunLocPre'), tcStr);
        UF          := ObterConteudo(AuxNode.Childrens.FindAnyNs('SiglaUFLocpre'), tcStr);
        CEP         := ObterConteudo(AuxNode.Childrens.FindAnyNs('CepLocPre'), tcStr);
      end;
    end;

    i:= 0;

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('Email2'), tcStr);

    if aValor <> '' then
    begin
      email.New;
      email[i].emailCC := aValor;
      Inc(i);
    end;

    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('Email3'), tcStr);

    if aValor <> '' then
    begin
      email.New;
      email[i].emailCC := aValor;
//      Inc(i);
    end;

    //valores dos tributos
    LerReg30(AuxNode);
  end;
end;

end.
