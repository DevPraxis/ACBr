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

unit ACBrNFSeXProviderManager;

interface

uses
  SysUtils, Classes,
  ACBrDFe,
  ACBrNFSeXInterface;

type

  TACBrNFSeXProviderManager = class
  public
    class function GetProvider(ACBrNFSe: TACBrDFe): IACBrNFSeXProvider;
  end;

implementation

uses
  ACBrNFSeX, ACBrNFSeXConversao,

  // Provedores que seguem a vers�o 1 do layout da ABRASF
  BHISS.Provider,
  CIGA.Provider,
  DBSeller.Provider,
  FISSLex.Provider,
  geNFe.Provider,
  Ginfes.Provider,
  GovBr.Provider,
  ISSCuritiba.Provider,
  ISSFortaleza.Provider,
  ISSIntel.Provider,
  ISSNatal.Provider,
  ISSNet.Provider,
  ISSRecife.Provider,
  ISSRio.Provider,
  ISSSalvador.Provider,
  ISSSJP.Provider,
  Lexsom.Provider,
  MetropolisWeb.Provider,
  NFSeBrasil.Provider,
  Publica.Provider,
  SpeedGov.Provider,
  Thema.Provider,
  Tinus.Provider,

  // Provedores que seguem a vers�o 2 do layout da ABRASF
  ABase.Provider,
  Actcon.Provider,
  Adm.Provider,
  ADPM.Provider,
  AEG.Provider,
  Asten.Provider,
  Centi.Provider,
  Citta.Provider,
  Coplan.Provider,
  DataSmart.Provider,
  DeISS.Provider,
  Desenvolve.Provider,
  Digifred.Provider,
  DSF.Provider,
  EloTech.Provider,
  eReceita.Provider,
  fintelISS.Provider,
  Fiorilli.Provider,
  Fisco.Provider,
  Futurize.Provider,
  Giss.Provider,
  GovDigital.Provider,
  iiBrasil.Provider,
  ISSDigital.Provider,
  ISSe.Provider,
  ISSGoiania.Provider,
  ISSJoinville.Provider,
  ISSPortoVelho.Provider,
  ISSVitoria.Provider,
  Link3.Provider,
  MegaSoft.Provider,
  Mitra.Provider,
  ModernizacaoPublica.Provider,
  NEAInformatica.Provider,
  NotaInteligente.Provider,
  Prodata.Provider,
  RLZ.Provider,
  Saatri.Provider,
  SafeWeb.Provider,
  SH3.Provider,
  Siam.Provider,
  SiapNet.Provider,
  SiapSistemas.Provider,
  SigCorp.Provider,
  Sigep.Provider,
  Sintese.Provider,
  SisPMJP.Provider,
  Sistemas4R.Provider,
  Sudoeste.Provider,
  SystemPro.Provider,
  TcheInfo.Provider,
  Tecnos.Provider,
  Tributus.Provider,
  VersaTecnologia.Provider,
  Virtual.Provider,

  // Provedores que seguem a vers�o 1 e 2 do layout da ABRASF
  Abaco.Provider,
  Betha.Provider,
  Pronim.Provider,
  SilTecnologia.Provider,
  SimplISS.Provider,
  Tiplan.Provider,
  WebISS.Provider,

  // Provedores que tem layout pr�prio e tamb�m seguem a vers�o 1 ou 2 do
  // layout da ABRASF
  EL.Provider,
  Infisc.Provider,
  SmarAPD.Provider,

  // Provedores que tem layout pr�prio
  Agili.Provider,
  AssessorPublico.Provider,
  Conam.Provider,
  eGoverneISS.Provider,
  Equiplano.Provider,
  FGMaiss.Provider,
  GeisWeb.Provider,
  Giap.Provider,
  Governa.Provider,
  IPM.Provider,
  ISSCambe.Provider,
  ISSDSF.Provider,
  ISSLencois.Provider,
  ISSSaoPaulo.Provider,
  Siat.Provider,
  SigISS.Provider,
  Simple.Provider,
  WebFisco.Provider;

  { TACBrNFSeXProviderManager }

