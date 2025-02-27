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

unit GeisWeb.LerXml;

interface

uses
  SysUtils, Classes, StrUtils,
  ACBrUtil,
  ACBrXmlBase, ACBrXmlDocument,
  ACBrNFSeXConversao, ACBrNFSeXLerXml;

type
  { TNFSeR_GeisWeb }

  TNFSeR_GeisWeb = class(TNFSeRClass)
  protected
    function StrToRegime(out ok: boolean; const s: string): TnfseRegimeEspecialTributacao;

    // Leitura da NFS-e
    procedure LerIdentificacaoNfse(const ANode: TACBrXmlNode);
    procedure LerEnderecoPrestador(const ANode: TACBrXmlNode);
    procedure LerContatoPrestador(const ANode: TACBrXmlNode);

    // Leitura do Rps
    procedure LerIdentificacaoRps(const ANode: TACBrXmlNode);
    procedure LerServico(const ANode: TACBrXmlNode);
    procedure LerValores(const ANode: TACBrXmlNode);
    procedure LerPrestadorServico(const ANode: TACBrXmlNode);
    procedure LerIdentificacaoPrestador(const ANode: TACBrXmlNode);
    procedure LerTomadorServico(const ANode: TACBrXmlNode);
    procedure LerIdentificacaoTomador(const ANode: TACBrXmlNode);
    procedure LerEnderecoTomador(const ANode: TACBrXmlNode);
    procedure LerOrgaoGerador(const ANode: TACBrXmlNode);
    procedure LerOutrosImpostos(const ANode: TACBrXmlNode);
  public
    function LerXml: Boolean; override;
    function LerXmlRps(const ANode: TACBrXmlNode): Boolean;
    function LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
  end;

implementation

//==============================================================================
// Essa unit tem por finalidade exclusiva ler o XML do provedor:
//     GeisWeb
//==============================================================================

{ TNFSeR_GeisWeb }

function TNFSeR_GeisWeb.StrToRegime(out ok: boolean;
  const s: string): TnfseRegimeEspecialTributacao;
begin
  Result := StrToEnumerado(ok, s,
                          ['1', '2', '4', '6'],
                          [retSimplesNacional, retMicroempresarioIndividual,
                           retImune, retOutros]);
end;

procedure TNFSeR_GeisWeb.LerContatoPrestador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('Contato');

  if AuxNode <> nil then
  begin
    with NFSe.Prestador.Contato do
    begin
      Telefone := ObterConteudo(AuxNode.Childrens.FindAnyNs('Telefone'), tcStr);
      Email    := ObterConteudo(AuxNode.Childrens.FindAnyNs('Email'), tcStr);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerEnderecoPrestador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('Endereco');

  if AuxNode <> nil then
  begin
    with NFSe.Prestador.Endereco do
    begin
      Endereco := ObterConteudo(AuxNode.Childrens.FindAnyNs('Rua'), tcStr);
      Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('Numero'), tcStr);
      Bairro := ObterConteudo(AuxNode.Childrens.FindAnyNs('Bairro'), tcStr);
      xMunicipio := ObterConteudo(AuxNode.Childrens.FindAnyNs('Cidade'), tcStr);
      UF := ObterConteudo(AuxNode.Childrens.FindAnyNs('Estado'), tcStr);
      CEP := ObterConteudo(AuxNode.Childrens.FindAnyNs('Cep'), tcStr);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerEnderecoTomador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
  cCidade: string;
