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

unit ACBrNFSeXGravarXml;

interface

uses
  SysUtils, Classes, StrUtils,
  ACBrXmlBase, ACBrXmlDocument, ACBrXmlWriter,
  ACBrNFSeXInterface, ACBrNFSeXClass, ACBrNFSeXConversao;

type

  TXmlWriterOptions = class(TACBrXmlWriterOptions)
  private
    FAjustarTagNro: boolean;
    FNormatizarMunicipios: boolean;
    FGerarTagAssinatura: TACBrTagAssinatura;
    FPathArquivoMunicipios: string;
    FValidarInscricoes: boolean;
    FValidarListaServicos: boolean;

  public
    property AjustarTagNro: boolean read FAjustarTagNro write FAjustarTagNro;
    property NormatizarMunicipios: boolean read FNormatizarMunicipios write FNormatizarMunicipios;
    property GerarTagAssinatura: TACBrTagAssinatura read FGerarTagAssinatura write FGerarTagAssinatura;
    property PathArquivoMunicipios: string read FPathArquivoMunicipios write FPathArquivoMunicipios;
    property ValidarInscricoes: boolean read FValidarInscricoes write FValidarInscricoes;
    property ValidarListaServicos: boolean read FValidarListaServicos write FValidarListaServicos;

  end;

  TNFSeWClass = class(TACBrXmlWriter)
  private
    FNFSe: TNFSe;

    FVersaoNFSe: TVersaoNFSe;
    FAmbiente: TACBrTipoAmbiente;
    FCodMunEmit: Integer;
    FUsuario: string;
    FSenha: string;
    FChaveAcesso: string;
    FChaveAutoriz: string;
    FFraseSecreta: string;
    FCNPJPrefeitura: string;
    FProvedor: TnfseProvedor;

    FFormatoEmissao: TACBrTipoCampo;
    FFormatoCompetencia: TACBrTipoCampo;
    FFormItemLServico: TFormatoItemListaServico;
    FFormatoAliq: TACBrTipoCampo;
    FDivAliq100: Boolean;

    FNrMinExigISS: Integer;
    FNrMaxExigISS: Integer;

    FNrOcorrItemListaServico: Integer;

    // Gera ou n�o o atributo ID no grupo <Rps> da vers�o 2 do layout da ABRASF.
    FGerarIDRps: Boolean;
    // Gera ou n�o o NameSpace no grupo <Rps> da vers�o 2 do layout da ABRASF.
    FGerarNSRps: Boolean;

    function GetOpcoes: TACBrXmlWriterOptions;
    procedure SetOpcoes(AValue: TACBrXmlWriterOptions);

  protected
    FpAOwner: IACBrNFSeXProvider;

    function CreateOptions: TACBrXmlWriterOptions; override;

    procedure Configuracao; virtual;

    procedure DefinirIDRps; virtual;
    procedure DefinirIDDeclaracao; virtual;
    procedure ConsolidarVariosItensServicosEmUmSo;

    function GerarCNPJ(const CNPJ: string): TACBrXmlNode; virtual;
    function GerarCPFCNPJ(const CPFCNPJ: string): TACBrXmlNode; virtual;
    function NormatizarItemServico(const Codigo: string): string;
    function FormatarItemServico(const Codigo: string; Formato: TFormatoItemListaServico): string;
    function NormatizarAliquota(const Aliquota: Double; DivPor100: Boolean = False): Double;

 public
    constructor Create(AOwner: IACBrNFSeXProvider); virtual;

    function ObterNomeArquivo: String; Override;
    function GerarXml: Boolean; Override;

    property Opcoes: TACBrXmlWriterOptions read GetOpcoes write SetOpcoes;

    property NFSe: TNFSe                 read FNFSe           write FNFSe;
    property VersaoNFSe: TVersaoNFSe     read FVersaoNFSe     write FVersaoNFSe;
    property Ambiente: TACBrTipoAmbiente read FAmbiente       write FAmbiente default taHomologacao;
    property CodMunEmit: Integer         read FCodMunEmit     write FCodMunEmit;
    property Usuario: string             read FUsuario        write FUsuario;
    property Senha: string               read FSenha          write FSenha;
    property ChaveAcesso: string         read FChaveAcesso    write FChaveAcesso;
    property ChaveAutoriz: string        read FChaveAutoriz   write FChaveAutoriz;
    property FraseSecreta: string        read FFraseSecreta   write FFraseSecreta;
    property CNPJPrefeitura: string      read FCNPJPrefeitura write FCNPJPrefeitura;
    property Provedor: TnfseProvedor     read FProvedor       write FProvedor;

    property FormatoEmissao: TACBrTipoCampo     read FFormatoEmissao     write FFormatoEmissao;
    property FormatoCompetencia: TACBrTipoCampo read FFormatoCompetencia write FFormatoCompetencia;

    property FormatoItemListaServico: TFormatoItemListaServico read FFormItemLServico write FFormItemLServico;

    property FormatoAliq: TACBrTipoCampo read FFormatoAliq  write FFormatoAliq;
    property DivAliq100: Boolean         read FDivAliq100   write FDivAliq100;
    property NrMinExigISS: Integer       read FNrMinExigISS write FNrMinExigISS;
    property NrMaxExigISS: Integer       read FNrMaxExigISS write FNrMaxExigISS;

    property NrOcorrItemListaServico: Integer read FNrOcorrItemListaServico write FNrOcorrItemListaServico;

    property GerarIDRps: Boolean read FGerarIDRps write FGerarIDRps;
    property GerarNSRps: Boolean read FGerarNSRps write FGerarNSRps;
  end;