class function TACBrNFSeXProviderManager.GetProvider(ACBrNFSe: TACBrDFe): IACBrNFSeXProvider;
begin
  with TACBrNFSeX(ACBrNFSe).Configuracoes.Geral do
  begin
    case Provedor of
      proAbaco:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderAbaco.Create(ACBrNFSe);
            ve101: Result := TACBrNFSeProviderAbaco101.Create(ACBrNFSe);
            ve204: Result := TACBrNFSeProviderAbaco204.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proABase: Result := TACBrNFSeProviderABase201.Create(ACBrNFSe);

      proActcon:
        begin
          case Versao of
//            ve100: Result := TACBrNFSeProviderActcon.Create(ACBrNFSe);
            ve201: Result := TACBrNFSeProviderActcon201.Create(ACBrNFSe);
            ve202: Result := TACBrNFSeProviderActcon202.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proAdm:   Result := TACBrNFSeProviderAdm201.Create(ACBrNFSe);
      proADPM:  Result := TACBrNFSeProviderADPM203.Create(ACBrNFSe);
      proAEG:   Result := TACBrNFSeProviderAEG202.Create(ACBrNFSe);
      proAgili: Result := TACBrNFSeProviderAgili.Create(ACBrNFSe);

      proAssessorPublico:
        Result := TACBrNFSeProviderAssessorPublico.Create(ACBrNFSe);

      proAsten: Result := TACBrNFSeProviderAsten202.Create(ACBrNFSe);

      proBetha:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderBetha.Create(ACBrNFSe);
            ve202: Result := TACBrNFSeProviderBetha202.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proBHISS:     Result := TACBrNFSeProviderBHISS.Create(ACBrNFSe);
      proCenti:     Result := TACBrNFSeProviderCenti202.Create(ACBrNFSe);
      proCIGA:      Result := TACBrNFSeProviderCIGA.Create(ACBrNFSe);
      proCitta:     Result := TACBrNFSeProviderCitta203.Create(ACBrNFSe);
      proConam:     Result := TACBrNFSeProviderConam.Create(ACBrNFSe);
      proCoplan:    Result := TACBrNFSeProviderCoplan201.Create(ACBrNFSe);
      proDataSmart: Result := TACBrNFSeProviderDataSmart202.Create(ACBrNFSe);
      proDBSeller:  Result := TACBrNFSeProviderDBSeller.Create(ACBrNFSe);
      proDeISS:     Result := TACBrNFSeProviderDeISS203.Create(ACBrNFSe);

      proDesenvolve:
        Result := TACBrNFSeProviderDesenvolve203.Create(ACBrNFSe);

      proDigifred: Result := TACBrNFSeProviderDigifred200.Create(ACBrNFSe);

      proDSF:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderDSF.Create(ACBrNFSe);
            ve200: Result := TACBrNFSeProviderDSF200.Create(ACBrNFSe);
            ve203: Result := TACBrNFSeProviderDSF203.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proeGoverneISS:
        Result := TACBrNFSeProvidereGoverneISS.Create(ACBrNFSe);

      proEL:
        begin
          case Versao of
            // Layout Pr�prio
            ve100: Result := TACBrNFSeProviderEL.Create(ACBrNFSe);
            // Layout ABRASF
            ve204: Result := TACBrNFSeProviderEL204.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proEloTech:  Result := TACBrNFSeProviderEloTech203.Create(ACBrNFSe);

      proEquiplano:
        Result := TACBrNFSeProviderEquiplano.Create(ACBrNFSe);

      proeReceita: Result := TACBrNFSeProvidereReceita202.Create(ACBrNFSe);
      proFGMaiss:  Result :=TACBrNFSeProviderFGMaiss.Create(ACBrNFSe);

      profintelISS:
        begin
          case Versao of
            ve200: Result := TACBrNFSeProviderfintelISS200.Create(ACBrNFSe);
            ve202: Result := TACBrNFSeProviderfintelISS202.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proFiorilli:   Result := TACBrNFSeProviderFiorilli200.Create(ACBrNFSe);
      proFisco:      Result := TACBrNFSeProviderFisco203.Create(ACBrNFSe);
      proFISSLex:    Result := TACBrNFSeProviderFISSLex.Create(ACBrNFSe);
      proFuturize:   Result := TACBrNFSeProviderFuturize202.Create(ACBrNFSe);
      proGeisWeb:    Result := TACBrNFSeProviderGeisWeb.Create(ACBrNFSe);
      progeNFe:      Result := TACBrNFSeProvidergeNFe.Create(ACBrNFSe);
      proGiap:       Result := TACBrNFSeProviderGiap.Create(ACBrNFSe);
      proGinfes:     Result := TACBrNFSeProviderGinfes.Create(ACBrNFSe);
      proGiss:       Result := TACBrNFSeProviderGiss204.Create(ACBrNFSe);
      proGovBr:      Result := TACBrNFSeProviderGovBr.Create(ACBrNFSe);
      proGovDigital: Result := TACBrNFSeProviderGovDigital200.Create(ACBrNFSe);
      proGoverna:    Result := TACBrNFSeProviderGoverna.Create(ACBrNFSe);
      proiiBrasil:   Result := TACBrNFSeProvideriiBrasil204.Create(ACBrNFSe);

      proInfisc:
        begin
          case Versao of
            // Layout Pr�prio
            ve100: Result := TACBrNFSeProviderInfisc.Create(ACBrNFSe);
            ve101: Result := TACBrNFSeProviderInfisc101.Create(ACBrNFSe);
            // Layout ABRASF
            ve201: Result := TACBrNFSeProviderInfisc201.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proIPM:
        begin
          case Versao of
            // Layout Pr�prio
            ve100: Result := TACBrNFSeProviderIPM.Create(ACBrNFSe);
            ve101: Result := TACBrNFSeProviderIPM101.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proISSCambe:
        Result := TACBrNFSeProviderISSCambe.Create(ACBrNFSe);

      proISSCuritiba:
        Result := TACBrNFSeProviderISSCuritiba.Create(ACBrNFSe);

      proISSDigital: Result := TACBrNFSeProviderISSDigital200.Create(ACBrNFSe);
      proISSDSF:     Result := TACBrNFSeProviderISSDSF.Create(ACBrNFSe);
      proISSe:       Result := TACBrNFSeProviderISSe200.Create(ACBrNFSe);

      proISSFortaleza:
        Result := TACBrNFSeProviderISSFortaleza.Create(ACBrNFSe);

      proISSGoiania: Result := TACBrNFSeProviderISSGoiania200.Create(ACBrNFSe);
      proISSIntel:   Result := TACBrNFSeProviderISSIntel.Create(ACBrNFSe);

      proISSJoinville:
        Result := TACBrNFSeProviderISSJoinville204.Create(ACBrNFSe);

      proISSLencois:
        Result := TACBrNFSeProviderISSLencois.Create(ACBrNFSe);

      proISSNatal: Result := TACBrNFSeProviderISSNatal.Create(ACBrNFSe);
      proISSNet:   Result := TACBrNFSeProviderISSNet.Create(ACBrNFSe);

      proISSPortoVelho:
        Result := TACBrNFSeProviderISSPortoVelho200.Create(ACBrNFSe);

      proISSRecife:   Result := TACBrNFSeProviderISSRecife.Create(ACBrNFSe);
      proISSRio:      Result := TACBrNFSeProviderISSRio.Create(ACBrNFSe);
      proISSSalvador: Result := TACBrNFSeProviderISSSalvador.Create(ACBrNFSe);
      proISSSaoPaulo: Result := TACBrNFSeProviderISSSaoPaulo.Create(ACBrNFSe);
      proISSSJP:      Result := TACBrNFSeProviderISSSJP.Create(ACBrNFSe);
      proISSVitoria:  Result := TACBrNFSeProviderISSVitoria200.Create(ACBrNFSe);
      proLexsom:      Result := TACBrNFSeProviderLexsom.Create(ACBrNFSe);
      proLink3:       Result := TACBrNFSeProviderLink3200.Create(ACBrNFSe);
      proMegaSoft:    Result := TACBrNFSeProviderMegaSoft200.Create(ACBrNFSe);

      proMetropolisWeb:
        Result := TACBrNFSeProviderMetropolisWeb.Create(ACBrNFSe);

      proMitra: Result := TACBrNFSeProviderMitra200.Create(ACBrNFSe);

      proModernizacaoPublica:
        Result := TACBrNFSeProviderModernizacaoPublica202.Create(ACBrNFSe);

      proNEAInformatica:
        Result := TACBrNFSeProviderNEAInformatica200.Create(ACBrNFSe);

      proNFSeBrasil: Result := TACBrNFSeProviderNFSeBrasil.Create(ACBrNFSe);

      proNotaInteligente:
        Result := TACBrNFSeProviderNotaInteligente200.Create(ACBrNFSe);

      proProdata: Result := TACBrNFSeProviderProdata201.Create(ACBrNFSe);

      proPronim:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderPronim.Create(ACBrNFSe);
            ve202: Result := TACBrNFSeProviderPronim202.Create(ACBrNFSe);
            ve203: Result := TACBrNFSeProviderPronim203.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proPublica: Result := TACBrNFSeProviderPublica.Create(ACBrNFSe);

      proRLZ:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderRLZ.Create(ACBrNFSe);
            ve203: Result := TACBrNFSeProviderRLZ203.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proSaatri:  Result := TACBrNFSeProviderSaatri201.Create(ACBrNFSe);
      proSafeWeb: Result := TACBrNFSeProviderSafeWeb200.Create(ACBrNFSe);
      proSH3:     Result := TACBrNFSeProviderSH3200.Create(ACBrNFSe);
      proSiam:    Result := TACBrNFSeProviderSiam200.Create(ACBrNFSe);
      proSiapNet: Result := TACBrNFSeProviderSiapNet200.Create(ACBrNFSe);

      proSiapSistemas:
        Result := TACBrNFSeProviderSiapSistemas203.Create(ACBrNFSe);

      proSiat:    Result := TACBrNFSeProviderSiat.Create(ACBrNFSe);
      proSigCorp: Result := TACBrNFSeProviderSigCorp203.Create(ACBrNFSe);
      proSigep:   Result := TACBrNFSeProviderSigep200.Create(ACBrNFSe);

      proSigISS:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderSigISS.Create(ACBrNFSe);
            ve103: Result := TACBrNFSeProviderSigISS103.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proSilTecnologia:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderSilTecnologia.Create(ACBrNFSe);
            ve203: Result := TACBrNFSeProviderSilTecnologia203.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proSimple: Result := TACBrNFSeProviderSimple.Create(ACBrNFSe);

      proSimplISS:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderSimplISS.Create(ACBrNFSe);
            ve203: Result := TACBrNFSeProviderSimplISS203.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proSintese:    Result := TACBrNFSeProviderSintese204.Create(ACBrNFSe);
      proSisPMJP:    Result := TACBrNFSeProviderSisPMJP202.Create(ACBrNFSe);
      proSistemas4R: Result := TACBrNFSeProvider4R200.Create(ACBrNFSe);

      proSmarAPD:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderSmarAPD.Create(ACBrNFSe);
            ve203: Result := TACBrNFSeProviderSmarAPD203.Create(ACBrNFSe);
            ve204: Result := TACBrNFSeProviderSmarAPD204.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proSpeedGov:  Result := TACBrNFSeProviderSpeedGov.Create(ACBrNFSe);
      proSudoeste:  Result := TACBrNFSeProviderSudoeste202.Create(ACBrNFSe);
      proSystemPro: Result := TACBrNFSeProviderSystemPro201.Create(ACBrNFSe);
      proTcheInfo:  Result := TACBrNFSeProviderTcheInfo204.Create(ACBrNFSe);
      proTecnos:    Result := TACBrNFSeProviderTecnos201.Create(ACBrNFSe);
      proThema:     Result := TACBrNFSeProviderThema.Create(ACBrNFSe);

      proTinus:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderTinus.Create(ACBrNFSe);
            ve101: Result := TACBrNFSeProviderTinus.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proTiplan:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderTiplan.Create(ACBrNFSe);
            ve203: Result := TACBrNFSeProviderTiplan203.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proTributus: Result := TACBrNFSeProviderTributus204.Create(ACBrNFSe);

      proVersaTecnologia:
        begin
          case Versao of
            ve200: Result := TACBrNFSeProviderVersaTecnologia200.Create(ACBrNFSe);
            ve201: Result := TACBrNFSeProviderVersaTecnologia201.Create(ACBrNFSe);
            ve202: Result := TACBrNFSeProviderVersaTecnologia202.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;

      proVirtual: Result := TACBrNFSeProviderVirtual202.Create(ACBrNFSe);

      proWebFisco:
        Result := TACBrNFSeProviderWebFisco.Create(ACBrNFSe);

      proWebISS:
        begin
          case Versao of
            ve100: Result := TACBrNFSeProviderWebISS.Create(ACBrNFSe);
            ve202: Result := TACBrNFSeProviderWebISS202.Create(ACBrNFSe);
          else
            Result := nil;
          end;
        end;
    else
      Result := nil;
    end;
  end;
end;

end.
