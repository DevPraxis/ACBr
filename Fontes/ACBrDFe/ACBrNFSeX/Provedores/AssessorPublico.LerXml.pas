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

unit AssessorPublico.LerXml;

interface

uses
  SysUtils, Classes, StrUtils,
  ACBrUtil,
  ACBrXmlBase, ACBrXmlDocument,
  ACBrNFSeXConversao, ACBrNFSeXLerXml;

type
  { TNFSeR_AssessorPublico }

  TNFSeR_AssessorPublico = class(TNFSeRClass)
  protected

  public
    function LerXml: Boolean; override;
    function LerXmlRps(const ANode: TACBrXmlNode): Boolean;
    function LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
  end;

implementation

//==============================================================================
// Essa unit tem por finalidade exclusiva ler o XML do provedor:
//     AssessorPublico
//==============================================================================

{ TNFSeR_AssessorPublico }

function TNFSeR_AssessorPublico.LerXml: Boolean;
var
  XmlNode: TACBrXmlNode;
  xRetorno: string;
begin
//  xRetorno := TratarXmlRetorno(Arquivo);
  xRetorno := Arquivo;

  if EstaVazio(xRetorno) then
    raise Exception.Create('Arquivo xml n�o carregado.');

  if FDocument = nil then
    FDocument := TACBrXmlDocument.Create();

  Document.Clear();
  Document.LoadFromXml(xRetorno);

  if (Pos('NOTA', xRetorno) > 0) then
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

function TNFSeR_AssessorPublico.LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
var
  AuxNode: TACBrXmlNode;
  aValor: String;
  ANodes: TACBrXmlNodeArray;
  i: integer;