implementation

uses
  ACBrUtil,
  ACBrDFeException;

{ TNFSeWClass }

constructor TNFSeWClass.Create(AOwner: IACBrNFSeXProvider);
begin
  inherited Create;

  FpAOwner := AOwner;

  TXmlWriterOptions(Opcoes).AjustarTagNro := True;
  TXmlWriterOptions(Opcoes).NormatizarMunicipios := False;
  TXmlWriterOptions(Opcoes).PathArquivoMunicipios := '';
  TXmlWriterOptions(Opcoes).ValidarInscricoes := False;
  TXmlWriterOptions(Opcoes).ValidarListaServicos := False;

  Configuracao;
end;

procedure TNFSeWClass.Configuracao;
begin
  // Propriedades de Formata��o de informa��es
  FFormatoEmissao := tcDatHor;
  FFormatoCompetencia := tcDatHor;
  FFormItemLServico := filsComFormatacao;

  FFormatoAliq := tcDe4;
  FDivAliq100  := False;

  FNrMinExigISS := 1;
  FNrMaxExigISS := 1;

  FNrOcorrItemListaServico := 1;

  // Gera ou n�o o atributo ID no grupo <Rps> da vers�o 2 do layout da ABRASF.
  FGerarIDRps := False;
  // Gera ou n�o o NameSpace no grupo <Rps> da vers�o 2 do layout da ABRASF.
  FGerarNSRps := True;
end;

procedure TNFSeWClass.ConsolidarVariosItensServicosEmUmSo;
var
  i: Integer;
  xDiscriminacao, xItemListaServico: string;
  vValorDeducoes, vValorServicos, vDescontoCondicionado, vAliquota, vBaseCalculo,
  vDescontoIncondicionado, vValorPis, vValorCofins, vValorInss, vValorIr,
  vValorCsll, vValorIss, vAliquotaPis, vAliquotaCofins, vAliquotaInss,
  vAliquotaIr, vAliquotaCsll, vValorIssRetido: Double;
