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

unit Simple.LerXml;

interface

uses
  SysUtils, Classes, StrUtils,
  ACBrUtil,
  ACBrXmlBase, ACBrXmlDocument,
  ACBrNFSeXConversao, ACBrNFSeXLerXml;

type
  { TNFSeR_Simple }

  TNFSeR_Simple = class(TNFSeRClass)
  protected
    procedure LerTomador(const ANode: TACBrXmlNode);
    procedure LerTItens(const ANode: TACBrXmlNode);
    procedure LerItens(const ANode: TACBrXmlNode);

    procedure SetxItemListaServico(Codigo: string);
  public
    function LerXml: Boolean; override;
    function LerXmlRps(const ANode: TACBrXmlNode): Boolean;
    function LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
  end;

implementation

//==============================================================================
// Essa unit tem por finalidade exclusiva ler o XML do provedor:
//     Simple
//==============================================================================

{ TNFSeR_Simple }

procedure TNFSeR_Simple.LerItens(const ANode: TACBrXmlNode);
var
  ANodes: TACBrXmlNodeArray;
  i: Integer;
begin
  ANodes := ANode.Childrens.FindAllAnyNs('Itens');

  for i := 0 to Length(ANodes) - 1 do
  begin
    NFSe.Servico.ItemServico.New;

    with NFSe.Servico.ItemServico[i] do
    begin
      ItemListaServico := ObterConteudo(ANodes[i].Childrens.FindAnyNs('iServico'), tcStr);
      ValorUnitario := ObterConteudo(ANodes[i].Childrens.FindAnyNs('nValorServico'), tcDe2);
      Descricao := ObterConteudo(ANodes[i].Childrens.FindAnyNs('sDescricao'), tcStr);
      Aliquota := ObterConteudo(ANodes[i].Childrens.FindAnyNs('nAliquota'), tcDe2);
      ValorISS := ObterConteudo(ANodes[i].Childrens.FindAnyNs('nValorIss'), tcDe2);
      ValorTotal := ObterConteudo(ANodes[i].Childrens.FindAnyNs('nValorTotal'), tcDe2);
    end;

    NFSe.Servico.CodigoCnae := ObterConteudo(ANodes[i].Childrens.FindAnyNs('sCNAE'), tcStr);
  end;
end;