begin
  Result := True;

  if not Assigned(ANode) or (ANode = nil) then Exit;

  AuxNode := ANode.Childrens.FindAnyNs('NOTA');

  if AuxNode = nil then
    AuxNode := ANode;

  NFSe.Link       := ObterConteudo(AuxNode.Childrens.FindAnyNs('LINK'), tcStr);
  NFSe.NumeroLote := ObterConteudo(AuxNode.Childrens.FindAnyNs('LOTE'), tcStr);
  NFSe.Numero     := ObterConteudo(AuxNode.Childrens.FindAnyNs('COD'), tcStr);

  NFSe.InfID.ID := NFSe.Numero;

  NFSe.IdentificacaoRps.Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('RPS'), tcStr);
  NFSe.CodigoVerificacao := NFSe.IdentificacaoRps.Numero;

  NFSe.IdentificacaoRps.Serie  := ObterConteudo(AuxNode.Childrens.FindAnyNs('SEQUENCIA'), tcStr);

  NFSe.Competencia := ObterConteudo(AuxNode.Childrens.FindAnyNs('MESCOMP'), tcStr) +
                      ObterConteudo(AuxNode.Childrens.FindAnyNs('ANOCOMP'), tcStr);

  aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('DATA'), tcStr) +
            ObterConteudo(AuxNode.Childrens.FindAnyNs('HORA'), tcStr);

  NFSe.DataEmissao := StringToDateTime(aValor, 'DD/MM/YYYY hh:nn:ss');

  NFSe.OptanteSimplesNacional := snNao;

  aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTSUPERSIMP'), tcStr);

  if aValor = 'S' then
    NFSe.OptanteSimplesNacional := snSim;

  with NFSe.Servico do
  begin
    Discriminacao     := ObterConteudo(AuxNode.Childrens.FindAnyNs('OBSSERVICO'), tcStr);
    ItemListaServico  := ObterConteudo(AuxNode.Childrens.FindAnyNs('ATIVCOD'), tcStr);
    xItemListaServico := ObterConteudo(AuxNode.Childrens.FindAnyNs('ATIVDESC'), tcStr);
    CodigoMunicipio   := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMMUNICIPIOCOD'), tcStr);

    MunicipioIncidencia := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMMUNICIPIOCOD'), tcInt);
  end;

  with NFSe.Servico.Valores do
  begin
    aValor := ObterConteudo(AuxNode.Childrens.FindAnyNs('RETIDO'), tcStr);

    if aValor = 'N' then
      IssRetido := stNormal;

    BaseCalculo   := ObterConteudo(AuxNode.Childrens.FindAnyNs('BASECALC'), tcDe2);
    ValorServicos := ObterConteudo(AuxNode.Childrens.FindAnyNs('VALORTOTALSERVICOS'), tcDe2);
    ValorIss      := ObterConteudo(AuxNode.Childrens.FindAnyNs('IMPOSTO'), tcDe2);
    ValorDeducoes := ObterConteudo(AuxNode.Childrens.FindAnyNs('DEDUCAO'), tcDe2);
    ValorOutrasRetencoes := ObterConteudo(AuxNode.Childrens.FindAnyNs('RETENCAO'), tcDe2);
    ValorPis      := ObterConteudo(AuxNode.Childrens.FindAnyNs('PIS'), tcDe2);
    ValorCofins   := ObterConteudo(AuxNode.Childrens.FindAnyNs('COFINS'), tcDe2);
    ValorInss     := ObterConteudo(AuxNode.Childrens.FindAnyNs('INSS'), tcDe2);
    ValorIr       := ObterConteudo(AuxNode.Childrens.FindAnyNs('IR'), tcDe2);
    ValorCsll     := ObterConteudo(AuxNode.Childrens.FindAnyNs('CSLL'), tcDe2);

    OutrasRetencoes := OutrasRetencoes +
           ObterConteudo(AuxNode.Childrens.FindAnyNs('ICMS'), tcDe2) +
           ObterConteudo(AuxNode.Childrens.FindAnyNs('IOF'), tcDe2) +
           ObterConteudo(AuxNode.Childrens.FindAnyNs('CIDE'), tcDe2) +
           ObterConteudo(AuxNode.Childrens.FindAnyNs('OUTROSTRIBUTOS'), tcDe2) +
           ObterConteudo(AuxNode.Childrens.FindAnyNs('OUTRASRETENCOES'), tcDe2) +
           ObterConteudo(AuxNode.Childrens.FindAnyNs('IPI'), tcDe2);

    Aliquota := ObterConteudo(AuxNode.Childrens.FindAnyNs('ALIQUOTA'), tcDe4);
  end;

  with NFSe.Prestador do
  begin
    RazaoSocial  := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTNOMERAZAO'), tcStr);
    NomeFantasia := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTNOMERAZAO'), tcStr);
  end;

  with NFSe.Prestador.IdentificacaoPrestador do
  begin
    CpfCnpj := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTCPFCNPJ'), tcStr);
    InscricaoMunicipal := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTCODMOBILIARIO'), tcStr);
  end;

  with NFSe.Prestador.Endereco do
  begin
    Endereco := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTPREFIXODESC'), tcStr) +
         ' ' + ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTLOGDESC'), tcStr);
    Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTNUMERO'), tcStr);

    Bairro          := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTBAIRRODESC'), tcStr);
    CodigoMunicipio := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTMUNICIPIOCOD'), tcStr);
    xMunicipio      := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTMUNICIPIODESC'), tcStr);
    UF              := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTMUNICIPIOUF'), tcStr);
    CEP             := ObterConteudo(AuxNode.Childrens.FindAnyNs('PRESTCEP'), tcStr);
  end;

  with NFSe.Tomador do
  begin
    RazaoSocial := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMNOMERAZAO'), tcStr);
  end;

  with NFSe.Tomador.IdentificacaoTomador do
  begin
    CpfCnpj            := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMCPFCNPJ'), tcStr);
    InscricaoMunicipal := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMINSCRICAOMUN'), tcStr);
  end;

  with NFSe.Tomador.Endereco do
  begin
    Endereco := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMPREFIXODESC'), tcStr) +
           ' ' + ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMLOGDESC'), tcStr);
    Numero   := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMNUMERO'), tcStr);

    Bairro          := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMBAIRRODESC'), tcStr);
    CodigoMunicipio := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMMUNICIPIOCOD'), tcStr);
    xMunicipio      := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMMUNICIPIODESC'), tcStr);
    UF              := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMMUNICIPIOUF'), tcStr);
    CEP             := ObterConteudo(AuxNode.Childrens.FindAnyNs('TOMCEP'), tcStr);
  end;

  AuxNode := ANode.Childrens.FindAnyNs('SERVICOS');

  if AuxNode <> nil then
  begin
    ANodes := AuxNode.Childrens.FindAllAnyNs('SERVICO');

    for i := 0 to Length(ANodes) - 1 do
    begin
      NFSe.Servico.ItemServico.New;
      with NFSe.Servico.ItemServico[i] do
      begin
        CodServ       := ObterConteudo(ANodes[i].Childrens.FindAnyNs('CODIGO'), tcStr);
        Descricao     := ObterConteudo(ANodes[i].Childrens.FindAnyNs('DESCRICAO'), tcStr);
        Quantidade    := ObterConteudo(ANodes[i].Childrens.FindAnyNs('QUANTIDADE'), tcDe2);
        ValorUnitario := ObterConteudo(ANodes[i].Childrens.FindAnyNs('VALOR'), tcDe2);

        DescontoIncondicionado := ObterConteudo(ANodes[i].Childrens.FindAnyNs('DESCONTO'), tcDe2);

        ValorTotal := Quantidade + ValorUnitario;
        Tributavel := snSim;
      end;
    end;
  end;

  with NFSe.Servico.Valores do
  begin
    ValorLiquidoNfse := ValorServicos -
        (ValorDeducoes + DescontoCondicionado +
         DescontoIncondicionado + ValorIssRetido);
  end;
end;

function TNFSeR_AssessorPublico.LerXmlRps(const ANode: TACBrXmlNode): Boolean;
var
  AuxNode: TACBrXmlNode;
  ANodes: TACBrXmlNodeArray;
  i: Integer;
  aValor: string;