begin
  if NFSe.Servico.ItemServico.Count > 0 then
  begin
    xDiscriminacao := '';
    vValorDeducoes := 0;
    vValorServicos := 0;
    vDescontoCondicionado := 0;
    vDescontoIncondicionado := 0;
    vBaseCalculo := 0;
    vValorPis := 0;
    vValorCofins := 0;
    vValorInss := 0;
    vValorIr := 0;
    vValorCsll := 0;
    vValorIss := 0;
    vValorIssRetido := 0;
    vAliquota := 0;
    vAliquotaPis := 0;
    vAliquotaCofins := 0;
    vAliquotaInss := 0;
    vAliquotaIr := 0;
    vAliquotaCsll := 0;

    with NFSe.Servico do
    begin
      for i := 0 to ItemServico.Count -1 do
      begin
        xItemListaServico := ItemServico[i].ItemListaServico;
        vAliquota := ItemServico[i].Aliquota;
        vAliquotaPis := ItemServico[i].AliqRetPIS;
        vAliquotaCofins := ItemServico[i].AliqRetCOFINS;
        vAliquotaInss := ItemServico[i].AliqRetINSS;
        vAliquotaIr := ItemServico[i].AliqRetIRRF;
        vAliquotaCsll := ItemServico[i].AliqRetCSLL;

        xDiscriminacao := xDiscriminacao + ItemServico[i].Descricao;
        vValorDeducoes := vValorDeducoes + ItemServico[i].ValorDeducoes;
        vValorServicos := vValorServicos + ItemServico[i].ValorTotal;
        vDescontoCondicionado := vDescontoCondicionado + ItemServico[i].DescontoCondicionado;
        vDescontoIncondicionado := vDescontoIncondicionado + ItemServico[i].DescontoIncondicionado;
        vBaseCalculo := vBaseCalculo + ItemServico[i].BaseCalculo;
        vValorPis := vValorPis + ItemServico[i].ValorPis;
        vValorCofins := vValorCofins + ItemServico[i].ValorCofins;
        vValorInss := vValorInss + ItemServico[i].ValorInss;
        vValorIr := vValorIr + ItemServico[i].ValorIRRF;
        vValorCsll := vValorCsll + ItemServico[i].ValorCsll;
        vValorIss := vValorIss + ItemServico[i].ValorIss;
        vValorIssRetido := vValorIssRetido + ItemServico[i].ValorIssRetido;
      end;
    end;

    // Leva em considera��o a informa��o do ultimo item da lista.
    NFSe.Servico.ItemListaServico := xItemListaServico;
    NFSe.Servico.Valores.Aliquota := vAliquota;
    NFSe.Servico.Valores.AliquotaPis := vAliquotaPis;
    NFSe.Servico.Valores.AliquotaCofins := vAliquotaCofins;
    NFSe.Servico.Valores.AliquotaInss := vAliquotaInss;
    NFSe.Servico.Valores.AliquotaIr := vAliquotaIr;
    NFSe.Servico.Valores.AliquotaCsll := vAliquotaCsll;

    // Consolida todos os itens da lista.
    NFSe.Servico.Discriminacao := xDiscriminacao;
    NFSe.Servico.Valores.ValorDeducoes := vValorDeducoes;
    NFSe.Servico.Valores.ValorServicos := vValorServicos;
    NFSe.Servico.Valores.DescontoCondicionado := vDescontoCondicionado;
    NFSe.Servico.Valores.DescontoIncondicionado := vDescontoIncondicionado;
    NFSe.Servico.Valores.BaseCalculo := vBaseCalculo;
    NFSe.Servico.Valores.ValorPis := vValorPis;
    NFSe.Servico.Valores.ValorCofins := vValorCofins;
    NFSe.Servico.Valores.ValorInss := vValorInss;
    NFSe.Servico.Valores.ValorIr := vValorIr;
    NFSe.Servico.Valores.ValorCsll := vValorCsll;
    NFSe.Servico.Valores.ValorIss := vValorIss;
    NFSe.Servico.Valores.ValorIssRetido := vValorIssRetido;
  end;