procedure TNFSeR_Simple.LerTItens(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('tItens');

  if AuxNode = nil then Exit;

  LerItens(AuxNode);
end;

procedure TNFSeR_Simple.LerTomador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('tTomador');

  if AuxNode <> nil then
  begin
    with NFSe.Tomador do
    begin
      IdentificacaoTomador.CpfCnpj := ObterConteudo(AuxNode.Childrens.FindAnyNs('sCPFTomador'), tcStr);
      RazaoSocial := ObterConteudo(AuxNode.Childrens.FindAnyNs('sNomeTomador'), tcStr);

      with Endereco do
      begin
        xMunicipio := ObterConteudo(AuxNode.Childrens.FindAnyNs('sCidadeTomador'), tcStr);
        Endereco := ObterConteudo(AuxNode.Childrens.FindAnyNs('sEnderecoTomador'), tcStr);
        UF := ObterConteudo(AuxNode.Childrens.FindAnyNs('sUfTomador'), tcStr);
      end;

      Contato.Email := ObterConteudo(AuxNode.Childrens.FindAnyNs('sEmailTomador'), tcStr);
    end;
  end;
end;

function TNFSeR_Simple.LerXml: Boolean;
var
  XmlNode: TACBrXmlNode;
  xRetorno: string;
begin
//italo  xRetorno := TratarXmlRetorno(Arquivo);
  xRetorno := Arquivo;

  if EstaVazio(xRetorno) then
    raise Exception.Create('Arquivo xml n�o carregado.');

  if FDocument = nil then
    FDocument := TACBrXmlDocument.Create();

  Document.Clear();
  Document.LoadFromXml(xRetorno);

  if (Pos('Nota', xRetorno) > 0) then
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

function TNFSeR_Simple.LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
var
  AuxNode: TACBrXmlNode;
  aValor: string;
  Ok :Boolean;
  i: Integer;
begin
  Result := True;

  if not Assigned(ANode) or (ANode = nil) then Exit;

  AuxNode := ANode;

  with NFSe do
  begin
    Prestador.IdentificacaoPrestador.CpfCnpj := ObterConteudo(AuxNode.Childrens.FindAnyNs('sContribuinte'), tcStr);
    IdentificacaoRps.Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('iRecibo'), tcStr);
    dhRecebimento := ObterConteudo(AuxNode.Childrens.FindAnyNs('dDataRecibo'), tcDatHor);
    Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('iNota'), tcStr);
    SeriePrestacao := ObterConteudo(AuxNode.Childrens.FindAnyNs('sSerie'), tcStr);
    DataEmissao := ObterConteudo(AuxNode.Childrens.FindAnyNs('dDataEmissao'), tcDatHor);
    CodigoVerificacao := ObterConteudo(AuxNode.Childrens.FindAnyNs('sCodigoVerificador'), tcStr);
    SituacaoNfse := StrToStatusNFSe(Ok, ObterConteudo(AuxNode.Childrens.FindAnyNs('sSituacao'), tcStr));

    Servico.Valores.ValorServicos := ObterConteudo(AuxNode.Childrens.FindAnyNs('nValorTotal'), tcDe2);
    Servico.Valores.ValorIss := ObterConteudo(AuxNode.Childrens.FindAnyNs('nValorIss'), tcDe2);
    Servico.Valores.BaseCalculo := ObterConteudo(AuxNode.Childrens.FindAnyNs('nValorBaseCalculo'), tcDe2);
  end;

  LerTomador(AuxNode);

  with NFSe.Servico.Valores do
  begin
    AliquotaIr := ObterConteudo(AuxNode.Childrens.FindAnyNs('nIrAliquota'), tcDe2);
    ValorIr := ObterConteudo(AuxNode.Childrens.FindAnyNs('nIrValor'), tcDe2);
    ValorPis := ObterConteudo(AuxNode.Childrens.FindAnyNs('nPisPasep'), tcDe2);
    ValorCofins := ObterConteudo(AuxNode.Childrens.FindAnyNs('nCofins'), tcDe2);
    ValorInss := ObterConteudo(AuxNode.Childrens.FindAnyNs('nInss'), tcDe2);
    ValorCsll := ObterConteudo(AuxNode.Childrens.FindAnyNs('nCsll'), tcDe2);
  end;

  LerTItens(AuxNode);

  aValor := '';

  for i := 1 to 10 do
    aValor := aValor +
      ObterConteudo(AuxNode.Childrens.FindAnyNs('sObservacao' + IntToStr(i)), tcStr);

  NFSe.OutrasInformacoes := aValor;
end;