begin
  Result := True;

  if not Assigned(ANode) or (ANode = nil) then Exit;

  with NFSe do
  begin
    NumeroLote := ObterConteudo(ANode.Childrens.FindAnyNs('LOTE'), tcStr);

    with IdentificacaoRps do
    begin
      Numero := ObterConteudo(ANode.Childrens.FindAnyNs('SEQUENCIA'), tcStr);
    end;

    aValor := ObterConteudo(ANode.Childrens.FindAnyNs('DATAEMISSAO'), tcStr);
    aValor := aValor + ' ' +
              ObterConteudo(ANode.Childrens.FindAnyNs('HORAEMISSAO'), tcStr);

    DataEmissao := StrToDateTimeDef(aValor, 0);

    Situacao := ObterConteudo(ANode.Childrens.FindAnyNs('SITUACAO'), tcStr);

    with Servico do
    begin
      ItemListaServico := ObterConteudo(ANode.Childrens.FindAnyNs('ATIVIDADE'), tcStr);

      Discriminacao := ObterConteudo(ANode.Childrens.FindAnyNs('OBSERVACAO'), tcStr);

      with Valores do
      begin
        aValor := ObterConteudo(ANode.Childrens.FindAnyNs('RETIDO'), tcStr);

        if aValor = 'S' then
          IssRetido := stRetencao
        else
          IssRetido := stNormal;

        Aliquota := ObterConteudo(ANode.Childrens.FindAnyNs('ALIQUOTAAPLICADA'), tcDe2);

        ValorDeducoes := ObterConteudo(ANode.Childrens.FindAnyNs('DEDUCAO'), tcDe2);

        valorOutrasRetencoes := ObterConteudo(ANode.Childrens.FindAnyNs('IMPOSTO'), tcDe2);

        ValorIssRetido := ObterConteudo(ANode.Childrens.FindAnyNs('RETENCAO'), tcDe2);

        ValorPis := ObterConteudo(ANode.Childrens.FindAnyNs('PIS'), tcDe2);

        ValorCofins := ObterConteudo(ANode.Childrens.FindAnyNs('COFINS'), tcDe2);

        ValorInss := ObterConteudo(ANode.Childrens.FindAnyNs('INSS'), tcDe2);

        ValorIr := ObterConteudo(ANode.Childrens.FindAnyNs('IR'), tcDe2);

        ValorCsll := ObterConteudo(ANode.Childrens.FindAnyNs('CSLL'), tcDe2);
      end;
    end;

    with Tomador do
    begin
      with IdentificacaoTomador do
      begin
        CpfCnpj := ObterConteudo(ANode.Childrens.FindAnyNs('CPFCNPJ'), tcStr);

        InscricaoEstadual := ObterConteudo(ANode.Childrens.FindAnyNs('RGIE'), tcStr);
      end;

      RazaoSocial := ObterConteudo(ANode.Childrens.FindAnyNs('NOMERAZAO'), tcStr);

      NomeFantasia := ObterConteudo(ANode.Childrens.FindAnyNs('NOMEFANTASIA'), tcStr);

      with Endereco do
      begin
        CodigoMunicipio := ObterConteudo(ANode.Childrens.FindAnyNs('MUNICIPIO'), tcStr);

        Bairro := ObterConteudo(ANode.Childrens.FindAnyNs('BAIRRO'), tcStr);

        CEP := ObterConteudo(ANode.Childrens.FindAnyNs('CEP'), tcStr);

        TipoLogradouro := ObterConteudo(ANode.Childrens.FindAnyNs('PREFIXO'), tcStr);

        Endereco := ObterConteudo(ANode.Childrens.FindAnyNs('LOGRADOURO'), tcStr);

        Complemento := ObterConteudo(ANode.Childrens.FindAnyNs('COMPLEMENTO'), tcStr);

        Numero := ObterConteudo(ANode.Childrens.FindAnyNs('NUMERO'), tcStr);

        Contato.Email := ObterConteudo(ANode.Childrens.FindAnyNs('EMAIL'), tcStr);
      end;
    end;

    AuxNode := ANode.Childrens.FindAnyNs('SERVICOS');

    if AuxNode <> nil then
    begin
      ANodes := AuxNode.Childrens.FindAllAnyNs('SERVICO');

      for i := 0 to Length(ANodes) - 1 do
      begin
        Servico.ItemServico.New;
        with NFSe.Servico.ItemServico[i] do
        begin
          Descricao := ObterConteudo(ANodes[i].Childrens.FindAnyNs('DESCRICAO'), tcStr);

          ValorUnitario := ObterConteudo(ANodes[i].Childrens.FindAnyNs('VALORUNIT'), tcDe2);

          Quantidade := ObterConteudo(ANodes[i].Childrens.FindAnyNs('QUANTIDADE'), tcDe4);

          DescontoIncondicionado := ObterConteudo(ANodes[i].Childrens.FindAnyNs('DESCONTO'), tcDe2);
        end;
      end;
    end;
  end;
end;

end.