end;

procedure TNFSeWClass.DefinirIDRps;
begin
  FNFSe.InfID.ID := 'Rps_' + OnlyNumber(FNFSe.IdentificacaoRps.Numero) +
                    FNFSe.IdentificacaoRps.Serie;
end;

function TNFSeWClass.FormatarItemServico(const Codigo: string;
  Formato: TFormatoItemListaServico): string;
var
  item: string;
begin
  item := NormatizarItemServico(Codigo);

  case Formato of
    filsSemFormatacao:
      Result := OnlyNumber(item);

    filsComFormatacaoSemZeroEsquerda:
      if Copy(item, 1, 1) = '0' then
        Result := Copy(item, 2, 4)
      else
        Result := item;

    filsSemFormatacaoSemZeroEsquerda:
      begin
        Result := OnlyNumber(item);

        if Copy(Result, 1, 1) = '0' then
          Result := Copy(Result, 2, 4);
      end
  else
    Result := item;
  end;
end;

procedure TNFSeWClass.DefinirIDDeclaracao;
begin
  FNFSe.InfID.ID := 'Dec_' + OnlyNumber(FNFSe.IdentificacaoRps.Numero) +
                    FNFSe.IdentificacaoRps.Serie;
end;

function TNFSeWClass.CreateOptions: TACBrXmlWriterOptions;
begin
  Result := TXmlWriterOptions.Create();
end;

function TNFSeWClass.ObterNomeArquivo: String;
begin
  Result := OnlyNumber(NFSe.infID.ID) + '.xml';
end;

function TNFSeWClass.NormatizarAliquota(const Aliquota: Double; DivPor100: Boolean = False): Double;
var
  Aliq: Double;
begin
  if Aliquota < 1 then
    Aliq := Aliquota * 100
  else
    Aliq := Aliquota;

  if DivPor100 then
    Result := Aliq / 100
  else
    Result := Aliq;
end;

function TNFSeWClass.NormatizarItemServico(const Codigo: string): string;
var
  i: Integer;
  item: string;
begin
  if Length(Codigo) <= 5 then
  begin
    item := OnlyNumber(Codigo);

    i := StrToIntDef(item, 0);
    item := Poem_Zeros(i, 4);

    Result := Copy(item, 1, 2) + '.' + Copy(item, 3, 2);
  end
  else
    Result := Codigo;
end;

function TNFSeWClass.GetOpcoes: TACBrXmlWriterOptions;
begin
  Result := TXmlWriterOptions(FOpcoes);
end;

procedure TNFSeWClass.SetOpcoes(AValue: TACBrXmlWriterOptions);
begin
  FOpcoes := AValue;
end;

function TNFSeWClass.GerarCNPJ(const CNPJ: string): TACBrXmlNode;
begin
  Result := AddNode(tcStr, '#34', 'Cnpj', 14, 14, 1, OnlyNumber(CNPJ), DSC_CNPJ);
end;

function TNFSeWClass.GerarCPFCNPJ(const CPFCNPJ: string): TACBrXmlNode;
var
  aDoc: string;
begin
  // Em conformidade com a vers�o 1 do layout da ABRASF n�o deve ser alterado
  aDoc := OnlyNumber(CPFCNPJ);

  Result := CreateElement('CpfCnpj');

  if length(aDoc) <= 11 then
    Result.AppendChild(AddNode(tcStr, '#34', 'Cpf ', 11, 11, 1, aDoc, DSC_CPF))
  else
    Result.AppendChild(AddNode(tcStr, '#34', 'Cnpj', 14, 14, 1, aDoc, DSC_CNPJ));
end;

function TNFSeWClass.GerarXml: Boolean;
begin
  Result := False;
  raise EACBrDFeException.Create(ClassName + '.GerarXml, n�o implementado');
end;

end.
