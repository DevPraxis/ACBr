{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida               }
{                                                                              }
{ Colaboradores nesse arquivo: Rafael Dias                                     }
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

unit ACBrNFSeXInterface;

interface

uses
  ACBrNFSeXClass, ACBrNFSeXParametros, ACBrNFSeXConversao;

type
  IACBrNFSeXProvider = interface ['{6A71A59C-9EA1-45BF-BCAB-59BB90B62AAA}']
    function GerarXml(const ANFSe: TNFSe; var AXml, AAlerts: string): Boolean;
    function LerXml(const AXML: String; var ANFSe: TNFSe; var ATipo: TtpXML): Boolean;

    procedure GeraLote;
    procedure Emite;
    procedure ConsultaSituacao;
    procedure ConsultaLoteRps;
    procedure ConsultaNFSeporRps;
    procedure ConsultaNFSe;
    procedure CancelaNFSe;
    procedure SubstituiNFSe;

    function GetConfigGeral: TConfigGeral;
    function GetConfigWebServices: TConfigWebServices;
    function GetConfigMsgDados: TConfigMsgDados;
    function GetConfigAssinar: TConfigAssinar;
    function GetConfigSchemas: TConfigSchemas;

    property ConfigGeral: TConfigGeral read GetConfigGeral;
    property ConfigWebServices: TConfigWebServices read GetConfigWebServices;
    property ConfigMsgDados: TConfigMsgDados read GetConfigMsgDados;
    property ConfigAssinar: TConfigAssinar read GetConfigAssinar;
    property ConfigSchemas: TConfigSchemas read GetConfigSchemas;

    function SimNaoToStr(const t: TnfseSimNao): string;
    function StrToSimNao(out ok: boolean; const s: string): TnfseSimNao;
    function SimNaoDescricao(const t: TnfseSimNao): string;

    function RegimeEspecialTributacaoToStr(const t: TnfseRegimeEspecialTributacao): string;
    function StrToRegimeEspecialTributacao(out ok: boolean; const s: string): TnfseRegimeEspecialTributacao;
    function RegimeEspecialTributacaoDescricao(const t: TnfseRegimeEspecialTributacao): string;

    function SituacaoTributariaToStr(const t: TnfseSituacaoTributaria): string;
    function StrToSituacaoTributaria(out ok: boolean; const s: string): TnfseSituacaoTributaria;
    function SituacaoTributariaDescricao(const t: TnfseSituacaoTributaria): string;

    function ResponsavelRetencaoToStr(const t: TnfseResponsavelRetencao): string;
    function StrToResponsavelRetencao(out ok: boolean; const s: string): TnfseResponsavelRetencao;
    function ResponsavelRetencaoDescricao(const t: TnfseResponsavelRetencao): String;

    function NaturezaOperacaoDescricao(const t: TnfseNaturezaOperacao): string; 
  end;

implementation

end.