function TNFSeR_Simple.LerXmlRps(const ANode: TACBrXmlNode): Boolean;
//var
//  aValor: string;
begin
  Result := True;
  (*
  with NFSe do
  begin
    Assinatura := ObterConteudo(ANode.Childrens.FindAnyNs('Assinatura'), tcStr);
    DataEmissao := ObterConteudo(ANode.Childrens.FindAnyNs('DataEmissao'), tcDat);

    aValor := ObterConteudo(ANode.Childrens.FindAnyNs('StatusRPS'), tcStr);

    if aValor = 'N' then
      Status := srNormal
    else
      Status := srCancelado;

    TipoTributacaoRPS := ObterConteudo(ANode.Childrens.FindAnyNs('TributacaoRPS'), tcStr);

    LerChaveRPS(ANode);

    with Servico do
    begin
      ItemListaServico := ObterConteudo(ANode.Childrens.FindAnyNs('CodigoServico'), tcStr);

      Discriminacao := ObterConteudo(ANode.Childrens.FindAnyNs('Discriminacao'), tcStr);

      ValorCargaTributaria := ObterConteudo(ANode.Childrens.FindAnyNs('ValorCargaTributaria'), tcDe2);

      PercentualCargaTributaria := ObterConteudo(ANode.Childrens.FindAnyNs('PercentualCargaTributaria'), tcDe4);

      FonteCargaTributaria := ObterConteudo(ANode.Childrens.FindAnyNs('FonteCargaTributaria'), tcStr);

      MunicipioIncidencia := ObterConteudo(ANode.Childrens.FindAnyNs('MunicipioPrestacao'), tcInt);

      with Valores do
      begin
        ValorServicos := ObterConteudo(ANode.Childrens.FindAnyNs('ValorServicos'), tcDe2);

        ValorDeducoes := ObterConteudo(ANode.Childrens.FindAnyNs('ValorDeducoes'), tcDe2);

        ValorPis := ObterConteudo(ANode.Childrens.FindAnyNs('ValorPIS'), tcDe2);

        ValorCofins := ObterConteudo(ANode.Childrens.FindAnyNs('ValorCOFINS'), tcDe2);

        ValorInss := ObterConteudo(ANode.Childrens.FindAnyNs('ValorINSS'), tcDe2);

        ValorIr := ObterConteudo(ANode.Childrens.FindAnyNs('ValorIR'), tcDe2);

        ValorCsll := ObterConteudo(ANode.Childrens.FindAnyNs('ValorCSLL'), tcDe2);

        Aliquota := ObterConteudo(ANode.Childrens.FindAnyNs('AliquotaServicos'), tcDe4);

        aValor := ObterConteudo(ANode.Childrens.FindAnyNs('ISSRetido'), tcStr);

        if aValor = 'true' then
          IssRetido := stRetencao
        else
          IssRetido := stNormal;
      end;
    end;

    LerCPFCNPJTomador(ANode);

    with Tomador do
    begin
      RazaoSocial := ObterConteudo(ANode.Childrens.FindAnyNs('RazaoSocialTomador'), tcStr);

      with IdentificacaoTomador do
      begin
        InscricaoMunicipal := ObterConteudo(ANode.Childrens.FindAnyNs('InscricaoMunicipalTomador'), tcStr);

        InscricaoEstadual := ObterConteudo(ANode.Childrens.FindAnyNs('InscricaoEstadualTomador'), tcStr);
      end;

      with Contato do
      begin
        Email := ObterConteudo(ANode.Childrens.FindAnyNs('EmailTomador'), tcStr);
      end;
    end;

    LerEnderecoTomador(ANode);
    LerCPFCNPJIntermediario(ANode);

    with IntermediarioServico do
    begin
      InscricaoMunicipal := ObterConteudo(ANode.Childrens.FindAnyNs('InscricaoMunicipalIntermediario'), tcStr);

      EMail := ObterConteudo(ANode.Childrens.FindAnyNs('EmailIntermediario'), tcStr);

      aValor := ObterConteudo(ANode.Childrens.FindAnyNs('ISSRetidoIntermediario'), tcStr);

      if aValor = 'true' then
        IssRetido := stRetencao
      else
        IssRetido := stNormal;
    end;

    with ConstrucaoCivil do
    begin
      nCei := ObterConteudo(ANode.Childrens.FindAnyNs('CodigoCEI'), tcStr);

      nMatri := ObterConteudo(ANode.Childrens.FindAnyNs('MatriculaObra'), tcStr);

      nNumeroEncapsulamento := ObterConteudo(ANode.Childrens.FindAnyNs('NumeroEncapsulamento'), tcStr);
    end;
  end;
  *)
end;

procedure TNFSeR_Simple.SetxItemListaServico(Codigo: string);
var
  Item: Integer;
  ItemServico: string;
begin
  NFSe.Servico.ItemListaServico := Codigo;

  Item := StrToIntDef(OnlyNumber(Nfse.Servico.ItemListaServico), 0);
  if Item < 100 then
    Item := Item * 100 + 1;

  ItemServico := FormatFloat('0000', Item);

  NFSe.Servico.ItemListaServico := Copy(ItemServico, 1, 2) + '.' +
                                     Copy(ItemServico, 3, 2);

  if FpAOwner.ConfigGeral.TabServicosExt then
    NFSe.Servico.xItemListaServico := ObterDescricaoServico(ItemServico)
  else
    NFSe.Servico.xItemListaServico := CodItemServToDesc(ItemServico);
end;

end.