begin
  AuxNode := ANode.Childrens.FindAnyNs('Endereco');

  if AuxNode <> nil then
  begin
    with NFSe.Tomador.Endereco do
    begin
      Endereco := ObterConteudo(AuxNode.Childrens.FindAnyNs('Rua'), tcStr);
      Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('Numero'), tcStr);
      Bairro := ObterConteudo(AuxNode.Childrens.FindAnyNs('Bairro'), tcStr);
      cCidade := ObterConteudo(AuxNode.Childrens.FindAnyNs('Cidade'), tcStr);
      xMunicipio := CodIBGEToCidade(StrToIntDef(OnlyNumber(cCidade), 0));
      UF := ObterConteudo(AuxNode.Childrens.FindAnyNs('Estado'), tcStr);
      CEP := ObterConteudo(AuxNode.Childrens.FindAnyNs('Cep'), tcStr);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerIdentificacaoNfse(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('IdentificacaoNfse');

  if AuxNode <> nil then
  begin
    with NFSe do
    begin
      numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumeroNfse'), tcStr);
      CodigoVerificacao := ObterConteudo(AuxNode.Childrens.FindAnyNs('CodigoVerificacao'), tcStr);
      IdentificacaoRps.Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumeroRps'), tcStr);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerIdentificacaoPrestador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('IdentificacaoPrestador');

  if AuxNode <> nil then
  begin
    with NFSe.Prestador.IdentificacaoPrestador do
    begin
      CpfCnpj := ObterConteudo(AuxNode.Childrens.FindAnyNs('CnpjCpf'), tcStr);
      InscricaoMunicipal := ObterConteudo(AuxNode.Childrens.FindAnyNs('InscricaoMunicipal'), tcStr);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerIdentificacaoRps(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('IdentificacaoRps');

  if AuxNode <> nil then
  begin
    with NFSe.IdentificacaoRps do
    begin
      Numero := ObterConteudo(AuxNode.Childrens.FindAnyNs('NumeroRps'), tcStr);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerIdentificacaoTomador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('IdentificacaoTomador');

  if AuxNode <> nil then
  begin
    with NFSe.Tomador.IdentificacaoTomador do
    begin
      CpfCnpj := ObterConteudo(AuxNode.Childrens.FindAnyNs('CnpjCpf'), tcStr);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerOrgaoGerador(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('OrgaoGerador');

  if AuxNode <> nil then
  begin
    with NFSe.OrgaoGerador do
    begin
      CodigoMunicipio := ObterConteudo(AuxNode.Childrens.FindAnyNs('CodigoMunicipio'), tcStr);
      UF := ObterConteudo(AuxNode.Childrens.FindAnyNs('Uf'), tcStr);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerOutrosImpostos(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('OutrosImpostos');

  if AuxNode <> nil then
  begin
    with NFSe.Servico.Valores do
    begin
      ValorPis := ObterConteudo(AuxNode.Childrens.FindAnyNs('Pis'), tcDe2);
      ValorCofins := ObterConteudo(AuxNode.Childrens.FindAnyNs('Cofins'), tcDe2);
      ValorCsll := ObterConteudo(AuxNode.Childrens.FindAnyNs('Csll'), tcDe2);
      ValorIr := ObterConteudo(AuxNode.Childrens.FindAnyNs('Irrf'), tcDe2);
      ValorInss := ObterConteudo(AuxNode.Childrens.FindAnyNs('Inss'), tcDe2);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerPrestadorServico(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('PrestadorServico');

  if AuxNode <> nil then
  begin
    LerIdentificacaoPrestador(AuxNode);

    with NFSe.Prestador do
    begin
      RazaoSocial := ObterConteudo(AuxNode.Childrens.FindAnyNs('RazaoSocial'), tcStr);

      LerEnderecoPrestador(AuxNode);
      LerContatoPrestador(AuxNode);
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerServico(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('Servico');

  if AuxNode <> nil then
  begin
    with NFSe.Servico do
    begin
      LerValores(AuxNode);

      ItemListaServico := ObterConteudo(AuxNode.Childrens.FindAnyNs('CodigoServico'), tcStr);
      Discriminacao := ObterConteudo(AuxNode.Childrens.FindAnyNs('Discriminacao'), tcStr);
      CodigoMunicipio := ObterConteudo(AuxNode.Childrens.FindAnyNs('MunicipioPrestacaoServico'), tcStr);
      CodigoTributacaoMunicipio := ItemListaServico;
      xCodigoTributacaoMunicipio := CodItemServToDesc(ItemListaServico);
      xItemListaServico := CodItemServToDesc(ItemListaServico);
//                    <xs:element name="TipoLancamento" type="xs:string"></xs:element>
    end;
  end;
end;

procedure TNFSeR_GeisWeb.LerTomadorServico(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('TomadorServico');

  if AuxNode <> nil then
  begin
    LerIdentificacaoTomador(AuxNode);

    with NFSe.Tomador do
    begin
      RazaoSocial := ObterConteudo(AuxNode.Childrens.FindAnyNs('RazaoSocial'), tcStr);
    end;

    LerEnderecoTomador(AuxNode);
  end;
end;

procedure TNFSeR_GeisWeb.LerValores(const ANode: TACBrXmlNode);
var
  AuxNode: TACBrXmlNode;
begin
  AuxNode := ANode.Childrens.FindAnyNs('Valores');

  if AuxNode <> nil then
  begin
    with NFSe.Servico.Valores do
    begin
      ValorServicos := ObterConteudo(AuxNode.Childrens.FindAnyNs('ValorServicos'), tcDe2);
      BaseCalculo := ObterConteudo(AuxNode.Childrens.FindAnyNs('BaseCalculo'), tcDe2);
      Aliquota := ObterConteudo(AuxNode.Childrens.FindAnyNs('Aliquota'), tcDe2);
      ValorIss := ObterConteudo(AuxNode.Childrens.FindAnyNs('IssDevido'), tcDe2);
      ValorIssRetido := ObterConteudo(AuxNode.Childrens.FindAnyNs('IssRetido'), tcDe2);
      ValorLiquidoNfse := ValorServicos - ValorInss - ValorIssRetido;
    end;
  end;
end;

function TNFSeR_GeisWeb.LerXml: Boolean;
var
  XmlNode: TACBrXmlNode;
  xRetorno: string;
begin
//italo  xRetorno := TratarXmlRetorno(Arquivo);
  xRetorno := Arquivo;
  xRetorno := TiraAcentos(xRetorno);

  if EstaVazio(xRetorno) then
    raise Exception.Create('Arquivo xml n�o carregado.');

  if FDocument = nil then
    FDocument := TACBrXmlDocument.Create();

  Document.Clear();
  Document.LoadFromXml(xRetorno);

  if (Pos('Nfse', xRetorno) > 0) then
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

function TNFSeR_GeisWeb.LerXmlNfse(const ANode: TACBrXmlNode): Boolean;
var
  Ok: Boolean;
begin
  Result := True;

  with NFSe do
  begin
    LerIdentificacaoNfse(ANode);

    DataEmissao := ObterConteudo(ANode.Childrens.FindAnyNs('DataEmissao'), tcDat);
    Competencia := ObterConteudo(ANode.Childrens.FindAnyNs('Competencia'), tcDat);
//           <xs:element name="DataLancamento" type="xs:string"></xs:element>
    RegimeEspecialTributacao := StrToRegime(Ok, ObterConteudo(ANode.Childrens.FindAnyNs('Regime'), tcStr));

    LerServico(ANode);
    LerPrestadorServico(ANode);
    LerTomadorServico(ANode);
    LerOrgaoGerador(ANode);
    LerOutrosImpostos(ANode);

    Link := ObterConteudo(ANode.Childrens.FindAnyNs('LinkConsulta'), tcStr);
  end;
end;

function TNFSeR_GeisWeb.LerXmlRps(const ANode: TACBrXmlNode): Boolean;
begin
  Result := True;

  with NFSe do
  begin
    DataEmissao := ObterConteudo(ANode.Childrens.FindAnyNs('DataEmissao'), tcDat);

    LerIdentificacaoRps(ANode);
    LerServico(ANode);
    LerPrestadorServico(ANode);
    LerTomadorServico(ANode);
    LerOrgaoGerador(ANode);
    LerOutrosImpostos(ANode);
  end;
end;

end.
