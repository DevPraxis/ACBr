        ��  ��                  8� @   ��
 A C B R N F S E X S E R V I C O S       0         ; Campo Params tem a seguinte sintaxe:

;   Params=Chave1:Valor1[|Chave2:Valor2|Chave3:Valor31,Valor32...]

; Podemos ter 1 ou mais Chaves sepadas por "|"
; Toda Chave deve conter o caracter ":" no final
; Se a Chave for Booleana não precisa informar o seu valor, pois a presença desse tipo de Chave
; em Params já indica que o seu valor é True
; Se a Chave for string ou numerica devemos informar o seu valor
; A Chave poderá ter valores pré definidos (enumerados), caso venha ser informado um valor 
; diferente o mesmo será ignorado.
; A Chave poderá ter 1 ou mais valores que devem estar separados por virgula
 
; Chaves que podem ser utilizadas:

; AliasCidade é do tipo string (ex: AliasCidade:B_SJOSE)

; CodigoCidade é do tipo numerico (ex: CodigoCidade:23)

; Assinar é do tipo enumerados e seus valores possíveis são: 
;   AssRps, AssLoteRps, AssConsultarSituacao, AssConsultarLote, AssConsultarNFSeRps, 
;   AssConsultarNFSe, AssCancelarNFSe, AssRpsGerarNFSe, AssLoteGerarNFSe, AssRpsSubstituirNFSe, 
;   AssSubstituirNFSe, AssAbrirSessao e AssFecharSessao (ex: Assinar:AssRps)

; GerarTag é do tipo string (ex: GerarTag:ItemLei116)

; NaoGerarTag é do tipo string (ex: NaoGerarTag:ItemLei116)

; VersaoArquivo é do tipo numerico (ex: VersaoArquivo:2)

; VersaoImpressao é do tipo numerico (ex: VersaoImpressao:1)

; DataEmissao é do tipo enumerado e seus valores possíveis são:
;   Date e DateTime (ex: DataEmissao:Date)

; NaoDividir100 é do tipo Boolean
; Dividir100 é do tipo Boolean

; SolicitarCancelamento é do tipo Boolean

; NomeTagAtividadeEconomica é do tipo string (ex: NomeTagAtividadeEconomica:ItemLei116AtividadeEconomica)

; URLProducao é do tipo string (ex: URLProducao:nfse.cataguases.mg.gov.br)
; URLHomologacao é do tipo string (ex: URLHomologacao:homologacaocataguases.agilistecnologia.com.br)


; As seções abaixo se referem aos provedores que possuem
; URLs padronizadas para todas as cidades 

[Betha]
ProRecepcionar=https://e-gov.betha.com.br/e-nota-contribuinte-ws/recepcionarLoteRps
ProConsultarSituacao=https://e-gov.betha.com.br/e-nota-contribuinte-ws/consultarSituacaoLoteRps
ProConsultarLote=https://e-gov.betha.com.br/e-nota-contribuinte-ws/consultarLoteRps
ProConsultarNFSeRps=https://e-gov.betha.com.br/e-nota-contribuinte-ws/consultarNfsePorRps
ProConsultarNFSe=https://e-gov.betha.com.br/e-nota-contribuinte-ws/consultarNfse
ProCancelarNFSe=https://e-gov.betha.com.br/e-nota-contribuinte-ws/cancelarNfseV02
;
HomRecepcionar=https://e-gov.betha.com.br/e-nota-contribuinte-test-ws/recepcionarLoteRps
HomConsultarSituacao=https://e-gov.betha.com.br/e-nota-contribuinte-test-ws/consultarSituacaoLoteRps
HomConsultarLote=https://e-gov.betha.com.br/e-nota-contribuinte-test-ws/consultarLoteRps
HomConsultarNFSeRps=https://e-gov.betha.com.br/e-nota-contribuinte-test-ws/consultarNfsePorRps
HomConsultarNFSe=https://e-gov.betha.com.br/e-nota-contribuinte-test-ws/consultarNfse
HomCancelarNFSe=https://e-gov.betha.com.br/e-nota-contribuinte-test-ws/cancelarNfseV02

[Ginfes]
ProRecepcionar=https://producao.ginfes.com.br/ServiceGinfesImpl
;
HomRecepcionar=https://homologacao.ginfes.com.br/ServiceGinfesImpl

[Fiorilli]
HomRecepcionar=http://fi1.fiorilli.com.br:5663/IssWeb-ejb/IssWebWS/IssWebWS
HomLinkURL=http://fi1.fiorilli.com.br:5663/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[ISSNet]
HomRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/homologacao/servicos.asmx

[NFSeBrasil]
ProRecepcionar=http://nfsebrasil.net.br/nfse/ws/lote_rps_service.php
HomRecepcionar=http://web1.memory.com.br:81/nfse/ws/lote_rps_service.php

[Publica]
HomRecepcionar=http://nfse-teste.publica.inf.br/homologa_nfse_integracao/Services

[SimplISS]
HomRecepcionar=http://wshomologacao.simplissweb.com.br/nfseservice.svc
HomLinkURL=http://wshomologacao.simplissweb.com.br/nfseservice.svc

[ABase]
ProRecepcionar=http://nfse.abase.com.br/webservice/nfsews.asmx
HomRecepcionar=http://testenfse.abase.com.br/webservice/nfsews.asmx

[DataSmart]
ProRecepcionar=http://191.252.58.191:83/soap/INFSe
HomRecepcionar=http://191.252.58.191:83/soap/INFSe

[Coplan]
HomRecepcionar=https://www.gp.srv.br/tributario_homologacao/servlet/anfse_web_service
HomLinkURL=http://www.gp.srv.br/tributario_%NomeMunicipio%/servlet/tnfse_validacao?%CodVerif%

[Desenvolve]
HomRecepcionar=http://187.18.59.136:10022/nfsd/IntegracaoNfsd

[SafeWeb]
ProRecepcionar=https://nfse.safeweb.com.br/nfseprefeituras/webservices/NfseWebService.asmx
HomRecepcionar=https://nfse.safeweb.com.br/nfseprefeituras/webservices/NfseWebService.asmx

[SH3]
HomRecepcionar=https://homologamunicipio.nfiss.com.br/soap/

[Siam]
ProRecepcionar=http://ws.imap.org.br/siam/Nfse.svc
HomRecepcionar=http://ws.imap.org.br/siam/Nfse.svc

[TcheInfo]
ProRecepcionar=https://nfse.tcheinfo.com.br/TcheNFSePortal/servlet/com.tche.nfse.anfsewebservice
HomRecepcionar=https://nfse.tcheinfo.com.br/TcheNFSePortal/servlet/com.tche.nfse.anfsewebservice

[Equiplano]
ProRecepcionar=https://www.esnfs.com.br:8444/enfsws/services/Enfs
ProLinkURL=https://www.esnfs.com.br/esenfs.view.logic?aut=%CodVerif%
;
HomRecepcionar=https://www.esnfs.com.br:9443/homologacaows/services/Enfs
HomLinkURL=https://www.esnfs.com.br:9443/esenfs.view.logic?aut=%CodVerif%

[GeisWeb]
HomRecepcionar=https://www.geisweb.net.br/homologacao/modelo/webservice/GeisWebServiceImpl.php

[IPM]
ProRecepcionar=http://sync.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
HomRecepcionar=http://sync.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
;
ProLinkURL=http://sync.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%
HomLinkURL=http://sync.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%

; Se a cidade requer a passagem dos parâmetros: login, senha e f1: não incluir o campo Versao
; Se a cidade requer a passagem dos parâmetros: username, password deve-se incluir o campo Versao com o valor 1.01

[FISSLex]
HomRecepcionar=https://demo.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
HomConsultarSituacao=https://demo.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
HomConsultarLote=https://demo.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
HomConsultarNFSeRps=https://demo.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
HomConsultarNFSe=https://demo.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
HomCancelarNFSe=https://demo.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
HomLinkURL=https://demo.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[WebFisco]
ProRecepcionar=*
ProConsultarNFSe=https://www.webfiscotecnologia.com.br:443/issqn/wservice/wsnfeconsultaxml.php
ProCancelarNFSe=https://www.webfiscotecnologia.com.br:443/issqn/wservice/wsnfecancela.php
ProGerarNFSe=https://www.webfiscotecnologia.com.br:443/issqn/wservice/wsnfeenvia.php
;
HomRecepcionar=*
HomGerarNFSe=https://www.webfiscotecnologia.com.br:443/issqn/wservice/wsnfe_teste_homologacao.php

[FGMaiss]
ProRecepcionar=*
ProConsultarNFSe=https://www1.fgmaiss.com.br:443/issqn/wservice/wsnfeconsultaxml.php
ProCancelarNFSe=https://www1.fgmaiss.com.br:443/issqn/wservice/wsnfecancela.php
ProGerarNFSe=https://www1.fgmaiss.com.br:443/issqn/wservice/wsnfeenvia.php
;
HomRecepcionar=*
HomGerarNFSe=https://www1.fgmaiss.com.br:443/issqn/wservice/wsnfe_teste_homologacao.php

[Citta]
HomRecepcionar=http://citta.inf.br:888/nfse/services/nfseSOAP
;
HomLinkURL=http://citta.inf.br:888/nfse/api/public/documento/report/%CodVerif%

[CIGA]
ProRecepcionar=https://nfse.ciga.sc.gov.br/webservice/v1
HomRecepcionar=https://nfse-testes.ciga.sc.gov.br/webservice/v1

[Bauhaus]
HomRecepcionar=*
HomGerarNFSe=https://api-nfse-homologacao.prefeituramoderna.com.br/ws/services/gerar
HomConsultarNFSe=https://api-nfse-homologacao.prefeituramoderna.com.br/ws/services/consultar
HomCancelarNFSe=https://api-nfse-homologacao.prefeituramoderna.com.br/ws/services/cancelar
HomSubstituirNFSe=https://api-nfse-homologacao.prefeituramoderna.com.br/ws/services/substituir

[SpeedGov]
HomRecepcionar=http://speedgov.com.br/wsmod/Nfes




; Cidades atendidas pelo componente ACBrNFSeX

[3520004]
Nome=Igaracu do Tiete
UF=SP
Provedor=WebFisco

[3306008]
; Incluído em 15/06/2021
Nome=Tres Rios
UF=RJ
Provedor=FGMaiss

[3500105]
Nome=Adamantina
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://adamantina.4rtec.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://adamantina.4rtec.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://adamantina.4rtec.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://adamantina.4rtec.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://adamantina.4rtec.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://adamantina.4rtec.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://adamantina.4rtec.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://adamantina.4rtec.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://adamantina.4rtec.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://adamantina.4rtec.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3510203]
Nome=Capao Bonito
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://capaobonito.sistemas4r.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://capaobonito.sistemas4r.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://capaobonito.sistemas4r.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://capaobonito.sistemas4r.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://capaobonito.sistemas4r.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://capaobonito.sistemas4r.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://capaobonito.sistemas4r.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://capaobonito.sistemas4r.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://capaobonito.sistemas4r.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://capaobonito.sistemas4r.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3514403]
Nome=Dracena
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://187.17.201.221:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://187.17.201.221:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3522109]
Nome=Itanhaem
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://itanhaem.sistemas4r.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://itanhaem.sistemas4r.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://itanhaem.sistemas4r.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://itanhaem.sistemas4r.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://itanhaem.sistemas4r.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://itanhaem.sistemas4r.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://itanhaem.sistemas4r.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://itanhaem.sistemas4r.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://itanhaem.sistemas4r.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://itanhaem.sistemas4r.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3522307]
Nome=Itapetininga
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://itapetininga.sistemas4r.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://itapetininga.sistemas4r.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://itapetininga.sistemas4r.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://itapetininga.sistemas4r.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://itapetininga.sistemas4r.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://itapetininga.sistemas4r.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://itapetininga.sistemas4r.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://itapetininga.sistemas4r.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://itapetininga.sistemas4r.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://itapetininga.sistemas4r.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3523503]
Nome=Itatinga
UF=SP
Provedor=GeisWeb
Params=AliasCidade:itatinga
;
ProRecepcionar=https://www.geisweb.net.br/producao/itatinga/webservice/GeisWebServiceImpl.php

[3554003]
; Atualizado em 13/01/2022
Nome=Tatui
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://tatui.4rtec.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://tatui.4rtec.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://tatui.4rtec.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://tatui.4rtec.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://tatui.4rtec.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://tatui.4rtec.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://tatui.4rtec.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://tatui.4rtec.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://tatui.4rtec.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://tatui.4rtec.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3507001]
; Atualizado em 10/01/2022
Nome=Boituva
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=https://boituva.4rtec.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=https://boituva.4rtec.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=https://boituva.4rtec.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=https://boituva.4rtec.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=https://boituva.4rtec.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=https://boituva.4rtec.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=https://boituva.4rtec.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=https://boituva.4rtec.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://boituva.4rtec.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://boituva.4rtec.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3555109]
Nome=Tupi Paulista
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://tupipaulista.sistemas4r.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://tupipaulista.sistemas4r.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://tupipaulista.sistemas4r.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://tupipaulista.sistemas4r.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://tupipaulista.sistemas4r.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://tupipaulista.sistemas4r.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://tupipaulista.sistemas4r.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://tupipaulista.sistemas4r.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://tupipaulista.sistemas4r.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://tupipaulista.sistemas4r.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3540606]
Nome=Porto Feliz
UF=SP
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://54.94.43.142/nfse.portal.integracao/services.svc
HomRecepcionar=http://54.94.43.142/nfse.portal.integracao.teste/services.svc

[1200401]
Nome=Rio Branco
UF=AC
Provedor=Abaco
ProRecepcionar=https://nota.riobranco.ac.gov.br/servlet/arecepcionarloterps
ProConsultarSituacao=https://nota.riobranco.ac.gov.br/servlet/aconsultarsituacaoloterps
ProConsultarLote=https://nota.riobranco.ac.gov.br/servlet/aconsultarloterps
ProConsultarNFSeRps=https://nota.riobranco.ac.gov.br/servlet/aconsultarnfseporrps
ProConsultarNFSe=https://nota.riobranco.ac.gov.br/servlet/aconsultarnfse
ProCancelarNFSe=https://nota.riobranco.ac.gov.br/servlet/acancelarnfse
;
HomRecepcionar=https://homologa.e-nfs.com.br/riobranco/servlet/arecepcionarloterps
HomConsultarSituacao=https://homologa.e-nfs.com.br/riobranco/servlet/aconsultarsituacaoloterps
HomConsultarLote=https://homologa.e-nfs.com.br/riobranco/servlet/aconsultarloterps
HomConsultarNFSeRps=https://homologa.e-nfs.com.br/riobranco/servlet/aconsultarnfseporrps
HomConsultarNFSe=https://homologa.e-nfs.com.br/riobranco/servlet/aconsultarnfse
HomCancelarNFSe=https://homologa.e-nfs.com.br/riobranco/servlet/acancelarnfse
;
ProLinkURL=https://nota.riobranco.ac.gov.br/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%
HomLinkURL=https://homologa.e-nfs.com.br/riobranco/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%

[3201209]
; Atualizado em 14/09/2021
Nome=Cachoeiro do Itapemirim
UF=ES
Provedor=EL
Versao=2.04
ProRecepcionar=https://notafse-backend.cachoeiro.es.gov.br:443/nfse/NfseWSService
HomRecepcionar=http://nfsehomologacao.cachoeiro.es.gov.br:8188/nfse-cachoeirodeitapemirim-es/NfseWSService

[4304606]
Nome=Canoas
UF=RS
Provedor=Abaco
ProRecepcionar=https://www.e-nfs.com.br/e-nfs_canoas/servlet/arecepcionarloterps
ProConsultarSituacao=https://www.e-nfs.com.br/e-nfs_canoas/servlet/aconsultarsituacaoloterps
ProConsultarLote=https://www.e-nfs.com.br/e-nfs_canoas/servlet/aconsultarloterps
ProConsultarNFSeRps=https://www.e-nfs.com.br/e-nfs_canoas/servlet/aconsultarnfseporrps
ProConsultarNFSe=https://www.e-nfs.com.br/e-nfs_canoas/servlet/aconsultarnfse
ProCancelarNFSe=https://www.e-nfs.com.br/e-nfs_canoas/servlet/acancelarnfse
;
HomRecepcionar=https://homologa.e-nfs.com.br/canoas/servlet/arecepcionarloterps
HomConsultarSituacao=https://homologa.e-nfs.com.br/canoas/servlet/aconsultarsituacaoloterps
HomConsultarLote=https://homologa.e-nfs.com.br/canoas/servlet/aconsultarloterps
HomConsultarNFSeRps=https://homologa.e-nfs.com.br/canoas/servlet/aconsultarnfseporrps
HomConsultarNFSe=https://homologa.e-nfs.com.br/canoas/servlet/aconsultarnfse
HomCancelarNFSe=https://homologa.e-nfs.com.br/canoas/servlet/acancelarnfse
;
ProLinkURL=https://www.e-nfs.com.br/e-nfs_canoas/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%
HomLinkURL=https://homologa.e-nfs.com.br/canoas/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%

[5107008]
Nome=Poxoreu
UF=MT
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://poxoreu.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[5107040]
Nome=Primavera do Leste
UF=MT
Provedor=AssessorPublico
ProRecepcionar=http://s32.asp.srv.br:8080/issonline/servlet/anfse
HomRecepcionar=http://s32.asp.srv.br:8080/issonline-homolog/servlet/anfse

[5107602]
Nome=Rondonopolis
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=http://intranet.rondonopolis.mt.gov.br/tributario_rondonopolis/servlet/anfse_web_service

[3131307]
; Atualizado em 02/03/2022
Nome=Ipatinga
UF=MG
Provedor=SigCorp
Versao=2.03
ProRecepcionar=https://abrasfipatinga.sigbancos.com.br/servico.asmx
HomRecepcionar=https://testeabrasfipatinga.sigbancos.com.br/servico.asmx

[3138401]
Nome=Leopoldina
UF=MG
Provedor=Actcon
Versao=2.01
;
ProRecepcionar=https://nfeleopoldina.portalfacil.com.br/nfseserv/webservice/servicos
HomRecepcionar=https://nfeleopoldina.portalfacil.com.br/homologacao/webservice/servicos
;
ProXMLNameSpace=http://nfeleopoldina.portalfacil.com.br/nfseserv/schema/nfse_v201.xsd
HomXMLNameSpace=http://nfeleopoldina.portalfacil.com.br/homologacao/schema/nfse_v201.xsd
;
ProNameSpace=http://nfeleopoldina.portalfacil.com.br/nfseserv/webservice/nfse.wsdl
HomNameSpace=http://nfeleopoldina.portalfacil.com.br/homologacao/webservice/nfse.wsdl
;
ProSoapAction=http://nfeleopoldina.portalfacil.com.br/nfseserv/webservice/servicos#
HomSoapAction=http://nfeleopoldina.portalfacil.com.br/homologacao/webservice/servicos#

[3127701]
; Atualizado em 07/12/2021
Nome=Governador Valadares
UF=MG
Provedor=SigISS
ProRecepcionar=https://valadares.sigiss.com.br/valadares/ws/sigiss_ws.php
HomRecepcionar=https://testevaladares.sigiss.com.br/testevaladares/ws/sigiss_ws.php
;
ProSoapAction=urn:sigiss_ws

[3136702]
Nome=Juiz de Fora
UF=MG
Provedor=fintelISS
Versao=2.00
ProRecepcionar=https://nfse.pjf.mg.gov.br:4431/WebService.asmx
HomRecepcionar=https://nfse.homologacao.pjf.mg.gov.br:4432/WebService.asmx

[3167202]
; Atualizado em 29/12/2021
Nome=Sete Lagoas
UF=MG
Provedor=Actcon
Versao=2.02
Params=DataEmissao:Date
;
ProRecepcionar=https://nfsesetelagoas.portalfacil.com.br/nfseserv/webservice/servicos
HomRecepcionar=https://homologacaosetelagoas.portalfacil.com.br/homologacao/webservice/servicos
;
ProXMLNameSpace=http://nfsesetelagoas.portalfacil.com.br/nfseserv/schema/nfse_v202.xsd
HomXMLNameSpace=http://homologacaosetelagoas.portalfacil.com.br/homologacao/schema/nfse_v202.xsd
;
ProNameSpace=http://nfsesetelagoas.portalfacil.com.br/nfseserv/webservice/nfse.wsdl
HomNameSpace=http://homologacaosetelagoas.portalfacil.com.br/homologacao/webservice/nfse.wsdl
;
ProSoapAction=http://nfsesetelagoas.portalfacil.com.br/nfseserv/webservice/servicos#
HomSoapAction=http://homologacaosetelagoas.portalfacil.com.br/homologacao/webservice/servicos#

[3519600]
; Atualizado em 06/05/2021
Nome=Ibitinga
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://164.163.52.80:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://164.163.52.80:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[2108207]
Nome=Pedreiras
UF=MA
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://mapmpedreiras.dcfiorilli.com.br:1029/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://mapmpedreiras.dcfiorilli.com.br:1029/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3517406]
Nome=Guaira
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://186.211.16.210:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://186.211.16.210:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3548005]
Nome=Santo Antonio De Posse
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://177.36.128.42:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://177.36.128.42:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[5104807]
Nome=Jaciara
UF=MT
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://intranet.jaciara.mt.gov.br:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://intranet.jaciara.mt.gov.br:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3510302]
; Incluido em 10/01/2022
Nome=Capela do Alto
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://saopaulo1.dcfiorilli.com.br:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://saopaulo1.dcfiorilli.com.br:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4202305]
Nome=Biguacu
UF=SC
Provedor=Betha

[4202909]
Nome=Brusque
UF=SC
Provedor=IPM

[4203006]
; Atualizado em 09/09/2021
Nome=Cacador
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/cacador_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/cacador_nfse_integracao/Services

[4209706]
; Atualizado em 09/09/2021
Nome=Lebon Regis
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/lebonregis_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/nfse_integracao/Services

[4210803]
; Atualizado em 09/09/2021
Nome=Meleiro
UF=PR
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/meleiro_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/nfse_integracao/Services

[4212908]
Nome=Pinhalzinho
UF=SC
Provedor=IPM

[4204301]
Nome=Concordia
UF=SC
Provedor=IPM

[4320206]
; Atualizado em 19/09/2021
Nome=Seberi
UF=RS
Provedor=IPM
ProRecepcionar=http://sync-rs.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
HomRecepcionar=http://sync-rs.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
;
ProLinkURL=http://sync-rs.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%
HomLinkURL=http://sync-rs.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%

[5100201]
Nome=Agua Boa
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_aguaboa/servlet/anfse_web_service

[5107065]
Nome=Querencia
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_querencia/servlet/anfse_web_service

[5103353]
Nome=Confresa
UF=MT
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[5103502]
Nome=Diamantino
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_diamantino/servlet/anfse_web_service

[3106200]
Nome=Belo Horizonte
UF=MG
Provedor=BHISS
ProRecepcionar=https://bhissdigital.pbh.gov.br/bhiss-ws/nfse
HomRecepcionar=https://bhisshomologa.pbh.gov.br/bhiss-ws/nfse

[4314902]
Nome=Porto Alegre
UF=RS
Provedor=BHISS
ProRecepcionar=https://nfe.portoalegre.rs.gov.br/bhiss-ws/nfse
HomRecepcionar=https://nfse-hom.procempa.com.br/bhiss-ws/nfse

[5102637]
Nome=Campo Novo do Parecis
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_camponovodoparecis/servlet/anfse_web_service

[5102678]
Nome=Campo Verde
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_campoverde/servlet/anfse_web_service

[5103205]
Nome=Colider
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_colider/servlet/anfse_web_service

[5104104]
Nome=Guaranta Do Norte
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_guarantadonorte/servlet/anfse_web_service

[5104542]
Nome=Itanhanga
UF=MT
Provedor=WebISS
ProRecepcionar=https://www7.webiss.com.br/itanhangamt_wsnfse/NfseServices.svc
HomRecepcionar=https://www7.webiss.com.br/itanhangamt_wsnfse_homolog/NfseServices.svc

[5105606]
Nome=Matupa
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_matupa/servlet/anfse_web_service

[5105903]
; Atualizado em 08/12/2021
Nome=Nobres
UF=MT
Provedor=Agili
Params=NomeTagAtividadeEconomica:ItemLei116AtividadeEconomica|NaoGerarTag:ItemLei116
;
ProRecepcionar=https://agiliblue.agilicloud.com.br/api/EnviarLoteRps
ProConsultarLote=https://agiliblue.agilicloud.com.br/api/ConsultarLoteRps
ProConsultarNFSeRps=https://agiliblue.agilicloud.com.br/api/ConsultarNfseRps
ProConsultarNFSe=https://agiliblue.agilicloud.com.br/api/ConsultarNfseFaixa
ProCancelarNFSe=https://agiliblue.agilicloud.com.br/api/CancelarNfse
ProGerarNFSe=https://agiliblue.agilicloud.com.br/api/GerarNfse
ProSubstituirNFSe=https://agiliblue.agilicloud.com.br/api/SubstituirNfse
;
HomRecepcionar=
HomConsultarLote=
HomConsultarNFSeRps=
HomConsultarNFSe=
HomCancelarNFSe=
HomGerarNFSe=
HomSubstituirNFSe=

[5106208]
Nome=Nova Brasilandia
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_novabrasilandia/servlet/anfse_web_service

[5106224]
Nome=Nova Mutum
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_novamutum/servlet/anfse_web_service

[1505304]
Nome=Oriximina
UF=PA
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/oriximina/servicos.asmx

[5106307]
Nome=Paranatinga
UF=MT
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/paranatinga/servicos.asmx

[5106455]
Nome=Planalto da Serra
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_planaltodaserra/servlet/anfse_web_service

[5108006]
Nome=Tapurah
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_tapurah/servlet/anfse_web_service

[4300406]
Nome=Alegrete
UF=RS
Provedor=DBSeller
ProRecepcionar=http://nfse.alegrete.rs.gov.br/webservice/index/producao
HomRecepcionar=http://nfse.alegrete.rs.gov.br/webservice/index/homologacao
;
ProNameSpace=http://nfse.alegrete.rs.gov.br/webservice/index/producao
HomNameSpace=http://nfse.alegrete.rs.gov.br/webservice/index/homologacao

[4304705]
Nome=Carazinho
UF=RS
Provedor=DBSeller
ProRecepcionar=https://nfse.carazinho.rs.gov.br/webservice/index/producao
HomRecepcionar=https://nfse.carazinho.rs.gov.br/webservice/index/homologacao
;
ProNameSpace=https://nfse.carazinho.rs.gov.br/webservice/index/producao
HomNameSpace=https://nfse.carazinho.rs.gov.br/webservice/index/homologacao

[4305355]
Nome=Charqueadas
UF=RS
Provedor=DBSeller
ProRecepcionar=http://nfse.charqueadas.rs.gov.br/webservice/index/producao
HomRecepcionar=http://nfse.charqueadas.rs.gov.br:82/webservice/index/homologacao
;
ProNameSpace=http://nfse.charqueadas.rs.gov.br/webservice/index/producao
HomNameSpace=http://nfse.charqueadas.rs.gov.br:82/webservice/index/homologacao

[4319901]
Nome=Sapiranga
UF=RS
Provedor=DBSeller
ProRecepcionar=https://nfe.sapiranga.rs.gov.br/webservice/index/producao
HomRecepcionar=http://hom.nfe.sapiranga.rs.gov.br/webservice/index/homologacao
;
ProNameSpace=https://nfe.sapiranga.rs.gov.br/webservice/index/producao
HomNameSpace=http://hom.nfe.sapiranga.rs.gov.br/webservice/index/homologacao

[4321303]
; Atualizado em 08/03/2022
Nome=Taquari
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/taquari/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/taquari_homolog/nfse/ws/principal

[4321600]
Nome=Tramandai
UF=RS
Provedor=DBSeller
ProRecepcionar=http://nfse.tramandai.rs.gov.br/webservice/index/producao
HomRecepcionar=http://hom.nfse.tramandai.rs.gov.br/webservice/index/homologacao
;
ProNameSpace=http://nfse.tramandai.rs.gov.br/webservice/index/producao
HomNameSpace=http://hom.nfse.tramandai.rs.gov.br/webservice/index/homologacao

[4300505]
Nome=Alpestre
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/alpestre/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/alpestre_homolog/nfse/ws/principal

[4308508]
Nome=Frederico Westphalen
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/frederico/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/frederico_homolog/nfse/ws/principal

[4310009]
Nome=Ibiruba
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/ibiruba/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/ibiruba_homolog/nfse/ws/principal

[4314704]
Nome=Planalto
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/planalto/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/planalto_homolog/nfse/ws/principal

[4315909]
Nome=Rodeio Bonito
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/rodeiobonito/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/rodeiobonito_homolog/nfse/ws/principal

[3128006]
Nome=Guanhaes
UF=MG
Provedor=EL
ProRecepcionar=https://mg-guanhaes-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://mg-guanhaes-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://mg-guanhaes-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3201902]
Nome=Domingos Martins
UF=ES
Provedor=EL
ProRecepcionar=https://es-domingosmartins-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-domingosmartins-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-domingosmartins-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3202603]
Nome=Iconha
UF=ES
Provedor=EL
ProRecepcionar=https://es-iconha-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-iconha-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-iconha-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3204906]
Nome=Sao Mateus
UF=ES
Provedor=EL
ProRecepcionar=https://es-saomateus-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-saomateus-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-saomateus-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3203205]
; Atualizado em 03/12/2021
Nome=Linhares
UF=ES
Provedor=EL
ProRecepcionar=https://notafiscal.linhares.es.gov.br/el-nfse/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://notafiscal.linhares.es.gov.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://notafiscal.linhares.es.gov.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3201506]
Nome=Colatina
UF=ES
Provedor=EL
ProRecepcionar=https://es-colatina-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-colatina-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-colatina-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3203346]
Nome=Marechal Floriano
UF=ES
Provedor=EL
ProRecepcionar=https://es-marechalfloriano-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-marechalfloriano-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-marechalfloriano-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3117876]
Nome=Confins
UF=MG
Provedor=EL
ProRecepcionar=https://mg-confins-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://mg-confins-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://mg-confins-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3204559]
Nome=Santa Maria De Jetiba
UF=ES
Provedor=EL
ProRecepcionar=https://es-santamariadejetiba-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-santamariadejetiba-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-santamariadejetiba-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3534401]
; Atualizado em 08/02/2022
Nome=Osasco
UF=SP
Provedor=eGoverneISS
ProRecepcionar=https://nfe.osasco.sp.gov.br/EissnfeWebServices/NotaFiscalEletronica.svc
HomRecepcionar=https://nfe.osasco.sp.gov.br/EissnfeWebServices/NotaFiscalEletronica.svc

[4102307]
Nome=Balsa Nova
UF=PR
Provedor=Equiplano
Params=CodigoCidade:23

[4104501]
Nome=Capanema
UF=PR
Provedor=Equiplano
Params=CodigoCidade:50

[4124400]
; Incluído em 24/02/2022
Nome=Santo Antonio do Sudoeste
UF=PR
Provedor=Equiplano
Params=CodigoCidade:58

[4104659]
Nome=Carambei
UF=PR
Provedor=Equiplano
Params=CodigoCidade:141

[4107207]
Nome=Dois Vizinhos
UF=PR
Provedor=Equiplano
Params=CodigoCidade:68

[4125209]
Nome=Sao Jorge D Oeste
UF=PR
Provedor=Equiplano
Params=CodigoCidade:163

[4107736]
Nome=Fernandes Pinheiro
UF=PR
Provedor=Equiplano
Params=CodigoCidade:140

[4108403]
Nome=Francisco Beltrao
UF=PR
Provedor=Equiplano
Params=CodigoCidade:35

[4109807]
; Atualizado em 18/02/2022
Nome=Ibipora
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://ibipora.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[4120606]
Nome=Prudentopolis
UF=PR
Provedor=Equiplano
Params=CodigoCidade:28

[4122008]
Nome=Rio Azul
UF=PR
Provedor=Equiplano
Params=CodigoCidade:19

[4123501]
Nome=Santa Helena
UF=PR
Provedor=Equiplano
Params=CodigoCidade:54

[4126306]
Nome=Senges
UF=PR
Provedor=Equiplano
Params=CodigoCidade:61

[4127700]
Nome=Toledo
UF=PR
Provedor=Equiplano
Params=CodigoCidade:136

[4124806]
Nome=Sao Joao
Provedor=Equiplano
Params=CodigoCidade:0

[4119905]
Nome=Ponta Grossa
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://pontagrossa.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[1100114]
Nome=Jaru
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://200.203.144.20:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://200.203.144.20:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1100106]
Nome=Guajará-Mirim
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://179.252.20.236:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://179.252.20.236:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1100122]
Nome=Ji-Parana
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://177.124.184.59:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://177.124.184.59:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1508407]
; Atualizado em 29/06/2021
Nome=Xinguara
UF=PA
Provedor=ISSIntel
ProNameSpace=http://xinguara-pa.issintegra.com.br/webservices/abrasf/api
HomNameSpace=http://xinguara-pa.treino-issintegra.com.br/webservices/abrasf/api
;
ProRecepcionar=https://xinguara-pa.issintegra.com.br/webservices/abrasf/api
HomRecepcionar=https://xinguara-pa.treino-issintegra.com.br/webservices/abrasf/api
;
ProSoapAction=http://xinguara-pa.issintegra.com.br/webservices/abrasf/api/
HomSoapAction=http://xinguara-pa.treino-issintegra.com.br/webservices/abrasf/api/

[1600303]
; Atualizado em 04/03/2022
Nome=Macapa
UF=AP
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://macapa.govbr.cloud/NFSe.Portal.Integracao/services.svc
HomRecepcionar=

[2101202]
; Atualizado em 21/09/2021
Nome=Bacabal
UF=MA
Provedor=SigCorp
Versao=2.03
ProRecepcionar=https://abrasfbacabal.sigcorp.com.br/servico.asmx
HomRecepcionar=https://testeabrasfbacabal.sigcorp.com.br/servico.asmx

[2103000]
Nome=Caxias
UF=MA
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://177.105.209.118:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://177.105.209.118:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3504503]
Nome=Avare
UF=SP
Provedor=SigCorp
Versao=2.03
ProRecepcionar=http://abrasfavare.sigbancos.com.br/servico.asmx
HomRecepcionar=http://abrasfavareteste.sigbancos.com.br/servico.asmx

[3504800]
Nome=Balsamo
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://201.28.69.146:5663/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://201.28.69.146:5663/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3505203]
Nome=Bariri
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://sipweb.bariri.sp.gov.br:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://sipweb.bariri.sp.gov.br:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3533502]
Nome=Novo Horizonte
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://nfews.novohorizonte.sp.gov.br/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://nfews.novohorizonte.sp.gov.br/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3512902]
Nome=Cosmorama
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://189.111.140.145:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://189.111.140.145:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3514502]
Nome=Duartina
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://186.224.0.62:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://186.224.0.62:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3515509]
Nome=Fernandopolis
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://servicos.fernandopolis.sp.gov.br:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://servicos.fernandopolis.sp.gov.br:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3516705]
; Atualizado em 28/01/2022
Nome=Garca
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://179.96.132.27:2014/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://179.96.132.27:2014/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3518206]
Nome=Guararapes
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://177.154.46.80:5657/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://177.154.46.80:5657/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3519303]
Nome=Ibate
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://200.205.131.110:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://200.205.131.110:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3520103]
Nome=Igarapava
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://138.117.189.204:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://138.117.189.204:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3540200]
Nome=Pontal
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://45.71.128.162:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://45.71.128.162:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3549409]
Nome=Sao Joaquim Da Barra
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://187.72.128.113:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://187.72.128.113:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3551603]
Nome=Serra Negra
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://intra.serranegra.sp.gov.br/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://intra.serranegra.sp.gov.br/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3547700]
Nome=Santo Anastacio
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://189.124.85.57:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://189.124.85.57:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3501806]
Nome=Americo de Campos
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://189.108.31.114:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://189.108.31.114:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3555000]
Nome=Tupa
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wstupa.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wstupa.simplissweb.com.br/nfseservice.svc

[3130101]
Nome=Igarape
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/igarape
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/igarape

[3130309]
; Atualizado em 06/10/2021
Nome=Iguatama
UF=MG
Provedor=Governa
Params=VersaoArquivo:1|VersaoImpressao:3
;
ProRecepcionar=http://187.94.253.198/webservice/esiat.asmx

[4126504]
Nome=Sertanopolis
UF=PR
Provedor=SimplISS
ProRecepcionar=http://wssertanopolis.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wssertanopolis.simplissweb.com.br/nfseservice.svc

[1100304]
Nome=Vilhena
UF=RO
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://vilhenaro.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://vilhenaro.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[5102504]
Nome=Caceres
UF=MT
Provedor=FISSLex
ProRecepcionar=https://caceres.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://caceres.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://caceres.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://caceres.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://caceres.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://caceres.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://caceres.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[5103007]
Nome=Chapada dos Guimaraes
UF=MT
Provedor=FISSLex
ProRecepcionar=https://chapada.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://chapada.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://chapada.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://chapada.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://chapada.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://chapada.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://chapada.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[5104559]
Nome=Itauba
UF=MT
Provedor=FISSLex
ProRecepcionar=https://itauba.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://itauba.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://itauba.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://itauba.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://itauba.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://itauba.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://itauba.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[5104609]
; Atualizado em 11/06/2021
Nome=Itiquira
UF=MT
Provedor=Betha

[5105150]
; Atualizado em 08/12/2021
Nome=Juina
UF=MT
Provedor=Agili
Params=NomeTagAtividadeEconomica:ItemLei116AtividadeEconomica|NaoGerarTag:ItemLei116,CodigoCnae
;
ProRecepcionar=https://agiliblue.agilicloud.com.br/api/EnviarLoteRps
ProConsultarLote=https://agiliblue.agilicloud.com.br/api/ConsultarLoteRps
ProConsultarNFSeRps=https://agiliblue.agilicloud.com.br/api/ConsultarNfseRps
ProConsultarNFSe=https://agiliblue.agilicloud.com.br/api/ConsultarNfseFaixa
ProCancelarNFSe=https://agiliblue.agilicloud.com.br/api/CancelarNfse
ProGerarNFSe=https://agiliblue.agilicloud.com.br/api/GerarNfse
ProSubstituirNFSe=https://agiliblue.agilicloud.com.br/api/SubstituirNfse
;
HomRecepcionar=
HomConsultarLote=
HomConsultarNFSeRps=
HomConsultarNFSe=
HomCancelarNFSe=
HomGerarNFSe=
HomSubstituirNFSe=

[5107248]
Nome=Santa Carmen
UF=MT
Provedor=FISSLex
ProRecepcionar=https://santacarmen.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://santacarmen.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://santacarmen.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://santacarmen.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://santacarmen.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://santacarmen.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://santacarmen.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[5107800]
Nome=Santo Antonio do Leverger
UF=MT
Provedor=FISSLex
ProRecepcionar=https://leverger.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://leverger.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://leverger.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://leverger.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://leverger.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://leverger.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://leverger.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[5107875]
Nome=Sapezal
UF=MT
Provedor=Betha

[5102702]
; Atualizado em 24/01/2022
Nome=Canarana
UF=MT
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[5107909]
Nome=Sinop
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_sinop/servlet/anfse_web_service

[1302603]
Nome=Manaus
UF=AM
Provedor=Abaco
Versao=1.01
ProRecepcionar=https://nfse-prd.manaus.am.gov.br/nfse/servlet/arecepcionarloterps
ProConsultarSituacao=https://nfse-prd.manaus.am.gov.br/nfse/servlet/aconsultarsituacaoloterps
ProConsultarLote=https://nfse-prd.manaus.am.gov.br/nfse/servlet/aconsultarloterps
ProConsultarNFSeRps=https://nfse-prd.manaus.am.gov.br/nfse/servlet/aconsultarnfseporrps
ProConsultarNFSe=https://nfse-prd.manaus.am.gov.br/nfse/servlet/aconsultarnfse
ProCancelarNFSe=https://nfse-prd.manaus.am.gov.br/nfse/servlet/acancelarnfse
;
HomRecepcionar=https://nfsev-prd.manaus.am.gov.br/nfsev/servlet/arecepcionarloterps
HomConsultarSituacao=https://nfsev-prd.manaus.am.gov.br/nfsev/servlet/aconsultarsituacaoloterps
HomConsultarLote=https://nfsev-prd.manaus.am.gov.br/nfsev/servlet/aconsultarloterps
HomConsultarNFSeRps=https://nfsev-prd.manaus.am.gov.br/nfsev/servlet/aconsultarnfseporrps
HomConsultarNFSe=https://nfsev-prd.manaus.am.gov.br/nfsev/servlet/aconsultarnfse
HomCancelarNFSe=https://nfsev-prd.manaus.am.gov.br/nfsev/servlet/acancelarnfse
;
ProLinkURL=https://nfse-prd.manaus.am.gov.br/nfse/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%
HomLinkURL=https://nfsev-prd.manaus.am.gov.br/nfsev/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%

[1500800]
Nome=Ananindeua
UF=PA
Provedor=Ginfes
;
ProLinkURL=http://ananindeua.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://ananindeua.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[1505536]
; Atualizado em 19/07/2021
Nome=Parauapebas
UF=PA
Provedor=Desenvolve
Versao=2.03
ProRecepcionar=https://parauapebas.desenvolvecidade.com.br/nfsd/IntegracaoNfsd
HomRecepcionar=https://hml-04-parauapebas.desenvolvecidade.com.br/nfsd/IntegracaoNfsd

[1506807]
; Atualizado em 08/02/2022
Nome=Santarem
UF=PA
Provedor=SiapSistemas
Versao=2.03
Params=AliasCidade:Santarem
;
ProRecepcionar=https://santarem.siapsistemas.com.br/rps/servlet/arecepcionarloterps
ProConsultarLote=https://santarem.siapsistemas.com.br/rps/servlet/aconsultarloterps
ProCancelarNFSe=https://santarem.siapsistemas.com.br/rps/servlet/acancelarnfse
ProGerarNFSe=https://santarem.siapsistemas.com.br/rps/servlet/agerarnfse
ProRecepcionarSincrono=https://santarem.siapsistemas.com.br/rps/servlet/arecepcionarloterpssincrono
;
HomRecepcionar=https://santarem.siapsistemas.com.br/rpshomologa/servlet/arecepcionarloterps
HomConsultarLote=https://santarem.siapsistemas.com.br/rpshomologa/servlet/aconsultarloterps
HomCancelarNFSe=https://santarem.siapsistemas.com.br/rpshomologa/servlet/acancelarnfse
HomGerarNFSe=https://santarem.siapsistemas.com.br/rpshomologa/servlet/agerarnfse
HomRecepcionarSincrono=https://santarem.siapsistemas.com.br/rpshomologa/servlet/arecepcionarloterpssincrono

[2304103]
Nome=Crateus
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wscra/Nfes

[2304285]
Nome=Eusebio
UF=PA
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wseus/Nfes

[2304400]
Nome=Fortaleza
UF=CE
Provedor=ISSFortaleza
ProRecepcionar=https://iss.fortaleza.ce.gov.br/grpfor-iss/ServiceGinfesImplService
HomRecepcionar=http://isshomo.sefin.fortaleza.ce.gov.br/grpfor-iss/ServiceGinfesImplService
;
ProLinkURL=http://fortaleza.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://fortaleza.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[2513653]
Nome=Santarem
UF=PB
Provedor=Ginfes
;
ProLinkURL=http://santarem.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://santarem.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[2604106]
Nome=Caruaru
UF=PE
Provedor=Ginfes
;
ProLinkURL=http://caruaru.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://caruaru.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[2700300]
Nome=Arapiraca
UF=AL
Provedor=Abaco
ProRecepcionar=https://www.e-nfs.com.br/arapiraca/servlet/arecepcionarloterps
ProConsultarSituacao=https://www.e-nfs.com.br/arapiraca/servlet/aconsultarsituacaoloterps
ProConsultarLote=https://www.e-nfs.com.br/arapiraca/servlet/aconsultarloterps
ProConsultarNFSeRps=https://www.e-nfs.com.br/arapiraca/servlet/aconsultarnfseporrps
ProConsultarNFSe=https://www.e-nfs.com.br/arapiraca/servlet/aconsultarnfse
ProCancelarNFSe=https://www.e-nfs.com.br/arapiraca/servlet/acancelarnfse
;
HomRecepcionar=https://enfs-hom.abaco.com.br/arapiraca/servlet/arecepcionarloterps
HomConsultarSituacao=https://enfs-hom.abaco.com.br/arapiraca/servlet/aconsultarsituacaoloterps
HomConsultarLote=https://enfs-hom.abaco.com.br/arapiraca/servlet/aconsultarloterps
HomConsultarNFSeRps=https://enfs-hom.abaco.com.br/arapiraca/servlet/aconsultarnfseporrps
HomConsultarNFSe=https://enfs-hom.abaco.com.br/arapiraca/servlet/aconsultarnfse
HomCancelarNFSe=https://enfs-hom.abaco.com.br/arapiraca/servlet/acancelarnfse
;
ProLinkURL=https://www.e-nfs.com.br/arapiraca/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%
HomLinkURL=https://enfs-hom.abaco.com.br/arapiraca/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%

[2704302]
Nome=Maceio
UF=AL
Provedor=Ginfes
;
ProLinkURL=http://maceio.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://maceio.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[2704708]
Nome=Marechal Deodoro
UF=AL
Provedor=Ginfes
;
ProLinkURL=http://marechaldeodoro.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://marechaldeodoro.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[2933307]
Nome=Vitoria da Conquista
UF=BA
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/vitoriadaconquistaba_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/vitoriadaconquistaba_wsnfse_homolog/NfseServices.svc

[3104007]
Nome=Araxa
UF=MG
Provedor=Governa
Params=VersaoArquivo:4|VersaoImpressao:5
;
ProRecepcionar=http://201.62.57.11:9090/WebServicearaxa/esiat.asmx

[3106705]
Nome=Betim
UF=MG
Provedor=Ginfes
;
ProLinkURL=http://betim.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://betim.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3115300]
Nome=Cataguases
UF=MG
Provedor=VersaTecnologia
Versao=2.02
Params=URLProducao:nfse.cataguases.mg.gov.br|URLHomologacao:homologacaocataguases.agilistecnologia.com.br
;
ProRecepcionar=http://nfse.cataguases.mg.gov.br/webservices/2.02/servicos
HomRecepcionar=http://homologacaocataguases.agilistecnologia.com.br/webservices/2.02/servicos
;
ProNameSpace=http://nfse.cataguases.mg.gov.br/webservices/2.02/nfse_v202.xsd
HomNameSpace=http://homologacaocataguases.agilistecnologia.com.br/webservices/2.02/nfse_v202.xsd
;
ProXMLNameSpace=http://nfse.cataguases.mg.gov.br/webservices/2.02/nfse_v202.xsd
HomXMLNameSpace=http://nfse.cataguases.mg.gov.br/webservices/2.02/nfse_v202.xsd

[3117504]
Nome=Conceicao do Mato Dentro
UF=MG
Provedor=Ginfes
;
ProLinkURL=http://conceicaodomatodentro.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://conceicaodomatodentro.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3131703]
Nome=Itabira
UF=MG
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://servicosweb.itabira.mg.gov.br:90/nfse.portal.integracao/services.svc
HomRecepcionar=http://servicosweb.itabira.mg.gov.br:90/nfse.portal.integracao.teste/services.svc

[4109401]
; Atualizado em 31/08/2021
Nome=Guarapuava
UF=PR
Provedor=IPM
Versao=1.01
ProRecepcionar=https://guarapuava.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao
HomRecepcionar=https://migracao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=treina_guarapuava_integracao

[4206652]
Nome=Guatambu
UF=SC
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://177.10.167.82/nfse.portal.integracao/services.svc
HomRecepcionar=http://177.10.167.82/nfse.portal.integracao.teste/services.svc

[4204707]
Nome=Cunha Pora
UF=SC
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://189.126.52.82:3341/nfse.portal.integracao/services.svc
HomRecepcionar=http://189.126.52.82:3341/nfse.portal.integracao.teste/services.svc

[4308904]
Nome=Getulio Vargas
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://sistemaspmgv.no-ip.info:8083/nfse.portal.integracao/services.svc
HomRecepcionar=http://sistemaspmgv.no-ip.info:8083/nfse.portal.integracao.teste/services.svc

[4311809]
Nome=Marau
UF=RS
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://nfse.pmmarau.com.br:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://nfse.pmmarau.com.br:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4321006]
Nome=Tapera
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://177.22.94.131:8081/nfse.portal.integracao/services.svc
HomRecepcionar=http://177.22.94.131:8081/nfse.portal.integracao.teste/services.svc

[4323002]
; Atualizado em 21/09/2021
Nome=Viamao
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://viamao-portais.govcloud.com.br/NFSe.portal.integracao/services.svc
HomRecepcionar=http://viamao-portais.govcloud.com.br/NFSe.portal.integracao.teste/services.svc

[4313201]
Nome=Nova Petropolis
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://186.195.18.22:8484/nfse.portal.integracao/services.svc
HomRecepcionar=http://186.195.18.18:33894/nfse.portal.integracao.teste/services.svc

[3137601]
Nome=Lagoa Santa
UF=MG
Provedor=Ginfes
;
ProLinkURL=http://lagoasanta.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://lagoasanta.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3143906]
Nome=Muriae
UF=MG
Provedor=Ginfes
;
ProLinkURL=http://muriae.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://muriae.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3145604]
Nome=Oliveira
UF=MG
Provedor=IPM

[3147105]
; Atualizado em 12/01/2022
Nome=Para de Minas
UF=MG
Provedor=ISSDigital
Versao=2.00
ProRecepcionar=https://parademinas.quasar.srv.br:8444/nfe/snissdigitalsvc
HomRecepcionar=

[3152501]
Nome=Pouso Alegre
UF=MG
Provedor=SigCorp
Versao=2.03
ProRecepcionar=http://abrasfpousoalegre.sigcorp.com.br/servico.asmx
HomRecepcionar=http://testeabrasfpousoalegre.sigcorp.com.br/servico.asmx

[3154606]
; Atualizado em 23/06/2021
Nome=Ribeirao das Neves
UF=MG
Provedor=ISSDigital
Versao=2.00
ProRecepcionar=http://ribeirao.supernova.com.br:8093/nfe/snissdigitalsvc
HomRecepcionar=

[3156700]
Nome=Sabara
UF=MG
Provedor=ISSDigital
Versao=2.00
ProRecepcionar=http://sabara.supernova.com.br:8091/nfe/snissdigitalsvc
HomRecepcionar=

[3156908]
; Atualizado em 11/06/2021
Nome=Sacramento
UF=MG
Provedor=Betha

[3169901]
Nome=Uba
UF=MG
Provedor=VersaTecnologia
Versao=2.01
Params=URLProducao:nfe.uba.mg.gov.br|URLHomologacao:homologacaouba.versatecnologia.com.br
;
ProRecepcionar=http://nfe.uba.mg.gov.br/webservice/servicos
HomRecepcionar=http://homologacaouba.versatecnologia.com.br/webservice/servicos
;
ProNameSpace=http://nfe.uba.mg.gov.br/webservice/schema/nfse_v201.xsd
HomNameSpace=http://homologacaouba.versatecnologia.com.br/webservice/schema/nfse_v201.xsd
;
ProXMLNameSpace=http://nfe.uba.mg.gov.br/schema/nfse_v201.xsd
HomXMLNameSpace=http://nfe.uba.mg.gov.br/schema/nfse_v201.xsd

[3170701]
Nome=Varginha
UF=MG
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/mg.varginha/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/mg.varginha/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/mg.varginha/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/mg.varginha/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[3300456]
Nome=Belford Roxo
UF=RJ
Provedor=ModernizacaoPublica
Versao=2.02
ProRecepcionar=http://sis-nfse.prefeituradebelfordroxo.rj.gov.br:8052/nfe/webservices/NFEServices.jws
HomRecepcionar=http://notabelford.modernizacaopublica.com.br:8054/homologacao/webservices/NFEServices.jws

[3301009]
Nome=Campos dos Goytacazes
UF=RJ
Provedor=Ginfes
;
ProLinkURL=http://camposdosgoytacazes.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://camposdosgoytacazes.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3301900]
Nome=Itaborai
UF=RJ
Provedor=Ginfes
;
ProLinkURL=http://itaborai.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://itaborai.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3302700]
Nome=Marica
UF=RJ
Provedor=Ginfes
;
ProLinkURL=http://marica.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://marica.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3304300]
; Atualizado em 11/06/2021
Nome=Rio Bonito
UF=RJ
Provedor=Betha

[3501905]
; Atualizado em 20/08/2021
Nome=Amparo
UF=SP
Provedor=Giap
ProRecepcionar=http://webservice.giap.com.br/WSNfsesAmparo/nfseresources/ws/v2/emissao
ProConsultarNFSeRps=http://webservice.giap.com.br/WSNfsesAmparo/nfseresources/ws/consulta
ProCancelarNFSe=http://webservice.giap.com.br/WSNfsesAmparo/nfseresources/ws/v2/cancela
;
HomRecepcionar=http://webservice.giap.com.br/WSNfsesAmparo/nfseresources/ws/v2/emissao/simula
HomConsultarNFSeRps=http://webservice.giap.com.br/WSNfsesAmparo/nfseresources/ws/consulta
HomCancelarNFSe=http://webservice.giap.com.br/WSNfsesAmparo/nfseresources/ws/v2/cancela

[3503208]
Nome=Araraquara
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://araraquara.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://araraquara.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3506359]
Nome=Bertioga
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://bertioga.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://bertioga.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3510401]
Nome=Capivari
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://capivari.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://capivari.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3511300]
Nome=Cedral
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://187.120.209.20:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://187.120.209.20:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3512001]
Nome=Colina
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://colina.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://colina.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3513009]
Nome=Cotia
UF=SP
Provedor=Giap
ProRecepcionar=http://webservice.giap.com.br/WSNfsesCotia/nfseresources/ws/v2/emissao
ProConsultarNFSeRps=http://webservice.giap.com.br/WSNfsesCotia/nfseresources/ws/consulta
ProCancelarNFSe=http://webservice.giap.com.br/WSNfsesCotia/nfseresources/ws/v2/cancela
;
HomRecepcionar=http://webservice.giap.com.br/WSNfsesCotia/nfseresources/ws/v2/emissao/simula
HomConsultarNFSeRps=http://webservice.giap.com.br/WSNfsesCotia/nfseresources/ws/consulta
HomCancelarNFSe=http://webservice.giap.com.br/WSNfsesCotia/nfseresources/ws/v2/cancela

[3513801]
Nome=Diadema
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://diadema.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://diadema.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3516200]
Nome=Franca
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://franca.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://franca.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3518305]
Nome=Guararema
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://guararema.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://guararema.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3518701]
Nome=Guaruja
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://guaruja.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://guaruja.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3518800]
Nome=Guarulhos
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://guarulhos.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://guarulhos.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3519071]
Nome=Hortolandia
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://hortolandia.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://hortolandia.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3523909]
Nome=Itu
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://itu.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://itu.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3525102]
Nome=Jardinopolis
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://jardinopolis.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://jardinopolis.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3525300]
Nome=Jau
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.jahu/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.jahu/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.jahu/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.jahu/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[3539301]
Nome=Pirassununga
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.pirassununga/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.pirassununga/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.pirassununga/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.pirassununga/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[3539806]
Nome=Poa
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.poa'/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.poa/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.poa/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.poa/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[3525904]
Nome=Jundiai
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://jundiai.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://jundiai.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3529401]
Nome=Maua
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://maua.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://maua.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3530508]
; Atualizado em 11/06/2021
Nome=Mococa
UF=SP
Provedor=Betha

[3533908]
Nome=Olimpia
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://visualizar.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://visualizar.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3536505]
Nome=Paulinia
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://paulinia.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://paulinia.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3538006]
; Atualizado em 10/01/2022
Nome=Pindamonhangaba
UF=SP
Provedor=SiapNet
Versao=2.00
ProRecepcionar=https://siapegov.pindamonhangaba.sp.gov.br/pmpinda/issonline/ws/index.php
HomRecepcionar=

[3540705]
Nome=Porto Ferreira
UF=SP
Provedor=Ginfes
ProLinkURL=http://portoferreira.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://portoferreira.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3542602]
Nome=Registro
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://registro.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://registro.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3543303]
Nome=Ribeirao Pires
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://ribeiraopires.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://ribeiraopires.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3543402]
Nome=Ribeirao Preto
UF=SP
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/ribeiraopreto/servicos.asmx

[3543907]
Nome=Rio Claro
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://rioclaro.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://rioclaro.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3545209]
Nome=Salto
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://salto.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://salto.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3547809]
Nome=Santo Andre
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://santoandre.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://santoandre.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3548500]
Nome=Santos
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://santos.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://santos.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3548708]
Nome=Sao Bernardo do Campos
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://saobernadodocampos.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://saobernadodocampos.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3548807]
Nome=Sao Caetano do Sul
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://saocaetanodosul.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://saocaetanodosul.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3548906]
; Atualizado em 27/01/2022
Nome=Sao Carlos
UF=SP
Provedor=Giap
ProRecepcionar=http://webservice.giap.com.br/WSNfsesScarlos02/nfseresources/ws/v2/emissao
ProConsultarNFSeRps=http://webservice.giap.com.br/WSNfsesScarlos02/nfseresources/ws/consulta
ProCancelarNFSe=http://webservice.giap.com.br/WSNfsesScarlos02/nfseresources/ws/v2/cancela
;
HomRecepcionar=http://webservice.giap.com.br/WSNfsesScarlos02/nfseresources/ws/v2/emissao/simula
HomConsultarNFSeRps=http://webservice.giap.com.br/WSNfsesScarlos02/nfseresources/ws/consulta
HomCancelarNFSe=http://webservice.giap.com.br/WSNfsesScarlos02/nfseresources/ws/v2/cancela

[3549805]
Nome=Sao Jose do Rio Preto
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://saojosedoriopreto.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://saojosedoriopreto.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3549904]
; Atualizado em 24/01/2022
Nome=Sao Jose dos Campos
UF=SP
Provedor=DSF
ProRecepcionar=https://notajoseense.sjc.sp.gov.br/notafiscal-ws/NotaFiscalSoap
HomRecepcionar=https://homol-notajoseense.sjc.sp.gov.br/notafiscal-ws/NotaFiscalSoap

[3550605]
Nome=Sao Roque
UF=SP
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/saoRoque
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/saoRoque

[3550704]
; Atualizado em 30/04/2021
Nome=Sao Sebastiao
UF=SP
Provedor=iiBrasil
Versao=2.04
ProRecepcionar=https://api.iibr.com.br/3550704/1/soap/producao/rps
HomRecepcionar=https://api.iibr.com.br/3550704/1/soap/homologacao/rps

[3552502]
Nome=Suzano
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://suzano.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://suzano.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[3553708]
; Atualizado em 19/07/2021
Nome=Taquaritinga
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.taquaritinga/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.taquaritinga/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.taquaritinga/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.taquaritinga/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[3557105]
; Atualizado em 18/09/2021
Nome=Votuporanga
UF=SP
Provedor=RLZ
ProRecepcionar=https://web.votuporanga.sp.gov.br/amfphp/services/RLZ/webservice/server.php
HomRecepcionar=http://votuporanga.prefeitura.rlz.com.br/webservices/nfse/server.php

[4118204]
Nome=Paranagua
UF=PR
Provedor=IPM

[4128104]
Nome=Umuarama
UF=PR
Provedor=Ginfes
;
ProLinkURL=http://umuarama.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://umuarama.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[4202404]
Nome=Blumenau
UF=SC
Provedor=SimplISS
Versao=2.03
;
ProRecepcionar=https://wsblumenau1.simplissweb.com.br/nfseservice.svc
HomRecepcionar=https://wshomologacaoabrasf1.simplissweb.com.br/nfseservice.svc
;
ProSoapAction=http://www.sistema.com.br/Sistema.Ws.Nfse
HomSoapAction=http://nfse.abrasf.org.br

[4309308]
Nome=Guaiba
UF=RS
Provedor=IPM

[4314407]
; Atualizado em 26/10/2021
Nome=Pelotas
UF=RS
Provedor=Asten
Versao=2.02
ProRecepcionar=https://ws.pelotas.rs.gov.br/wsnfse/NfseWSISAPI.dll/soap/INfse
HomRecepcionar=https://wshomo.pelotas.rs.gov.br/wsnfse/NfseWSISAPI.dll/soap/INfse

[5220454]
Nome=Senador Canedo
UF=GO
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://canedo.bsit-br.com.br/integracao/services/nfseWS
HomRecepcionar=

[5208707]
Nome=Goiania
UF=GO
Provedor=ISSGoiania
Versao=2.00
ProRecepcionar=https://nfse.goiania.go.gov.br/ws/nfse.asmx
HomRecepcionar=
ProLinkURL=http://www2.goiania.go.gov.br/sistemas/snfse/asp/snfse00200w0.asp?inscricao=%InscMunic%&nota=%NumeroNFSe%&verificador=%CodVerif%
HomLinkURL=http://www2.goiania.go.gov.br/sistemas/snfse/asp/snfse00200w0.asp?inscricao=%InscMunic%&nota=%NumeroNFSe%&verificador=%CodVerif%

[3541505]
; Atualizado em 03/05/2021
Nome=Presidente Venceslau
UF=SP
Provedor=AssessorPublico
ProRecepcionar=http://mail.presidentevenceslau.sp.gov.br:8083/issonline/servlet/anfse
HomRecepcionar=https://s1.asp.srv.br/issonline-homolog/servlet/anfse

[4101408]
Nome=Apucarana
UF=PR
Provedor=Pronim
ProRecepcionar=http://cetil.apucarana.pr.gov.br/NFSEWS/Services.svc
HomRecepcionar=http://cetil.apucarana.pr.gov.br/NFSEWSTESTE/Services.svc

[4318309]
Nome=Sao Gabriel
UF=RS
Provedor=GovBR
ProRecepcionar=http://191.36.145.163/nfsews/services.svc
HomRecepcionar=http://191.36.145.163/nfsewsteste/services.svc

[4321709]
Nome=Tres Coroas
UF=RS
Provedor=Pronim
ProRecepcionar=http://nfse.pmtcoroas.com.br/nfsews/Services.svc
HomRecepcionar=http://nfseteste.pmtcoroas.com.br/nfsewsteste/Services.svc

[4302808]
Nome=Cacapava do Sul
UF=RS
Provedor=Pronim
ProRecepcionar=http://200.237.90.22:8082/nfsews/Services.svc
HomRecepcionar=http://200.237.90.22:8082/nfsewsteste/Services.svc

[4101804]
Nome=Araucaria
UF=PR
Provedor=IPM

[4108304]
Nome=Foz Do Iguacu
UF=PR
Provedor=Lexsom
ProRecepcionar=http://nfse.pmfi.pr.gov.br/nfsews/nfse.asmx
HomRecepcionar=http://homologa.nfse.pmfi.pr.gov.br/nfsews/nfse.asmx

[3118601]
Nome=Contagem
UF=MG
Provedor=Ginfes
;
ProLinkURL=http://contagem.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://contagem.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[4314423]
Nome=Picada Cafe
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=https://picadacafe-portais.govcloud.com.br/nfse.portal.integracao/services.svc
HomRecepcionar=https://picadacafe-portais.govcloud.com.br/nfse.portal.integracao.teste/services.svc

[3143302]
; Atualizado em 29/11/2021
Nome=Montes Claros
UF=MG
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://nota.montesclaros.mg.gov.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://notateste.montesclaros.mg.gov.br/nfse.portal.integracao.teste/services.svc

[3164704]
Nome=Sao Sebastiao do Paraiso
UF=MG
Provedor=eReceita
Versao=2.02
ProRecepcionar=http://webservice.ereceita.net.br/ws/ssparaiso/wsProducao.php
HomRecepcionar=http://webservice.ereceita.net.br/ws/ssparaiso/wsHomologacao.php
;
ProLinkURL=http://server21.ssparaiso.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.ssparaiso.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[3302205]
; Atualizado em 08/03/2022
Nome=Itaperuna
UF=RJ
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://18.230.147.90/nfse.portal.integracao/services.svc
HomRecepcionar=http://18.230.147.90/nfse.portal.integracao.teste/services.svc

[3202405]
Nome=Guarapari
UF=ES
Provedor=SmarAPD
ProRecepcionar=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSEntrada
ProConsultarSituacao=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSEntrada
ProConsultarLote=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSSaida
ProConsultarNFSeRps=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSSaida
ProConsultarNFSe=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSSaida
ProCancelarNFSe=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSEntrada
ProGerarNFSe=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSEntrada
ProRecepcionarSincrono=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSEntrada
ProSubstituirNFSe=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/services/WSEntrada
;
HomRecepcionar=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSEntrada
HomConsultarSituacao=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSEntrada
HomConsultarLote=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSSaida
HomConsultarNFSeRps=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSSaida
HomConsultarNFSe=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSSaida
HomCancelarNFSe=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSEntrada
HomGerarNFSe=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSEntrada
HomRecepcionarSincrono=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSEntrada
HomSubstituirNFSe=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/services/WSEntrada
;
ProLinkURL=http://servicos-pmg.guarapari.es.gov.br:9999/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://servicos-pmg.guarapari.es.gov.br:9999/tbwhomolog/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[3205002]
; Atualizado em 27/05/2021
Nome=Serra
UF=ES
Provedor=SmarAPD
ProRecepcionar=http://apps.serra.es.gov.br:8080/tbw/services/WSEntrada
ProConsultarSituacao=http://apps.serra.es.gov.br:8080/tbw/services/WSEntrada
ProConsultarLote=http://apps.serra.es.gov.br:8080/tbw/services/WSSaida
ProConsultarNFSeRps=http://apps.serra.es.gov.br:8080/tbw/services/WSSaida
ProConsultarNFSe=http://apps.serra.es.gov.br:8080/tbw/services/WSSaida
ProCancelarNFSe=http://apps.serra.es.gov.br:8080/tbw/services/WSEntrada
ProGerarNFSe=http://apps.serra.es.gov.br:8080/tbw/services/WSEntrada
ProRecepcionarSincrono=http://apps.serra.es.gov.br:8080/tbw/services/WSEntrada
ProSubstituirNFSe=http://apps.serra.es.gov.br:8080/tbw/services/WSEntrada
;
HomRecepcionar=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSEntrada
HomConsultarSituacao=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSEntrada
HomConsultarLote=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSSaida
HomConsultarNFSeRps=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSSaida
HomConsultarNFSe=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSSaida
HomCancelarNFSe=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSEntrada
HomGerarNFSe=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSEntrada
HomRecepcionarSincrono=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSEntrada
HomSubstituirNFSe=http://apps.serra.es.gov.br:8080/tbwavaliacao/services/WSEntrada
;
ProLinkURL=http://apps.serra.es.gov.br:8080/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://apps.serra.es.gov.br:8080/tbwavaliacao/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[3201308]
; Atualizado em 27/05/2021
Nome=Cariacica
UF=ES
Provedor=SmarAPD
Versao=2.03
ProRecepcionar=http://servicos.cariacica.es.gov.br:8080/tbw/services/Abrasf23
HomRecepcionar=http://servicos.cariacica.es.gov.br:8080/tbwhomologacao/services/Abrasf23
;
ProLinkURL=
HomLinkURL=

[3513504]
; Atualizado em 17/11/2021
Nome=Cubatao
UF=SP
Provedor=Prodata
Versao=2.01
ProRecepcionar=http://prodata.cubatao.sp.gov.br/prodataws/services/NfseWSService

[3304706]
; Atualizado em 21/01/2022
Nome=Santo Antonio de Padua
UF=RJ
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://54.232.94.124/NFSe.Portal.integracao/services.svc
HomRecepcionar=http://54.232.94.124/NFSe.Portal.integracao/services.svc

[3504008]
Nome=Assis
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=https://nfsews.assis.sp.gov.br/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://nfsews.assis.sp.gov.br/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3505609]
Nome=Barrinha
UF=SP
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://18.229.187.210/nfse.portal.integracao/services.svc
HomRecepcionar=http://18.229.187.210/nfse.portal.integracao.teste/services.svc

[3511102]
Nome=Catanduva
UF=SP
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://nfse.catanduva.sp.gov.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://nfse.catanduva.sp.gov.br/nfse.portal.integracao.teste/services.svc

[3530300]
Nome=Mirassol
UF=SP
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://nfse.mirassol.sp.gov.br:5557/nfse.portal.integracao/services.svc
HomRecepcionar=http://nfse.mirassol.sp.gov.br:5557/nfse.portal.integracao.teste/services.svc

[3545407]
Nome=Salto Grande
UF=SP
Provedor=Pronim
ProRecepcionar=http://200.192.244.89/nfsews/services.svc
HomRecepcionar=http://200.192.244.89/nfsewsteste/services.svc

[4102000]
Nome=Assis Chateaubriand
UF=PR
Provedor=Pronim
ProRecepcionar=http://177.38.165.34:8184/nfsews/Services.svc
HomRecepcionar=http://177.38.165.34:8184/nfsewsteste/Services.svc

[4100509]
Nome=Altonia
UF=PR
Provedor=Pronim
ProRecepcionar=http://201.87.233.17:5620/NFSEWS/Services.svc
HomRecepcionar=http://201.87.233.17:5620/nfsewsteste/Services.svc

[4118501]
Nome=Pato Branco
UF=PR
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://nfse2.patobranco.pr.gov.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://nfse2.patobranco.pr.gov.br/nfse.portal.integracao.teste/services.svc

[4122404]
Nome=Rolandia
UF=PR
Provedor=Pronim
ProRecepcionar=http://nfse.rolandia.pr.gov.br/NFSEws/Services.svc
HomRecepcionar=

[4201307]
Nome=Araquari
UF=SC
Provedor=IPM

[4303509]
Nome=Camaqua
UF=RS
Provedor=Pronim
ProRecepcionar=http://portal.camaqua.rs.gov.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://portal.camaqua.rs.gov.br/nfse.portal.integracao.teste/services.svc
;
ProLinkURL=http://server21.camaqua.rs.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.camaqua.rs.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[4308102]
Nome=Feliz
UF=RS
Provedor=Pronim
ProRecepcionar=http://portal.feliz.rs.gov.br:8081/nfse.portal.integracao/Services.svc
HomRecepcionar=http://portal.feliz.rs.gov.br:8081/nfse.portal.integracao.teste/Services.svc
;
ProLinkURL=http://server21.feliz.rs.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.feliz.rs.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[4309407]
; Atualizado em 05/07/2021
Nome=Guapore
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://guapore-portais.govcloud.com.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://guapore-portais.govcloud.com.br/nfse.portal.integracao.teste/services.svc

[4310207]
Nome=Ijui
UF=RS
Provedor=Pronim
ProRecepcionar=http://ijui-portais.govcloud.com.br/NFSe.portal.integracao/services.svc
HomRecepcionar=http://ijui-portais.govcloud.com.br/NFSe.portal.integracao.teste/services.svc
;
ProLinkURL=http://server21.ijui.rs.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.ijui.rs.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[4320800]
Nome=Soledade
UF=RS
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://186.237.127.134/nfsews/services.svc
HomRecepcionar=

[4322004]
Nome=Triunfo
UF=RS
Provedor=Pronim
ProRecepcionar=http://deiss.triunfo.rs.gov.br:90/nfsews/Services.svc
HomRecepcionar=http://189.30.16.212:90/nfsewsteste/Services.svc
;
ProLinkURL=http://server21.triunfo.rs.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.triunfo.rs.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[4322400]
Nome=Uruguaiana
UF=RS
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://uruguaiana-portais.govcloud.com.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://uruguaiana-portais.govcloud.com.br/nfse.portal.integracao.teste/services.svc

[3122306]
Nome=Divinopolis
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/div
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/div

[3556503]
Nome=Varzea Paulista
UF=SP
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/varzea
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/varzea

[3132404]
; Atualizado em 28/01/2022
Nome=Itajuba
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/itj
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/itj

[3138203]
Nome=Lavras
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/lavr
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/lavr

[3147006]
Nome=Paracatu
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/pctu
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/pctu

[3149309]
Nome=Pedro Leopoldo
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/pl
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/pl

[3151800]
Nome=Pocos de Caldas
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/pocos
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/pocos

[3162955]
Nome=Sao Jose Da Lapa
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/sjl
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/sjl

[4106902]
; Atualizado em 09/02/2022
Nome=Curitiba
UF=PR
Provedor=ISSCuritiba
ProRecepcionar=https://srv2-isscuritiba.curitiba.pr.gov.br/Iss.NfseWebService/Nfsews.asmx
HomRecepcionar=https://piloto-iss.curitiba.pr.gov.br/nfse_ws/NfseWs.asmx
;
ProLinkURL=https://srv2-isscuritiba.curitiba.pr.gov.br/portalnfse/Default.aspx?doc=%Cnpj%&num=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://piloto-iss.curitiba.pr.gov.br/portalnfse/Default.aspx?doc=%Cnpj%&num=%NumeroNFSe%&cod=%CodVerif%

[3144805]
Nome=Nova Lima
UF=MG
Provedor=Abaco
Versao=2.04
ProRecepcionar=https://www.e-nfs.com.br/e-nfs_novalima/servlet/aa24_recepcionarloterps
ProConsultarLote=https://www.e-nfs.com.br/e-nfs_novalima/servlet/aa24_consultarloterps
ProConsultarNFSeRps=https://www.e-nfs.com.br/e-nfs_novalima/servlet/aa24_consultarnfseporrps
ProConsultarNFSe=https://www.e-nfs.com.br/e-nfs_novalima/servlet/aa24_consultarnfse
ProCancelarNFSe=https://www.e-nfs.com.br/e-nfs_novalima/servlet/aa24_cancelarnfse
ProGerarNFSe=https://www.e-nfs.com.br/e-nfs_novalima/servlet/aa24_gerarnfse
ProRecepcionarSincrono=https://www.e-nfs.com.br/e-nfs_novalima/servlet/aa24_recepcionarloterpssincrono
ProSubstituirNFSe=https://www.e-nfs.com.br/e-nfs_novalima/servlet/aa24_substituirnfse
;
HomRecepcionar=https://enfs-hom.abaco.com.br/novalima/servlet/aa24_recepcionarloterps
HomConsultarLote=https://enfs-hom.abaco.com.br/novalima/servlet/aa24_consultarloterps
HomConsultarNFSeRps=https://enfs-hom.abaco.com.br/novalima/servlet/aa24_consultarnfseporrps
HomConsultarNFSe=https://enfs-hom.abaco.com.br/novalima/servlet/aa24_consultarnfse
HomCancelarNFSe=https://enfs-hom.abaco.com.br/novalima/servlet/aa24_cancelarnfse
HomGerarNFSe=https://enfs-hom.abaco.com.br/novalima/servlet/aa24_gerarnfse
HomRecepcionarSincrono=https://enfs-hom.abaco.com.br/novalima/servlet/aa24_recepcionarloterpssincrono
HomSubstituirNFSe=https://enfs-hom.abaco.com.br/novalima/servlet/aa24_substituirnfse

[3157807]
Nome=Santa Luzia
UF=MG
Provedor=ISSDigital
Versao=2.00
ProRecepcionar=https://issintegracao.santaluzia.mg.gov.br:8091/nfe/snissdigitalsvc
HomRecepcionar=

[3300209]
Nome=Araruama
UF=RJ
Provedor=Betha

[3300704]
Nome=Cabo Frio
UF=RJ
Provedor=SigCorp
Versao=2.03
ProRecepcionar=http://abrasfcabofrio.sigcorp.com.br/servico.asmx
HomRecepcionar=http://testeabrasfcabofrio.sigcorp.com.br/servico.asmx

[1501402]
Nome=Belem
UF=PA
Provedor=Siat
ProRecepcionar=http://siat.belem.pa.gov.br:8180/WsNFe/LoteRps
HomRecepcionar=http://siat.notahomologa.belem.pa.gov.br:8180/WsNFe/LoteRps
;
ProNameSpace=http://siat.nota.belem.pa.gov.br/WsNFe/LoteRps
HomNameSpace=http://siat.nota.belem.pa.gov.br/WsNFe/LoteRps

[2111300]
Nome=Sao Luis
UF=MA
Provedor=ISSDSF
Versao=1.01
;
ProRecepcionar=https://sistemas.semfaz.saoluis.ma.gov.br/WsNFe2/LoteRps.jws
HomRecepcionar=
;
ProNameSpace=http://sistemas.semfaz.saoluis.ma.gov.br/WsNFe2/LoteRps.jws
HomNameSpace=http://sistemas.semfaz.saoluis.ma.gov.br/WsNFe2/LoteRps.jws

[2211001]
Nome=Teresina
UF=PI
Provedor=ISSDSF
;
ProRecepcionar=https://www.issdigitalthe.com.br/WsNFe2/LoteRps.jws
HomRecepcionar=
;
ProNameSpace=http://proces.wsnfe2.dsfnet.com.br
HomNameSpace=http://proces.wsnfe2.dsfnet.com.br

[3170206]
Nome=Uberlandia
UF=MG
Provedor=ISSDSF
;
ProRecepcionar=https://udigital.uberlandia.mg.gov.br/WsNFe2/LoteRps.jws
HomRecepcionar=
;
ProNameSpace=http://udigital.uberlandia.mg.gov.br/WsNFe2/LoteRps.jws
HomNameSpace=http://udigital.uberlandia.mg.gov.br/WsNFe2/LoteRps.jws

[3303500]
Nome=Nova Iguacu
UF=RJ
Provedor=ISSDSF
;
ProRecepcionar=http://www.nfse.novaiguacu.rj.gov.br/WsNFe2/LoteRps.jws
HomRecepcionar=http://54.241.167.66/WsNFe2/LoteRps.jws
;
ProNameSpace=http://www.nfse.novaiguacu.rj.gov.br/WsNFe2/LoteRps.jws
HomNameSpace=http://54.241.167.66/WsNFe2/LoteRps.jws

[3509502]
Nome=Campinas
UF=SP
Provedor=ISSDSF
;
ProRecepcionar=https://issdigital.campinas.sp.gov.br/WsNFe2/LoteRps.jws
HomRecepcionar=
;
ProNameSpace=http://proces.wsnfe2.dsfnet.com.br
HomNameSpace=http://proces.wsnfe2.dsfnet.com.br

[3552205]
; Atualizado em 01/02/2022
Nome=Sorocaba
UF=SP

; Remover essa linha e descomentar as 4 linhas abaixo após o dia 01/04/2022
; Provedor=DSF
; Versao=2.03
; ProRecepcionar=
; HomRecepcionar=https://homolsod.dsfweb.com.br/notafiscal-abrasfv203-ws/NotaFiscalSoap

; Remover essa linha e as 7 linhas abaixo após o dia 01/04/2022
Provedor=ISSDSF
;
ProRecepcionar=https://www.issdigitalsod.com.br/WsNFe2/LoteRps.jws
HomRecepcionar=
;
ProNameSpace=http://proces.wsnfe2.dsfnet.com.br
HomNameSpace=http://proces.wsnfe2.dsfnet.com.br

[5002704]
Nome=Campo Grande
UF=MS
Provedor=ISSDSF
;
ProRecepcionar=http://issdigital.pmcg.ms.gov.br/WsNFe2/LoteRps.jws
HomRecepcionar=
;
ProNameSpace=http://proces.wsnfe2.dsfnet.com.br
HomNameSpace=http://proces.wsnfe2.dsfnet.com.br

[4115200]
Nome=Maringa
UF=PR
Provedor=ISSe
Versao=2.00
ProRecepcionar=https://nfse-ws.ecity.maringa.pr.gov.br/v2.01/
HomRecepcionar=https://nfse-ws.hom-ecity.maringa.pr.gov.br/v2.01/

[4307005]
Nome=Erechim
UF=RS
Provedor=SystemPro
Versao=2.01
ProRecepcionar=https://www.nfse.erechim.rs.gov.br:8182/NfseService/NfseService
HomRecepcionar=https://www.nfse.erechim.rs.gov.br:8182/NfseService_Homolog/NfseService_Homolog

[4304408]
Nome=Canela
UF=RS
Provedor=SystemPro
Versao=2.01
ProRecepcionar=https://www.nfse.canela.rs.gov.br:8182/NfseService/NfseService
HomRecepcionar=https://www.nfse.canela.rs.gov.br:8182/NfseService_Homolog/NfseService_Homolog

[4303905]
Nome=Campo Bom
UF=RS
Provedor=Infisc
Versao=1.01
;
ProRecepcionar=https://nfse.campobom.rs.gov.br/services/nfse/ws/Servicos
HomRecepcionar=https://campobom-gif4homol.infisc.com.br/services/nfse/ws/Servicos
;
ProLinkURL=https://nfse.campobom.rs.gov.br/portal/consulta.jspx?nf=%ChaveAcesso%
HomLinkURL=https://campobom-gif4homol.infisc.com.br/portal/consulta.jspx?nf=%ChaveAcesso%

[4307906]
Nome=Farroupilha
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://nfse-farroupilha.multi24h.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://nfse-farroupilha.multi24h.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://nfse-farroupilha.multi24h.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://nfse-farroupilha.multi24h.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://nfse-farroupilha.multi24h.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://nfse-farroupilha.multi24h.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologafarroupilha.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologafarroupilha.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologafarroupilha.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologafarroupilha.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologafarroupilha.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologafarroupilha.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4317400]
Nome=Santiago
UF=RS
Provedor=Infisc
Versao=2.01
ProRecepcionar=https://nfse.santiago.rs.gov.br/services/nfse/ws/Servicos
HomRecepcionar=https://santiago-homol.infisc.com.br/services/nfse/ws/Servicos

[4305108]
Nome=Caxias do Sul
UF=RS
Provedor=Infisc
Versao=1.01
;
ProRecepcionar=https://nfse.caxias.rs.gov.br/services/nfse/ws/Servicos
HomRecepcionar=https://nfsehomol.caxias.rs.gov.br/services/nfse/ws/Servicos
;
ProLinkURL=https://nfse.caxias.rs.gov.br/portal/consulta.jspx?nf=%ChaveAcesso%
HomLinkURL=https://nfsehomol.caxias.rs.gov.br/portal/consulta.jspx?nf=%ChaveAcesso%

[4308607]
Nome=Garibaldi
UF=RS
Provedor=Infisc
Versao=1.01
ProRecepcionar=https://nfse.garibaldi.rs.gov.br/services/nfse/ws/Servicos
HomRecepcionar=https://garibaldi-homol.infisc.com.br/services/nfse/ws/Servicos
;
ProLinkURL=https://nfse.garibaldi.rs.gov.br/portal/consulta.jspx?nf=%ChaveAcesso%
HomLinkURL=https://garibaldi-homol.infisc.com.br/portal/consulta.jspx?nf=%ChaveAcesso%

[4320008]
Nome=Sapucaia Do Sul
UF=RS
Provedor=Infisc
Versao=2.01
ProRecepcionar=https://nfse.sapucaiadosul.rs.gov.br/services/nfse/ws/Servicos
HomRecepcionar=https://sapucaiadosul-homol.infisc.com.br/services/nfse/ws/Servicos

[4314050]
Nome=Parobe
UF=RS
Provedor=Infisc
Versao=1.01
ProRecepcionar=https://nfse.parobe.rs.gov.br/services/nfse/ws/Servicos
HomRecepcionar=https://homol.parobe.infisc.com.br/services/nfse/ws/Servicos
;
ProLinkURL=https://nfse.parobe.rs.gov.br/portal/consulta.jspx?nf=%ChaveAcesso%
HomLinkURL=https://homol.parobe.infisc.com.br'/portal/consulta.jspx?nf=%ChaveAcesso%

[1709500]
; Atualizado em 22/03/2022
Nome=Gurupi
UF=TO
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://gurupito.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://gurupito.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[2112209]
Nome=Timon
UF=MA
Provedor=ISSIntel
ProNameSpace=http://timon-ma.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://timon-ma.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://timon-ma.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://timon-ma.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://timon-ma.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://timon-ma.treino-issintel.com.br/webservices/abrasf/api/

[2207009]
Nome=Oeiras
UF=PI
Provedor=ISSIntel
ProNameSpace=http://oeiras-pi.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://oeiras-pi.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://oeiras-pi.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://oeiras-pi.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://oeiras-pi.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://oeiras-pi.treino-issintel.com.br/webservices/abrasf/api/

[2208007]
Nome=Picos
UF=PI
Provedor=ISSIntel
ProNameSpace=http://picos-pi.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://picos.pi.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://picos-pi.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://picos.pi.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://picos-pi.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://picos.pi.treino-issintel.com.br/webservices/abrasf/api/

[2211209]
Nome=Urucui
UF=PI
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://177.129.224.58:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://177.129.224.58:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[2307304]
Nome=Juazeiro do Norte
UF=CE
Provedor=ISSIntel
ProNameSpace=http://juazeirodonorte-ce.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://juazeirodonorte-ce.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://juazeirodonorte-ce.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://juazeirodonorte-ce.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://juazeirodonorte-ce.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://juazeirodonorte-ce.treino-issintel.com.br/webservices/abrasf/api/

[2504009]
Nome=Campina Grande
UF=PB
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://campinagrandepb.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://campinagrandepb.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[2910727]
Nome=Eunapolis
UF=BA
Provedor=ISSIntel
ProNameSpace=http://eunapolis-ba.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://eunapolis-ba.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://eunapolis-ba.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://eunapolis-ba.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://eunapolis-ba.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://eunapolis-ba.treino-issintel.com.br/webservices/abrasf/api/

[2925303]
Nome=Porto Seguro
UF=BA
Provedor=ISSIntel
ProNameSpace=http://portoseguro-ba.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://portoseguro-ba.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://portoseguro-ba.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://portoseguro-ba.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://portoseguro-ba.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://portoseguro-ba.treino-issintel.com.br/webservices/abrasf/api/

[3107109]
Nome=Boa Esperanca
UF=MG
Provedor=ISSIntel
ProNameSpace=http://boaesperanca-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://boaesperanca-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://boaesperanca-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://boaesperanca-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://boaesperanca-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://boaesperanca-mg.treino-issintel.com.br/webservices/abrasf/api/

[3112505]
Nome=Capim Branco
UF=MG
Provedor=ISSIntel
ProNameSpace=http://capimbranco-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://capimbranco-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://capimbranco-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://capimbranco-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://capimbranco-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://capimbranco-mg.treino-issintel.com.br/webservices/abrasf/api/

[3113305]
Nome=Carangola
UF=MG
Provedor=ISSIntel
ProNameSpace=http://carangola-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://carangola-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://carangola-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://carangola-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://carangola-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://carangola-mg.treino-issintel.com.br/webservices/abrasf/api/

[3114402]
Nome=Carmo do Rio Claro
UF=MG
Provedor=ISSIntel
ProNameSpace=http://carmodorioclaro-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://carmodorioclaro-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://carmodorioclaro-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://carmodorioclaro-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://carmodorioclaro-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://carmodorioclaro-mg.treino-issintel.com.br/webservices/abrasf/api/

[3116605]
Nome=Claudio
UF=MG
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[3128105]
Nome=Guape
UF=MG
Provedor=ISSIntel
ProNameSpace=http://guape-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://guape-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://guape-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://guape-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://guape-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://guape-mg.treino-issintel.com.br/webservices/abrasf/api/

[3148004]
Nome=Patos de Minas
UF=MG
Provedor=Governa
Params=VersaoArquivo:1|VersaoImpressao:3
;
ProRecepcionar=http://187.72.229.145:8089/webservice/eSiat.asmx

[3149903]
Nome=Perdoes
UF=MG
Provedor=NotaInteligente
Versao=2.00
ProRecepcionar=https://perdoes-mg.notainteligente.com/api/action
HomRecepcionar=https://treino-perdoes-mg.notainteligente.com/api/action
;
ProNameSpace=https://perdoes-mg.notainteligente.com/api/wsdl
HomNameSpace=https://treino-perdoes-mg.notainteligente.com/api/wsdl

[3151503]
Nome=Piumhi
UF=MG
Provedor=ISSIntel
ProNameSpace=http://piumhi-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://piumhi-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://piumhi-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://piumhi-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://piumhi-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://piumhi-mg.treino-issintel.com.br/webservices/abrasf/api/

[3152600]
Nome=Pouso Alto
UF=MG
Provedor=ISSIntel
ProNameSpace=http://pousoalto-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://pousoalto-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://pousoalto-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://pousoalto-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://pousoalto-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://pousoalto-mg.treino-issintel.com.br/webservices/abrasf/api/

[3153905]
Nome=Raposos
UF=MG
Provedor=ISSIntel
ProNameSpace=http://raposos-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://raposos-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://raposos-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://raposos-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://raposos-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://raposos-mg.treino-issintel.com.br/webservices/abrasf/api/

[3170800]
Nome=Varzea da Palma
UF=MG
Provedor=ISSIntel
ProNameSpace=http://varzeadapalma-mg.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://varzeadapalma-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://varzeadapalma-mg.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://varzeadapalma-mg.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://varzeadapalma-mg.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://varzeadapalma-mg.treino-issintel.com.br/webservices/abrasf/api/

[3171303]
Nome=Vicosa
UF=MG
Provedor=eReceita
Versao=2.02
ProRecepcionar=http://webservice.ereceita.net.br/ws/vicosa/wsProducao.php
HomRecepcionar=http://webservice.ereceita.net.br/ws/vicosa/wsHomologacao.php
;
ProLinkURL=http://server21.vicosa.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.vicosa.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[3200102]
Nome=Afonso Claudio
UF=ES
Provedor=ISSIntel
ProNameSpace=http://afonsoclaudio-es.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://afonsoclaudio-es.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://afonsoclaudio-es.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://afonsoclaudio-es.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://afonsoclaudio-es.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://afonsoclaudio-es.treino-issintel.com.br/webservices/abrasf/api/

[3200300]
Nome=Alfredo Chaves
UF=ES
Provedor=ISSIntel
ProNameSpace=http://alfredochaves-es.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://alfredochaves-es.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://alfredochaves-es.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://alfredochaves-es.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://alfredochaves-es.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://alfredochaves-es.treino-issintel.com.br/webservices/abrasf/api/

[3204708]
Nome=Sao Gabriel da Palha
UF=ES
Provedor=ISSIntel
ProNameSpace=http://saogabrieldapalha-es.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://saogabrieldapalha-es.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://saogabrieldapalha-es.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://saogabrieldapalha-es.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://saogabrieldapalha-es.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://saogabrieldapalha-es.treino-issintel.com.br/webservices/abrasf/api/

[4109609]
Nome=Guaratuba
UF=PR
Provedor=ISSIntel
ProNameSpace=http://guaratuba-pr.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://guaratuba-pr.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://guaratuba-pr.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://guaratuba-pr.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://guaratuba-pr.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://guaratuba-pr.treino-issintel.com.br/webservices/abrasf/api/

[4313953]
Nome=Pantano Grande
UF=RS
Provedor=ISSIntel
ProNameSpace=http://pantanogrande-pr.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://pantanogrande-pr.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://pantanogrande-pr.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://pantanogrande-pr.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://pantanogrande-pr.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://pantanogrande-pr.treino-issintel.com.br/webservices/abrasf/api/

[5106505]
Nome=Pocone
UF=MT
Provedor=FISSLex
ProRecepcionar=https://pocone.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://pocone.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://pocone.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://pocone.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://pocone.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://pocone.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://pocone.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[5106778]
Nome=Porto Alegre do Norte
UF=MT
Provedor=ISSIntel
ProNameSpace=http://portoalegredonorte-mt.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://portoalegredonorte-mt.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://portoalegredonorte-mt.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://portoalegredonorte-mt.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://portoalegredonorte-mt.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://portoalegredonorte-mt.treino-issintel.com.br/webservices/abrasf/api/

[5107107]
Nome=Sao Jose dos Quatro Marcos
UF=MT
Provedor=ISSIntel
ProNameSpace=http://saojosedosquatromarcos-mt.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://saojosedosquatromarcos-mt.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://saojosedosquatromarcos-mt.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://saojosedosquatromarcos-mt.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://saojosedosquatromarcos-mt.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://saojosedosquatromarcos-mt.treino-issintel.com.br/webservices/abrasf/api/

[3506508]
; Atualizado em 04/08/2021
Nome=Birigui
UF=SP
Provedor=SmarAPD
ProRecepcionar=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSEntrada
ProConsultarSituacao=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSEntrada
ProConsultarLote=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSSaida
ProConsultarNFSeRps=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSSaida
ProConsultarNFSe=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSSaida
ProCancelarNFSe=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSEntrada
ProGerarNFSe=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSEntrada
ProRecepcionarSincrono=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSEntrada
ProSubstituirNFSe=http://pmbirigui02.smarapd.com.br:9999/smartb/services/WSEntrada
;
HomRecepcionar=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSEntrada
HomConsultarSituacao=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSEntrada
HomConsultarLote=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSSaida
HomConsultarNFSeRps=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSSaida
HomConsultarNFSe=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSSaida
HomCancelarNFSe=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSEntrada
HomGerarNFSe=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSEntrada
HomRecepcionarSincrono=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSEntrada
HomSubstituirNFSe=http://tributacao.smarapd.com.br:8090/ddwbirigui/services/WSEntrada
;
ProLinkURL=http://pmbirigui02.smarapd.com.br:9999/smartb/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://tributacao.smarapd.com.br:8090/ddwbirigui/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[3139607]
Nome=Mantena
UF=MG
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/mantena/servicos.asmx

[3169307]
Nome=Tres Coracoes
UF=MG
Provedor=EL
ProRecepcionar=https://mg-trescoracoes-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://mg-trescoracoes-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://mg-trescoracoes-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3502101]
Nome=Andradina
UF=SP
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/andradina/servicos.asmx

[3502507]
; Atualizado em 27/05/2021
Nome=Aparecida
UF=SP
Provedor=SilTecnologia
ProRecepcionar=https://aparecida.siltecnologia.com.br/tbw/services/Abrasf10
HomRecepcionar=
;
ProLinkURL=http://aparecida.siltecnologia.com.br/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%CodVerif%
HomLinkURL=http://aparecida.siltecnologia.com.br/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%CodVerif%

[3524402]
Nome=Jacarei
UF=SP
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/jacarei/servicos.asmx

[3524709]
Nome=Jaguariuna
UF=SP
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/jaguariuna
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/jaguariuna

[3527207]
; Atualizado em 10/01/2022
Nome=Lorena
UF=SP
Provedor=SiapNet
Versao=2.00
ProRecepcionar=https://siap.lorena.sp.gov.br/pmlorena/issonline/ws/index.php
HomRecepcionar=https://siap.lorena.sp.gov.br/teste/issonline/ws/index.php

[3518404]
; Atualizado em 10/01/2022
Nome=Guaratingueta
UF=SP
Provedor=SiapNet
Versao=2.00
ProRecepcionar=https://pmguaratingueta.geosiap.net.br/pmguaratingueta/issonline/ws/index.php
HomRecepcionar=https://pmguaratingueta.geosiap.net.br/teste/issonline/ws/index.php

[3530607]
; Atualizado em 27/05/2021
Nome=Mogi das Cruzes
UF=SP
Provedor=SmarAPD
Versao=2.03
ProRecepcionar=http://servicos.mogidascruzes.sp.gov.br/tbw/services/Abrasf23
HomRecepcionar=http://servicos.mogidascruzes.sp.gov.br/tbwhomologacao/services/Abrasf23
;
ProLinkURL=
HomLinkURL=

[3541000]
; Atualizado em 09/02/2022
Nome=Praia Grande
UF=SP
Provedor=ISSNet
Params=NaoDividir100:
;
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/praiagrande/servicos.asmx

[3551009]
Nome=Sao Vicente
UF=SP
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/saovicente/servicos.asmx

[3551504]
Nome=Serrana
UF=SP
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/serrana/servicos.asmx

[4104808]
; Atualizado em 19/10/2021
Nome=Cascavel
UF=PR
Provedor=IPM
Versao=1.01
ProRecepcionar=https://cascavel.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[4306106]
Nome=Cruz Alta
UF=RS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/cruzalta/servicos.asmx

[4313409]
; Atualizado em 16/02/2022
Nome=Novo Hamburgo
UF=RS
Provedor=ISSNet
Params=NaoDividir100:
;
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/novohamburgo/servicos.asmx

[4316907]
Nome=Santa Maria
UF=RS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/santamaria/servicos.asmx

[5002209]
Nome=Bonito
UF=MS
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://45.188.183.155:8089/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://45.188.183.155:8089/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[5003702]
Nome=Dourados
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/dourados/servicos.asmx

[5005707]
Nome=Navirai
UF=MS
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://187.6.10.202:9191/nfse.portal.integracao/services.svc
HomRecepcionar=http://187.6.10.202:9191/nfse.portal.integracao.teste/services.svc

[5006002]
Nome=Nova Alvorada do Sul
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/novaalvoradadosul/servicos.asmx

[5007208]
; Atualizado em 04/10/2021
Nome=Rio Brilhante
UF=MS
Provedor=Betha

[5007901]
Nome=Sidrolandia
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/sindrolandia/servicos.asmx

[5100250]
Nome=Alta Floresta
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_altafloresta/servlet/anfse_web_service

[5103403]
Nome=Cuiaba
UF=MT
Provedor=ISSNet
ProRecepcionar=https://wscuiaba.issnetonline.com.br/webserviceabrasf/cuiaba/servicos.asmx

[5105101]
Nome=Juara
UF=MT
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/juara/servicos.asmx

[5106232]
Nome=Nova Olimpia
UF=MT
Provedor=FISSLex
ProRecepcionar=https://novaolimpia.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://novaolimpia.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://novaolimpia.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://novaolimpia.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://novaolimpia.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://novaolimpia.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://novaolimpia.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[1100023]
; Atualizado em 26/07/2021
Nome=Ariquemes
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://nfse.ariquemes.ro.gov.br:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://nfse.ariquemes.ro.gov.br:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[5106422]
Nome=Peixoto de Azevedo
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_peixotodeazevedo/servlet/anfse_web_service

[5104526]
; Atualizado em 16/11/2021
Nome=Ipiranga do Norte
UF=MT
Provedor=Agili
Params=NomeTagAtividadeEconomica:CodigoCnaeAtividadeEconomica|NaoGerarTag:CodigoCnae
;
ProRecepcionar=https://agiliblue.agilicloud.com.br/api/EnviarLoteRps
ProConsultarLote=https://agiliblue.agilicloud.com.br/api/ConsultarLoteRps
ProConsultarNFSeRps=https://agiliblue.agilicloud.com.br/api/ConsultarNfseRps
ProConsultarNFSe=https://agiliblue.agilicloud.com.br/api/ConsultarNfseFaixa
ProCancelarNFSe=https://agiliblue.agilicloud.com.br/api/CancelarNfse
ProGerarNFSe=https://agiliblue.agilicloud.com.br/api/GerarNfse
ProSubstituirNFSe=https://agiliblue.agilicloud.com.br/api/SubstituirNfse
;
HomRecepcionar=
HomConsultarLote=
HomConsultarNFSeRps=
HomConsultarNFSe=
HomCancelarNFSe=
HomGerarNFSe=
HomSubstituirNFSe=

[5107925]
; Atualizado em 12/01/2022
Nome=Sorriso
UF=MT
Provedor=Agili
Params=NomeTagAtividadeEconomica:CodigoAtividadeEconomica
;
ProRecepcionar=https://prefsorriso-mt.agilicloud.com.br/api/EnviarLoteRps
ProConsultarLote=https://prefsorriso-mt.agilicloud.com.br/api/ConsultarLoteRps
ProConsultarNFSeRps=https://prefsorriso-mt.agilicloud.com.br/api/ConsultarNfseRps
ProConsultarNFSe=https://prefsorriso-mt.agilicloud.com.br/api/ConsultarNfseFaixa
ProCancelarNFSe=https://prefsorriso-mt.agilicloud.com.br/api/CancelarNfse
ProGerarNFSe=https://prefsorriso-mt.agilicloud.com.br/api/GerarNfse
ProSubstituirNFSe=https://prefsorriso-mt.agilicloud.com.br/api/SubstituirNfse
;
HomRecepcionar=
HomConsultarLote=
HomConsultarNFSeRps=
HomConsultarNFSe=
HomCancelarNFSe=
HomGerarNFSe=
HomSubstituirNFSe=

[5108402]
Nome=Varzea Grande
UF=MT
Provedor=Abaco
ProRecepcionar=https://www.e-nfs.com.br/varzeagrande/servlet/arecepcionarloterps
ProConsultarSituacao=https://www.e-nfs.com.br/varzeagrande/servlet/aconsultarsituacaoloterps
ProConsultarLote=https://www.e-nfs.com.br/varzeagrande/servlet/aconsultarloterps
ProConsultarNFSeRps=https://www.e-nfs.com.br/varzeagrande/servlet/aconsultarnfseporrps
ProConsultarNFSe=https://www.e-nfs.com.br/varzeagrande/servlet/aconsultarnfse
ProCancelarNFSe=https://www.e-nfs.com.br/varzeagrande/servlet/acancelarnfse
;
HomRecepcionar=https://homologa.e-nfs.com.br/varzeagrande/servlet/arecepcionarloterps
HomConsultarSituacao=https://homologa.e-nfs.com.br/varzeagrande/servlet/aconsultarsituacaoloterps
HomConsultarLote=https://homologa.e-nfs.com.br/varzeagrande/servlet/aconsultarloterps
HomConsultarNFSeRps=https://homologa.e-nfs.com.br/varzeagrande/servlet/aconsultarnfseporrps
HomConsultarNFSe=https://homologa.e-nfs.com.br/varzeagrande/servlet/aconsultarnfse
HomCancelarNFSe=https://homologa.e-nfs.com.br/varzeagrande/servlet/acancelarnfse
;
ProLinkURL=https://www.e-nfs.com.br/varzeagrande/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%
HomLinkURL=https://homologa.e-nfs.com.br/varzeagrande/servlet/wvalidarautenticidadenfse?%Cnpj%,%ValorServico%,%NumeroNFSe%,%CodVerif%

[5201108]
Nome=Anapolis
UF=GO
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/anapolis/servicos.asmx

[5201405]
; Atualizado em 24/01/2022
Nome=Aparecida de Goiania
UF=GO
Provedor=ISSNet
Params=NaoDividir100:
;
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/aparecidadegoiania/servicos.asmx
HomRecepcionar=http://aparecidadegoiania.issnetonline.com.br/webserviceabrasf/homologacao/servicos.asmx

[2911709]
Nome=Guanambi
UF=BA
Provedor=ISSIntel
ProNameSpace=http://guanambi-ba.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://guanambi-ba.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://guanambi-ba.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://guanambi-ba.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://guanambi-ba.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://guanambi-ba.treino-issintel.com.br/webservices/abrasf/api/

[3513405]
; Atualizado em 10/01/2022
Nome=Cruzeiro
UF=SP
Provedor=SiapNet
Versao=2.00
ProRecepcionar=https://pmcruzeiro.geosiap.net.br:4443/pmcruzeiro/issonline/ws/index.php
HomRecepcionar=https://pmcruzeiro.geosiap.net.br:4443/teste/issonline/ws/index.php

[2408102]
Nome=Natal
UF=RN
Provedor=ISSNatal
ProRecepcionar=https://wsnfsev1.natal.rn.gov.br:8444/axis2/services/NfseWSServiceV1/
HomRecepcionar=https://wsnfsev1homologacao.natal.rn.gov.br:8443/axis2/services/NfseWSServiceV1/
;
ProLinkURL=https://directa.natal.rn.gov.br/form.jsp?sys=DIR&action=openform&formID=464567977&align=0&mode=-1&goto=-1&filter=&scrolling=no&insc=%InscMunic%&nfse=%NumeroNFSe%&codV=%CodVerif%
HomLinkURL=https://directa.natal.rn.gov.br/form.jsp?sys=DIR&action=openform&formID=464567977&align=0&mode=-1&goto=-1&filter=&scrolling=no&insc=%InscMunic%&nfse=%NumeroNFSe%&codV=%CodVerif%

[5208004]
; Atualizado em 20/01/2022
Nome=Formosa
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=https://api.centi.com.br/nfe/gerar/go/formosa
ProConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/rps/go/formosa
ProCancelarNFSe=https://api.centi.com.br/nfe/cancelar/go/formosa
ProGerarNFSe=https://api.centi.com.br/nfe/gerar/go/formosa
;
HomRecepcionar=https://api.centi.com.br/nfe/gerar/homologacao/go/formosa
HomConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/homologacao/rps/go/formosa
HomCancelarNFSe=https://api.centi.com.br/nfe/cancelar/homologacao/go/formosa
HomGerarNFSe=https://api.centi.com.br/nfe/gerar/homologacao/go/formosa
;
ProLinkURL=https://api.centi.dev.br/portal/nfse/go/formosa/%CodVerif%
HomLinkURL=https://api.centi.dev.br/portal/nfse/go/formosa/%CodVerif%

[5211503]
Nome=Itumbiara
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=https://api.centi.com.br/nfe/gerar/go/itumbiara
ProConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/rps/go/itumbiara
ProCancelarNFSe=https://api.centi.com.br/nfe/cancelar/go/itumbiara
ProGerarNFSe=https://api.centi.com.br/nfe/gerar/go/itumbiara
;
HomRecepcionar=https://api.centi.com.br/nfe/gerar/homologacao/go/itumbiara
HomConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/homologacao/rps/go/itumbiara
HomCancelarNFSe=https://api.centi.com.br/nfe/cancelar/homologacao/go/itumbiara
HomGerarNFSe=https://api.centi.com.br/nfe/gerar/homologacao/go/itumbiara
;
ProLinkURL=https://api.centi.dev.br/portal/nfse/go/itumbiara/%CodVerif%
HomLinkURL=https://api.centi.dev.br/portal/nfse/go/itumbiara/%CodVerif%

[5213103]
Nome=Mineiros
UF=GO
Provedor=Ginfes
;
ProLinkURL=http://mineiros.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://mineiros.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[5217302]
Nome=Pirenopolis
UF=GO
Provedor=Prodata
Versao=2.01
ProRecepcionar=http://gestao.pirenopolis.go.gov.br/prodataws/services/NfseWSService
HomRecepcionar=

[5208608]
Nome=Goianesia
UF=GO
Provedor=Prodata
Versao=2.01
ProRecepcionar=http://191.242.30.222:8080/prodataws/services/NfseWSService
HomRecepcionar=

[4208203]
Nome=Itajai
UF=SC
Provedor=Publica
ProRecepcionar=https://nfse.itajai.sc.gov.br/nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/itajai_nfse_integracao/Services

[1100205]
Nome=Porto Velho
UF=RO
Provedor=ISSPortoVelho
Versao=2.00
ProRecepcionar=https://www.semfazonline.com/nfse/NfseWSService
HomRecepcionar=https://homologacao.semfazonline.com/nfse/NfseWSService

[2611606]
Nome=Recife
UF=PE
Provedor=ISSRecife
ProRecepcionar=https://nfse.recife.pe.gov.br/WSNacional/nfse_v01.asmx
HomRecepcionar=
;
ProLinkURL=https://nfse.recife.pe.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://nfse.recife.pe.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[3304557]
Nome=Rio de Janeiro
UF=RJ
Provedor=ISSRio
ProRecepcionar=https://notacarioca.rio.gov.br/WSNacional/nfse.asmx
HomRecepcionar=https://homologacao.notacarioca.rio.gov.br/WSNacional/nfse.asmx
;
ProLinkURL=https://notacarioca.rio.gov.br/nfse.aspx?inscricao=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://homologacao.notacarioca.rio.gov.br/nfse.aspx?inscricao=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[2927408]
Nome=Salvador
UF=BA
Provedor=ISSSalvador
ProRecepcionar=https://nfse.salvador.ba.gov.br/rps/ENVIOLOTERPS/EnvioLoteRPS.svc
ProConsultarSituacao=https://nfse.salvador.ba.gov.br/rps/CONSULTASITUACAOLOTERPS/ConsultaSituacaoLoteRPS.svc
ProConsultarLote=https://nfse.salvador.ba.gov.br/rps/CONSULTALOTERPS/ConsultaLoteRPS.svc
ProConsultarNFSeRps=https://nfse.salvador.ba.gov.br/rps/CONSULTANFSERPS/ConsultaNfseRPS.svc
ProConsultarNFSe=https://nfse.salvador.ba.gov.br/rps/CONSULTANFSE/ConsultaNfse.svc
;
HomRecepcionar=https://notahml.salvador.ba.gov.br/rps/ENVIOLOTERPS/EnvioLoteRPS.svc
HomConsultarSituacao=https://notahml.salvador.ba.gov.br/rps/CONSULTASITUACAOLOTERPS/ConsultaSituacaoLoteRPS.svc
HomConsultarLote=https://notahml.salvador.ba.gov.br/rps/CONSULTALOTERPS/ConsultaLoteRPS.svc
HomConsultarNFSeRps=https://notahml.salvador.ba.gov.br/rps/CONSULTANFSERPS/ConsultaNfseRPS.svc
HomConsultarNFSe=https://notahml.salvador.ba.gov.br/rps/CONSULTANFSE/ConsultaNfse.svc

[1400100]
Nome=Boa Vista
UF=RR
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://boavista.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-boavista.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://boavista.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://boavista.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[1400209]
Nome=Caracarai
UF=RR
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://caracarai.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-caracarai.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://caracarai.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://caracarai.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2900801]
Nome=Alcobaca
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://alcobaca.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-alcobaca.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://alcobaca.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://alcobaca.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2902708]
Nome=Barra
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://barra.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-barra.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://barra.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://barra.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2903201]
Nome=Barreiras
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://barreiras.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-barreiras.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://barreiras.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://barreiras.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2903904]
Nome=Bom Jesus Da Lapa
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://bjlapa.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-bjlapa.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://bjlapa.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://bjlapa.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2905602]
Nome=Camacan
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://camacan.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-camacan.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://camacan.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://camacan.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2906006]
Nome=Campo Formoso
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://campoformoso.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-campoformoso.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://campoformoso.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://campoformoso.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2907202]
Nome=Casa Nova
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://casanova.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-casanova.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://casanova.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://casanova.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2909307]
Nome=Correntina
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://correntina.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-correntina.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://correntina.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://correntina.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2910057]
Nome=Dias D Avila
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://diasdavila.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-diasdavila.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://diasdavila.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://diasdavila.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2910503]
Nome=Entre Rios
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://entrerios.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-entrerios.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://entrerios.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://entrerios.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2910602]
Nome=Esplanada
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://esplanada.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-esplanada.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://esplanada.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://esplanada.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2913200]
Nome=Ibotirama
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://ibotirama.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-ibotirama.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://ibotirama.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://ibotirama.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2913903]
Nome=Ipiau
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://ipiau.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-ipiau.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://ipiau.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://ipiau.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2914505]
Nome=Irara
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://irara.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-irara.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://irara.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://irara.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2914653]
Nome=Itabela
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://itabela.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-itabela.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://itabela.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://itabela.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2914703]
Nome=Itaberaba
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://itaberaba.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-itaberaba.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://itaberaba.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://itaberaba.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2917003]
Nome=Itiuba
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://itiuba.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-itiuba.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://itiuba.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://itiuba.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2917508]
Nome=Jacobina
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://jacobina.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-jacobina.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://jacobina.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://jacobina.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2917706]
Nome=Jaguarari
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://jaguarari.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-jaguarari.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://jaguarari.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://jaguarari.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2919157]
Nome=Lapao
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://lapao.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-lapao.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://lapao.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://lapao.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2919926]
Nome=Madre De Deus
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://madre.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-madre.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://madre.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://madre.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2922003]
Nome=Mucuri
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://mucuri.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-mucuri.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://mucuri.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://mucuri.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2922656]
Nome=Nordestina
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://nordestina.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-nordestina.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://nordestina.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://nordestina.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2927705]
Nome=Santa Cruz Cabralia
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://santacruzcabralia.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-santacruzcabralia.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://santacruzcabralia.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://santacruzcabralia.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2928901]
Nome=Sao Desiderio
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://saodesiderio.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-saodesiderio.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://saodesiderio.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://saodesiderio.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2931350]
Nome=Teixeira De Freitas
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://teixeiradefreitas.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-teixeiradefreitas.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://teixeiradefreitas.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://teixeiradefreitas.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2932804]
Nome=Utinga
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://utinga.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-utinga.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://utinga.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://utinga.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2933208]
Nome=Vera Cruz
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://veracruz.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-veracruz.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://veracruz.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://veracruz.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[4201653]
Nome=Arvoredo
UF=SC
Provedor=Betha

[4204558]
Nome=Correia Pinto
UF=SC
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://correiapinto.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-correiapinto.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://correiapinto.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://correiapinto.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2507507]
Nome=Joao Pessoa
UF=PB
Provedor=SisPMJP
Versao=2.02
ProRecepcionar=https://sispmjp.joaopessoa.pb.gov.br:8443/sispmjp/NfseWSService
HomRecepcionar=https://nfsehomolog.joaopessoa.pb.gov.br:8443/sispmjp/NfseWSService

[3103405]
; Atualizado em 29/12/2021
Nome=Aracuai
UF=MG
Provedor=Actcon
Versao=2.02
Params=DataEmissao:Date
;
ProRecepcionar=https://nfsearacuai.portalfacil.com.br/nfseserv/webservice/servicos
HomRecepcionar=http://nfsearacuai.portalfacil.com.br/homologacao/webservice/servicos
;
ProXMLNameSpace=http://nfsearacuai.portalfacil.com.br/nfseserv/schema/nfse_v202.xsd
HomXMLNameSpace=http://nfsearacuai.portalfacil.com.br/homologacao/schema/nfse_v202.xsd
;
ProNameSpace=http://nfsearacuai.portalfacil.com.br/nfseserv/webservice/nfse.wsdl
HomNameSpace=http://nfsearacuai.portalfacil.com.br/homologacao/webservice/nfse.wsdl
;
ProSoapAction=http://nfsearacuai.portalfacil.com.br/nfseserv/webservice/servicos#
HomSoapAction=http://nfsearacuai.portalfacil.com.br/homologacao/webservice/servicos#

[3103504]
Nome=Araguari
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/arag
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/arag

[3143104]
Nome=Monte Carmelo
UF=MG
Provedor=SimplISS
ProRecepcionar=http://wsmontecarmelo.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsmontecarmelo.simplissweb.com.br/nfseservice.svc

[3105103]
Nome=Bambui
UF=MG
Provedor=NFSeBrasil

[3137205]
; Atualizado em 11/06/2021
Nome=Lagoa Da Prata
UF=MG
Provedor=Betha

[3148103]
Nome=Patrocinio
UF=MG
Provedor=SimplISS
ProRecepcionar=http://wspatrocinio.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wspatrocinio.simplissweb.com.br/nfseservice.svc

[3503307]
Nome=Araras
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsararas.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsararas.simplissweb.com.br/nfseservice.svc

[3521408]
Nome=Iracemapolis
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsiracemapolis.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsiracemapolis.simplissweb.com.br/nfseservice.svc

[3510609]
Nome=Carapicuiba
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wscarapicuiba.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wscarapicuiba.simplissweb.com.br/nfseservice.svc

[3511508]
Nome=Cerquilho
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://cerquilho.4rtec.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://cerquilho.4rtec.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://cerquilho.4rtec.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://cerquilho.4rtec.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://cerquilho.4rtec.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://cerquilho.4rtec.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://cerquilho.4rtec.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://cerquilho.4rtec.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://cerquilho.4rtec.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://cerquilho.4rtec.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3514106]
Nome=Dois Corregos
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsdoiscorregos.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsdoiscorregos.simplissweb.com.br/nfseservice.svc

[3520608]
Nome=Indiana
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsindiana.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsindiana.simplissweb.com.br/nfseservice.svc

[3524808]
Nome=Jales
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsjales.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsjales.simplissweb.com.br/nfseservice.svc

[3530201]
Nome=Mirante Do Paranapanema
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsmirantedoparanapanema.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsmirantedoparanapanema.simplissweb.com.br/nfseservice.svc

[3534609]
Nome=Osvaldo Cruz
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsosvaldocruz.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsosvaldocruz.simplissweb.com.br/nfseservice.svc

[3538709]
Nome=Piracicaba
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wspiracicaba.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wspiracicaba.simplissweb.com.br/nfseservice.svc

[3541208]
Nome=Presidente Bernardes
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wspresidentebernardes.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wspresidentebernardes.simplissweb.com.br/nfseservice.svc

[3541406]
; Atualizado em 17/08/2021
Nome=Presidente Prudente
UF=SP
Provedor=SimplISS
ProRecepcionar=http://issprudente.sp.gov.br/ws_nfse/nfseservice.svc
;
ProLinkURL=http://issprudente.sp.gov.br/ws_nfse/nfseservice.svc

[3549102]
Nome=Sao Joao da Boa Vista
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wssaojoao.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wssaojoao.simplissweb.com.br/nfseservice.svc

[3549706]
Nome=Sao Jose do Rio Pardo
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wssao_jose_rio_pardo.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wssao_jose_rio_pardo.simplissweb.com.br/nfseservice.svc

[3556404]
Nome=Vargem Grande do Sul
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsvargemgrandedosul.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsvargemgrandedosul.simplissweb.com.br/nfseservice.svc

[3510807]
Nome=Casa Branca
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wscasabranca.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wscasabranca.simplissweb.com.br/nfseservice.svc

[4102109]
Nome=Astorga
UF=PR
Provedor=SimplISS
ProRecepcionar=http://wsastorga.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsastorga.simplissweb.com.br/nfseservice.svc

[4202008]
Nome=Balneario Camboriu
UF=SC
Provedor=SimplISS
ProRecepcionar=http://wsbalneariocamboriu.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsbalneariocamboriu.com.br/nfseservice.svc

[4125506]
Nome=Sao Jose dos Pinhais
UF=PR
Provedor=ISSSJP
ProRecepcionar=https://nfe.sjp.pr.gov.br/servicos/issOnline2/ws/index.php
HomRecepcionar=https://nfe.sjp.pr.gov.br/servicos/issOnline2/homologacao/ws/index.php
;
ProLinkURL=https://nfe.sjp.pr.gov.br/servicos/validarnfse/validar.php?CCM=%InscMunic%&verificador=%CodVerif%&nrnfs=%NumeroNFSe%
HomLinkURL=https://nfe.sjp.pr.gov.br/servicos/validarnfsehomologacao/validar.php?CCM=%InscMunic%&verificador=%CodVerif%&nrnfs=%NumeroNFSe%

[4306403]
Nome=Dois Irmaos
UF=RS
Provedor=IPM

[4306809]
Nome=Encantado
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://encantado.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://encantado.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://encantado.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://encantado.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://encantado.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://encantado.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologaencan.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologaencan.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologaencan.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologaencan.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologaencan.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologaencan.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4307609]
; Atualizado em 26/10/2021
Nome=Estancia Velha
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=http://estanciavelha.nfse-tecnos.com.br:9087/RecepcaoLoteRPS.asmx
ProConsultarLote=http://estanciavelha.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://estanciavelha.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://estanciavelha.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomConsultarNFSeServicoPrestado=http://estanciavelha.nfse-tecnos.com.br:9094/ConsultaNFSeServicosPrestados.asmx
HomConsultarNFSeServicoTomado=http://estanciavelha.nfse-tecnos.com.br:9093/ConsultaNFSeServicosTomadosIntermediados.asmx
ProCancelarNFSe=http://estanciavelha.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://estanciavelha.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://estanciavelha.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=http://homologaestan.nfse-tecnos.com.br:9087/RecepcaoLoteRPS.asmx
HomConsultarLote=http://homologaestan.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologaestan.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologaestan.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomConsultarNFSeServicoPrestado=http://homologaestan.nfse-tecnos.com.br:9094/ConsultaNFSeServicosPrestados.asmx
HomConsultarNFSeServicoTomado=http://homologaestan.nfse-tecnos.com.br:9093/ConsultaNFSeServicosTomadosIntermediados.asmx
HomCancelarNFSe=http://homologaestan.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologaestan.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologaestan.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4307807]
Nome=Estrela
UF=RS
Provedor=IPM

[4308201]
Nome=Flores da Cunha
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://flores.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://flores.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://flores.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://flores.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://flores.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://flores.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologaflo.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologaflo.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologaflo.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologaflo.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologaflo.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologaflo.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4310801]
Nome=Ivoti
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://ivoti.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://ivoti.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://ivoti.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://ivoti.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://ivoti.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://ivoti.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologaivo.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologaivo.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologaivo.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologaivo.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologaivo.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologaivo.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4312476]
Nome=Morro Reuter
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://morroreuter.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://morroreuter.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://morroreuter.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://morroreuter.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://morroreuter.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://morroreuter.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologareuter.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologareuter.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologareuter.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologareuter.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologareuter.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologareuter.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4313300]
Nome=Nova Prata
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://novaprata.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://novaprata.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://novaprata.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://novaprata.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://novaprata.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://novaprata.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologaprata.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologaprata.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologaprata.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologaprata.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologaprata.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologaprata.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4314803]
Nome=Portao
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://portao.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://portao.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://portao.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://portao.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://portao.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://portao.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologapor.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologapor.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologapor.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologapor.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologapor.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologapor.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4316758]
Nome=Santa Clara do Sul
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://santaclaradosul.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://santaclaradosul.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://santaclaradosul.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://santaclaradosul.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://santaclaradosul.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://santaclaradosul.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologasclara.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologasclara.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologasclara.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologasclara.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologasclara.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologasclara.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4319505]
Nome=Sao Sebastiao Do Cai
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://saosebastiaodocai.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://saosebastiaodocai.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://saosebastiaodocai.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://saosebastiaodocai.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://saosebastiaodocai.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://saosebastiaodocai.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologacai.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologacai.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologacai.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologacai.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologacai.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologacai.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4320404]
Nome=Serafina Correa
UF=RS
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://177.20.225.197:8081/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://177.20.225.197:8081/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4321451]
Nome=Teutonia
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://teutonia.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://teutonia.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://teutonia.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://teutonia.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://teutonia.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://teutonia.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologateuto.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologateuto.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologateuto.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologateuto.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologateuto.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologateuto.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4322806]
Nome=Veranopolis
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://veranopolis.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://veranopolis.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://veranopolis.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://veranopolis.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://veranopolis.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://veranopolis.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologaver.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologaver.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologaver.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologaver.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologaver.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologaver.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4205902]
Nome=Gaspar
UF=SC
Provedor=Thema
ProRecepcionar=https://nfse.gaspar.sc.gov.br/nfse/services/NFSEremessa
ProConsultarSituacao=https://nfse.gaspar.sc.gov.br/nfse/services/NFSEconsulta
ProConsultarLote=https://nfse.gaspar.sc.gov.br/nfse/services/NFSEconsulta
ProConsultarNFSeRps=https://nfse.gaspar.sc.gov.br/nfse/services/NFSEconsulta
ProConsultarNFSe=https://nfse.gaspar.sc.gov.br/nfse/services/NFSEconsulta
ProCancelarNFSe=https://nfse.gaspar.sc.gov.br/nfse/services/NFSEcancelamento
ProRecepcionarSincrono=https://nfse.gaspar.sc.gov.br/nfse/services/NFSEremessa
;
HomRecepcionar=http://nfsehml.gaspar.sc.gov.br/nfse/services/NFSEremessa
HomConsultarSituacao=http://nfsehml.gaspar.sc.gov.br/nfse/services/NFSEconsulta
HomConsultarLote=http://nfsehml.gaspar.sc.gov.br/nfse/services/NFSEconsulta
HomConsultarNFSeRps=http://nfsehml.gaspar.sc.gov.br/nfse/services/NFSEconsulta
HomConsultarNFSe=http://nfsehml.gaspar.sc.gov.br/nfse/services/NFSEconsulta
HomCancelarNFSe=http://nfsehml.gaspar.sc.gov.br/nfse/services/NFSEcancelamento
HomRecepcionarSincrono=http://nfsehml.gaspar.sc.gov.br/nfse/services/NFSEremessa

[4317608]
Nome=Santo Antonio da Patrulha
UF=RS
Provedor=Thema
ProRecepcionar=http://nfse.pmsap.com.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=http://nfse.pmsap.com.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=http://nfse.pmsap.com.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://nfse.pmsap.com.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=http://nfse.pmsap.com.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=http://nfse.pmsap.com.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://nfse.pmsap.com.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=http://nfsehomologacao.pmsap.com.br/nfsehml/services/NFSEremessa
HomConsultarSituacao=http://nfsehomologacao.pmsap.com.br/nfsehml/services/NFSEconsulta
HomConsultarLote=http://nfsehomologacao.pmsap.com.br/nfsehml/services/NFSEconsulta
HomConsultarNFSeRps=http://nfsehomologacao.pmsap.com.br/nfsehml/services/NFSEconsulta
HomConsultarNFSe=http://nfsehomologacao.pmsap.com.br/nfsehml/services/NFSEconsulta
HomCancelarNFSe=http://nfsehomologacao.pmsap.com.br/nfsehml/services/NFSEcancelamento
HomRecepcionarSincrono=http://nfsehomologacao.pmsap.com.br/nfsehml/services/NFSEremessa

[4303103]
; Atualizado em 23/12/2021
Nome=Cachoeirinha
UF=RS
Provedor=IPM
Params=Assinar:AssRpsGerarNFSe,AssCancelarNFSe
;
ProRecepcionar=http://sync.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
HomRecepcionar=http://sync.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1

[4307708]
Nome=Esteio
UF=RS
Provedor=Thema
ProRecepcionar=http://grp.esteio.rs.gov.br/nfse/services/NFSEremessa
ProConsultarSituacao=http://grp.esteio.rs.gov.br/nfse/services/NFSEconsulta
ProConsultarLote=http://grp.esteio.rs.gov.br/nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://grp.esteio.rs.gov.br/nfse/services/NFSEconsulta
ProConsultarNFSe=http://grp.esteio.rs.gov.br/nfse/services/NFSEconsulta
ProCancelarNFSe=http://grp.esteio.rs.gov.br/nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://grp.esteio.rs.gov.br/nfse/services/NFSEremessa
;
HomRecepcionar=http://grp.esteio.rs.gov.br/nfsehml/services/NFSEremessa
HomConsultarSituacao=http://grp.esteio.rs.gov.br/nfsehml/services/NFSEconsulta
HomConsultarLote=http://grp.esteio.rs.gov.br/nfsehml/services/NFSEconsulta
HomConsultarNFSeRps=http://grp.esteio.rs.gov.br/nfsehml/services/NFSEconsulta
HomConsultarNFSe=http://grp.esteio.rs.gov.br/nfsehml/services/NFSEconsulta
HomCancelarNFSe=http://grp.esteio.rs.gov.br/nfsehml/services/NFSEcancelamento
HomRecepcionarSincrono=http://grp.esteio.rs.gov.br/nfsehml/services/NFSEremessa

[4310330]
Nome=Imbe
UF=RS
Provedor=Thema
ProRecepcionar=http://nfse.imbe.rs.gov.br/nfse/services/NFSEremessa
ProConsultarSituacao=http://nfse.imbe.rs.gov.br/nfse/services/NFSEconsulta
ProConsultarLote=http://nfse.imbe.rs.gov.br/nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://nfse.imbe.rs.gov.br/nfse/services/NFSEconsulta
ProConsultarNFSe=http://nfse.imbe.rs.gov.br/nfse/services/NFSEconsulta
ProCancelarNFSe=http://nfse.imbe.rs.gov.br/nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://nfse.imbe.rs.gov.br/nfse/services/NFSEremessa
;
HomRecepcionar=http://nfsehml.imbe.rs.gov.br/nfse/services/NFSEremessa
HomConsultarSituacao=http://nfsehml.imbe.rs.gov.br/nfse/services/NFSEconsulta
HomConsultarLote=http://nfsehml.imbe.rs.gov.br/nfse/services/NFSEconsulta
HomConsultarNFSeRps=http://nfsehml.imbe.rs.gov.br/nfse/services/NFSEconsulta
HomConsultarNFSe=http://nfsehml.imbe.rs.gov.br/nfse/services/NFSEconsulta
HomCancelarNFSe=http://nfsehml.imbe.rs.gov.br/nfse/services/NFSEcancelamento
HomRecepcionarSincrono=http://nfsehml.imbe.rs.gov.br/nfse/services/NFSEremessa

[4311403]
Nome=Lajeado
UF=RS
Provedor=Thema
ProRecepcionar=http://nfse.lajeado.rs.gov.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=http://nfse.lajeado.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=http://nfse.lajeado.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://nfse.lajeado.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=http://nfse.lajeado.rs.gov.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=http://nfse.lajeado.rs.gov.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://nfse.lajeado.rs.gov.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=http://nfsehml.lajeado.rs.gov.br/thema-nfse/services/NFSEremessa
HomConsultarSituacao=http://nfsehml.lajeado.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarLote=http://nfsehml.lajeado.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSeRps=http://nfsehml.lajeado.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSe=http://nfsehml.lajeado.rs.gov.br/thema-nfse/services/NFSEconsulta
HomCancelarNFSe=http://nfsehml.lajeado.rs.gov.br/thema-nfse/services/NFSEcancelamento
HomRecepcionarSincrono=http://nfsehml.lajeado.rs.gov.br/thema-nfse/services/NFSEremessa

[4312401]
Nome=Montenegro
UF=RS
Provedor=Thema
ProRecepcionar=https://nfe.montenegro.rs.gov.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=https://nfe.montenegro.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=https://nfe.montenegro.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=https://nfe.montenegro.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=https://nfe.montenegro.rs.gov.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=https://nfe.montenegro.rs.gov.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=https://nfe.montenegro.rs.gov.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=https://nfsehml.montenegro.rs.gov.br/nfsehml/services/NFSEremessa
HomConsultarSituacao=https://nfsehml.montenegro.rs.gov.br/nfsehml/services/NFSEconsulta
HomConsultarLote=https://nfsehml.montenegro.rs.gov.br/nfsehml/services/NFSEconsulta
HomConsultarNFSeRps=https://nfsehml.montenegro.rs.gov.br/nfsehml/services/NFSEconsulta
HomConsultarNFSe=https://nfsehml.montenegro.rs.gov.br/nfsehml/services/NFSEconsulta
HomCancelarNFSe=https://nfsehml.montenegro.rs.gov.br/nfsehml/services/NFSEcancelamento
HomRecepcionarSincrono=https://nfsehml.montenegro.rs.gov.br/nfsehml/services/NFSEremessa

[4312658]
Nome=Nao-Me-Toque
UF=RS
Provedor=Thema
ProRecepcionar=http://nfse.naometoquers.com.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=http://nfse.naometoquers.com.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=http://nfse.naometoquers.com.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://nfse.naometoquers.com.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=http://nfse.naometoquers.com.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=http://nfse.naometoquers.com.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://nfse.naometoquers.com.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=http://nfsehml.naometoquers.com.br/thema-nfse/services/NFSEremessa
HomConsultarSituacao=http://nfsehml.naometoquers.com.br/thema-nfse/services/NFSEconsulta
HomConsultarLote=http://nfsehml.naometoquers.com.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSeRps=http://nfsehml.naometoquers.com.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSe=http://nfsehml.naometoquers.com.br/thema-nfse/services/NFSEconsulta
HomCancelarNFSe=http://nfsehml.naometoquers.com.br/thema-nfse/services/NFSEcancelamento
HomRecepcionarSincrono=http://nfsehml.naometoquers.com.br/thema-nfse/services/NFSEremessa

[4314100]
Nome=Passo Fundo
UF=RS
Provedor=Thema
ProRecepcionar=http://nfse.pmpf.rs.gov.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=http://nfse.pmpf.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=http://nfse.pmpf.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://nfse.pmpf.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=http://nfse.pmpf.rs.gov.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=http://nfse.pmpf.rs.gov.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://nfse.pmpf.rs.gov.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=http://hmlnfse.pmpf.rs.gov.br/thema-nfse/services/NFSEremessa
HomConsultarSituacao=http://hmlnfse.pmpf.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarLote=http://hmlnfse.pmpf.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSeRps=http://hmlnfse.pmpf.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSe=http://hmlnfse.pmpf.rs.gov.br/thema-nfse/services/NFSEconsulta
HomCancelarNFSe=http://hmlnfse.pmpf.rs.gov.br/thema-nfse/services/NFSEcancelamento
HomRecepcionarSincrono=http://hmlnfse.pmpf.rs.gov.br/thema-nfse/services/NFSEremessa

[4316808]
Nome=Santa Cruz Do Sul
UF=RS
Provedor=Thema
ProRecepcionar=http://nfse.santacruz.rs.gov.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=http://nfse.santacruz.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=http://nfse.santacruz.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://nfse.santacruz.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=http://nfse.santacruz.rs.gov.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=http://nfse.santacruz.rs.gov.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://nfse.santacruz.rs.gov.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=http://grphml.santacruz.rs.gov.br/thema-nfse-hml/services/NFSEremessa
HomConsultarSituacao=http://grphml.santacruz.rs.gov.br/thema-nfse-hml/services/NFSEconsulta
HomConsultarLote=http://grphml.santacruz.rs.gov.br/thema-nfse-hml/services/NFSEconsulta
HomConsultarNFSeRps=http://grphml.santacruz.rs.gov.br/thema-nfse-hml/services/NFSEconsulta
HomConsultarNFSe=http://grphml.santacruz.rs.gov.br/thema-nfse-hml/services/NFSEconsulta
HomCancelarNFSe=http://grphml.santacruz.rs.gov.br/thema-nfse-hml/services/NFSEcancelamento
HomRecepcionarSincrono=http://grphml.santacruz.rs.gov.br/thema-nfse-hml/services/NFSEremessa

[4318200]
Nome=Sao Franciso de Paula
UF=RS
Provedor=Thema
ProRecepcionar=http://srv-java-prd.pmsfp.oc.cloud.thema.inf.br/nfse/services/NFSEremessa
ProConsultarSituacao=http://srv-java-prd.pmsfp.oc.cloud.thema.inf.br/nfse/services/NFSEconsulta
ProConsultarLote=http://srv-java-prd.pmsfp.oc.cloud.thema.inf.br/nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://srv-java-prd.pmsfp.oc.cloud.thema.inf.br/nfse/services/NFSEconsulta
ProConsultarNFSe=http://srv-java-prd.pmsfp.oc.cloud.thema.inf.br/nfse/services/NFSEconsulta
ProCancelarNFSe=http://srv-java-prd.pmsfp.oc.cloud.thema.inf.br/nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://srv-java-prd.pmsfp.oc.cloud.thema.inf.br/nfse/services/NFSEremessa
;
HomRecepcionar=aaaa/services/NFSEremessa
HomConsultarSituacao=aaaa/services/NFSEconsulta
HomConsultarLote=aaaa/services/NFSEconsulta
HomConsultarNFSeRps=aaaa/services/NFSEconsulta
HomConsultarNFSe=aaaa/services/NFSEconsulta
HomCancelarNFSe=aaaa/services/NFSEcancelamento
HomRecepcionarSincrono=aaaa/services/NFSEremessa

[4318705]
Nome=Sao Leopoldo
UF=RS
Provedor=Thema
ProRecepcionar=https://nfe.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=https://nfe.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=https://nfe.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=https://nfe.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=https://nfe.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=https://nfe.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=https://nfe.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=http://nfehomologacao.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEremessa
HomConsultarSituacao=http://nfehomologacao.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarLote=http://nfehomologacao.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSeRps=http://nfehomologacao.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSe=http://nfehomologacao.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEconsulta
HomCancelarNFSe=http://nfehomologacao.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEcancelamento
HomRecepcionarSincrono=http://nfehomologacao.saoleopoldo.rs.gov.br/thema-nfse/services/NFSEremessa

[4321204]
Nome=Taquara
UF=RS
Provedor=Thema
ProRecepcionar=http://nfse.taquara.rs.gov.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=http://nfse.taquara.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=http://nfse.taquara.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://nfse.taquara.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=http://nfse.taquara.rs.gov.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=http://nfse.taquara.rs.gov.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://nfse.taquara.rs.gov.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=http://nfsehomologacao.taquara.rs.gov.br/thema-nfse/services/NFSEremessa
HomConsultarSituacao=http://nfsehomologacao.taquara.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarLote=http://nfsehomologacao.taquara.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSeRps=http://nfsehomologacao.taquara.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSe=http://nfsehomologacao.taquara.rs.gov.br/thema-nfse/services/NFSEconsulta
HomCancelarNFSe=http://nfsehomologacao.taquara.rs.gov.br/thema-nfse/services/NFSEcancelamento
HomRecepcionarSincrono=http://nfsehomologacao.taquara.rs.gov.br/thema-nfse/services/NFSEremessa

[4322608]
Nome=Venancio Aires
UF=RS
Provedor=Thema
ProRecepcionar=http://nfe.venancioaires.rs.gov.br/thema-nfse/services/NFSEremessa
ProConsultarSituacao=http://nfe.venancioaires.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarLote=http://nfe.venancioaires.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSeRps=http://nfe.venancioaires.rs.gov.br/thema-nfse/services/NFSEconsulta
ProConsultarNFSe=http://nfe.venancioaires.rs.gov.br/thema-nfse/services/NFSEconsulta
ProCancelarNFSe=http://nfe.venancioaires.rs.gov.br/thema-nfse/services/NFSEcancelamento
ProRecepcionarSincrono=http://nfe.venancioaires.rs.gov.br/thema-nfse/services/NFSEremessa
;
HomRecepcionar=http://nfehml.venancioaires.rs.gov.br/thema-nfse/services/NFSEremessa
HomConsultarSituacao=http://nfehml.venancioaires.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarLote=http://nfehml.venancioaires.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSeRps=http://nfehml.venancioaires.rs.gov.br/thema-nfse/services/NFSEconsulta
HomConsultarNFSe=http://nfehml.venancioaires.rs.gov.br/thema-nfse/services/NFSEconsulta
HomCancelarNFSe=http://nfehml.venancioaires.rs.gov.br/thema-nfse/services/NFSEcancelamento
HomRecepcionarSincrono=http://nfehml.venancioaires.rs.gov.br/thema-nfse/services/NFSEremessa

[3300100]
Nome=Angra dos Reis
UF=RJ
Provedor=Tiplan
ProRecepcionar=https://www.spe.angra.rj.gov.br/nfse/WSNacional/nfse.asmx
HomRecepcionar=
;
ProLinkURL=https://www.spe.angra.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://www.spe.angra.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[3300407]
; Alterado em 22/02/2022
Nome=Barra Mansa
UF=RJ
Provedor=ISSNet
Params=NaoDividir100:
;
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/barramansa/servicos.asmx

[3301702]
Nome=Duque de Caxias
UF=RJ
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/duquedecaxias/servicos.asmx

[3302007]
Nome=Itaguai
UF=RJ
Provedor=Tiplan
ProRecepcionar=https://spe.itaguai.rj.gov.br/nfse/WSNacional/nfse.asmx
HomRecepcionarhttps://spe.itaguai.rj.gov.br/nfse/WSNacional/nfse.asmx
;
ProLinkURL=https://spe.itaguai.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://spe.itaguai.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[3302403]
Nome=Macae
UF=RJ
Provedor=Tiplan
ProRecepcionar=https://spe.macae.rj.gov.br/nfse/WSNacional/nfse.asmx
HomRecepcionarhttps://spe.macae.rj.gov.br/nfse/WSNacional/nfse.asmx
;
ProLinkURL=https://spe.macae.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://spe.macae.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[3302601]
Nome=Mangaratiba
UF=RJ
Provedor=Tiplan
ProRecepcionar=https://spe.mangaratiba.rj.gov.br/nfse/WSNacional/nfse.asmx
HomRecepcionarhttps://spe.mangaratiba.rj.gov.br/nfse/WSNacional/nfse.asmx
;
ProLinkURL=https://spe.mangaratiba.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://spe.mangaratiba.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[3304201]
; Atualizado em 11/06/2021
Nome=Resende
UF=RJ
Provedor=Betha

[3304524]
Nome=Rio das Ostras
UF=RJ
Provedor=Tiplan
ProRecepcionar=https://spe.riodasostras.rj.gov.br/nfse/WSNacional/nfse.asmx
HomRecepcionarhttps://spe.riodasostras.rj.gov.br/nfse/WSNacional/nfse.asmx
;
ProLinkURL=https://spe.riodasostras.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://spe.riodasostras.rj.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[3501608]
; Atualizado em 03/08/2021
Nome=Americana
UF=SP
Provedor=Tiplan
ProRecepcionar=https://nfse.americana.sp.gov.br/nfse/WSNacional/nfse.asmx
HomRecepcionarhttps://nfse.americana.sp.gov.br/nfse/WSNacional/nfse.asmx
;
ProLinkURL=https://nfse.americana.sp.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://nfse.americana.sp.gov.br/nfse.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[2408003]
Nome=Mossoro
UF=RN
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/mossoro/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/mossoro/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/mossoro/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/mossoro/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/mossoro/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/mossoro/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/mossoro/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/mossoro/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testemos/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testemos/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testemos/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testemos/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testemos/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testemos/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testemos/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testemos/WSNFSE.RecepcionarLoteRpsSincrono.cls

[2403251]
Nome=Parnamirim
UF=RN
Provedor=Tinus
Versao=1.01
ProRecepcionar=http://www.tinus.com.br/csp/parnamirim/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/parnamirim/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/parnamirim/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/parnamirim/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/parnamirim/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/parnamirim/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/parnamirim/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/parnamirim/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testepar/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testepar/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testepar/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testepar/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testepar/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testepar/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testepar/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testepar/WSNFSE.RecepcionarLoteRpsSincrono.cls

[2412005]
Nome=Sao Goncalo
UF=RN
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/saogoncalo/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/saogoncalo/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/saogoncalo/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/saogoncalo/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/saogoncalo/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/saogoncalo/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/saogoncalo/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/saogoncalo/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testegon/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testegon/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testegon/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testegon/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testegon/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testegon/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testegon/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testegon/WSNFSE.RecepcionarLoteRpsSincrono.cls

[2602902]
Nome=Cabo de Santo Agostinho
UF=PE
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/cabo/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/cabo/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/cabo/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/cabo/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/cabo/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/cabo/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/cabo/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/cabo/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testecab/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testecab/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testecab/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testecab/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testecab/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testecab/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testecab/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testecab/WSNFSE.RecepcionarLoteRpsSincrono.cls

[2607901]
Nome=Jaboatao dos Guararapes
UF=PE
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/jaboatao/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/jaboatao/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/jaboatao/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/jaboatao/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/jaboatao/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/jaboatao/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/jaboatao/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/jaboatao/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testejab/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testejab/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testejab/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testejab/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testejab/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testejab/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testejab/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testejab/WSNFSE.RecepcionarLoteRpsSincrono.cls

[5101803]
; Atualizado em 24/01/2022
Nome=Barra do Garcas
UF=MT
Provedor=Coplan
Versao=2.01
ProRecepcionar=https://www.gp.srv.br/tributario_barradogarcas/servlet/anfse_web_service
;
ProLinkURL=http://www.gp.srv.br/tributario_barradogarcas/servlet/tnfse_validacao?%CodVerif%
HomLinkURL=http://www.gp.srv.br/tributario_barradogarcas/servlet/tnfse_validacao?%CodVerif%

[3205200]
; Atualizado em 03/08/2021
Nome=Vila Velha
UF=ES
Provedor=SmarAPD
Versao=2.03
ProRecepcionar=https://tributacao.vilavelha.es.gov.br/tbw/services/Abrasf23
HomRecepcionar=
;
ProLinkURL=
HomLinkURL=

[3205309]
Nome=Vitoria
UF=ES
Provedor=ISSVitoria
Versao=2.00
ProRecepcionar=https://wsnfse.vitoria.es.gov.br/producao/NotaFiscalService.asmx
HomRecepcionar=https://wsnfse.vitoria.es.gov.br/homologacao/NotaFiscalService.asmx
;
ProLinkURL=http://nfse.vitoria.es.gov.br/isiss/Aberto/exibenfe.cfm?key=%CodVerif%&num=%NumeroNFSe%
HomLinkURL=http://nfse.vitoria.es.gov.br/isiss/Aberto/exibenfe.cfm?key=%CodVerif%&num=%NumeroNFSe%

[1100049]
; Atualizado em 17/11/2021
Nome=Cacoal
UF=RO
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://cacoalro.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://cacoalro.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[1500958]
Nome=Aurora Do Para
UF=PA
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/auroradoparapa_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/auroradoparapa_wsnfse_homolog/NfseServices.svc

[1507003]
Nome=Santo Antonio do Taua
UF=PA
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/santoantoniodotauapa_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/santoantoniodotauapa_wsnfse_homolog/NfseServices.svc

[1507102]
Nome=Sao Caetano De Odivelas
UF=PA
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/saocaetanodeodivelaspa_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/saocaetanodeodivelaspa_wsnfse_homolog/NfseServices.svc

[1721000]
Nome=Palmas
UF=TO
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://palmasto.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://palmasto.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[1718204]
Nome=Porto Nacional
UF=TO
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://portonacionalto.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://portonacionalto.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[2100204]
Nome=Alcantara
UF=MA
Provedor=WebISS
ProRecepcionar=https://www5.webiss.com.br/alcantarama_wsnfse/NfseServices.svc
HomRecepcionar=https://www5.webiss.com.br/alcantarama_wsnfse_homolog/NfseServices.svc

[2110005]
Nome=Santa Luzia
UF=MA
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/santaluziama_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/santaluziama_wsnfse_homolog/NfseServices.svc

[2211308]
Nome=Valenca do Piaui
UF=PI
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/valencadopiauipi_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/valencadopiauipi_wsnfse_homolog/NfseServices.svc

[2800308]
Nome=Aracaju
UF=SE
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://aracajuse.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://aracajuse.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[2801009]
Nome=Campo do Brito
UF=SE
Provedor=WebISS
ProRecepcionar=https://www3.webiss.com.br/campodobritose_wsnfse/NfseServices.svc
HomRecepcionar=https://www3.webiss.com.br/campodobritose_wsnfse_homolog/NfseServices.svc

[2802106]
Nome=Estancia
UF=SE
Provedor=WebISS
ProRecepcionar=https://www3.webiss.com.br/estanciase_wsnfse/NfseServices.svc
HomRecepcionar=https://www3.webiss.com.br/estanciase_wsnfse_homolog/NfseServices.svc

[2803302]
Nome=Japaratuba
UF=SE
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/japaratubase_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/japaratubase_wsnfse_homolog/NfseServices.svc

[2803500]
Nome=Lagarto
UF=SE
Provedor=Tributus
Versao=2.04
ProRecepcionar=https://www.tributosmunicipais.com.br/nfse/api/nfse.wsdl
HomRecepcionar=

[2901007]
Nome=Amargosa
UF=BA
Provedor=WebISS
ProRecepcionar=https://www1.webiss.com.br/amargosaba_wsnfse/NfseServices.svc
HomRecepcionar=https://www1.webiss.com.br/amargosaba_wsnfse_homolog/NfseServices.svc

[2901106]
Nome=Amelia Rodrigues
UF=BA
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/ameliarodriguesba_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/ameliarodriguesba_wsnfse_homolog/NfseServices.svc

[2906501]
Nome=Candeias
UF=BA
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://www4.webiss.com.br/candeiasba_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/candeiasba_wsnfse_homolog/NfseServices.svc

[2910800]
Nome=Feira de Santana
UF=BA
Provedor=WebISS
ProRecepcionar=https://feiradesantanaba.webiss.com.br/servicos/wsnfse/nfseServices.svc
HomRecepcionar=https://feiradesantanaba.webiss.com.br/servicos/wsnfse_homolog/nfseServices.svc

[2914802]
Nome=Itabuna
UF=BA
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://itabunaba.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://itabunaba.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[2916401]
Nome=Itapetinga
UF=BA
Provedor=WebISS
ProRecepcionar=https://www5.webiss.com.br/itapetingaba_wsnfse/NfseServices.svc
HomRecepcionar=https://www5.webiss.com.br/itapetingaba_wsnfse_homolog/NfseServices.svc

[2932606]
Nome=Urandi
UF=BA
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/urandiba_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/urandiba_wsnfse_homolog/NfseServices.svc

[3104205]
Nome=Arcos
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://arcosmg.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://arcosmg.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3107406]
; Atualizado em 23/02/2022
Nome=Bom Despacho
UF=MG
Provedor=IPM
Versao=1.01
ProRecepcionar=https://ws-bomdespacho.atende.net:7443/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes

[3134608]
Nome=Jaboticatubas
UF=MG
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/jaboticatubasmg_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/jaboticatubasmg_wsnfse_homolog/NfseServices.svc

[3138807]
; Atualizado em 11/06/2021
Nome=Luz
UF=MG
Provedor=Betha

[3141108]
Nome=Matozinhos
UF=MG
Provedor=NFSeBrasil

[3153608]
Nome=Prudente de Morais
UF=MG
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/prudentedemoraismg_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/prudentedemoraismg_wsnfse_homolog/NfseServices.svc

[3159001]
Nome=Santana do Riacho
UF=MG
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/santanadoriachomg_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/santanadoriachomg_wsnfse_homolog/NfseServices.svc

[3171105]
Nome=Verissimo
UF=MG
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/verissimomg_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/verissimomg_wsnfse_homolog/NfseServices.svc

[2907509]
Nome=Catu
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://catu.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-catu.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://catu.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://catu.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2919553]
; Atualizado em 14/12/2021
Nome=Luiz Eduardo Magalhaes
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://luiseduardomagalhaes.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-luiseduardomagalhaes.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://luiseduardomagalhaes.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://luiseduardomagalhaes.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[2925204]
Nome=Pojuca
UF=BA
Provedor=WebISS
ProRecepcionar=https://www.webiss.com.br/bapojuca_wsnfse/NfseServices.svc
HomRecepcionar=https://www.webiss.com.br/bapojuca_wsnfse_homolog/NfseServices.svc

[3101508]
; Atualizado em 09/12/2021
Nome=Alem do Paraiba
UF=MG
Provedor=Actcon
Versao=2.02
;
ProRecepcionar=https://nfse-mg-alemparaiba.portalfacil.com.br/nfseserv/webservice/servicos
HomRecepcionar=https://nfse-mg-alemparaiba.portalfacil.com.br/homologacao/webservice/servicos
;
ProXMLNameSpace=http://nfse-mg-alemparaiba.portalfacil.com.br/nfseserv/schema/nfse_v202.xsd
HomXMLNameSpace=http://nfse-mg-alemparaiba.portalfacil.com.br/homologacao/schema/nfse_v202.xsd
;
ProNameSpace=http://nfse-mg-alemparaiba.portalfacil.com.br/nfseserv/webservice/nfse.wsdl
HomNameSpace=http://nfse-mg-alemparaiba.portalfacil.com.br/homologacao/webservice/nfse.wsdl
;
ProSoapAction=http://nfse-mg-alemparaiba.portalfacil.com.br/nfseserv/webservice/servicos#
HomSoapAction=http://nfse-mg-alemparaiba.portalfacil.com.br/homologacao/webservice/servicos#

[3105608]
Nome=Barbacena
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://barbacenamg.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://barbacenamg.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3105905]
; Atualizado em 11/06/2021
Nome=Barroso
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://barroso.nfiss.com.br/soap/
;
ProLinkURL=https://barroso.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_barroso.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3110202]
Nome=Cajuri
UF=MG
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/cajurimg_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/cajurimg_wsnfse_homolog/NfseServices.svc

[3110509]
Nome=Camanducaia
UF=MG
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://www.servicosweb.com.br:9039/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://www.servicosweb.com.br:9039/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3111200]
; Atualizado em 26/08/2021
Nome=Campo Belo
UF=MG
Provedor=IPM
Versao=1.01
ProRecepcionar=https://campobelo.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[3119401]
Nome=Coronel Fabriciano
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/fabriciano
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/fabriciano

[3126109]
Nome=Formiga
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://formigamg.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://formigamg.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3127107]
; Atualizado em 19/07/2021
Nome=Frutal
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/frutal
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/frutal

[3133808]
; Atualizado em 29/11/2021
Nome=Itauna
UF=MG
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/itauna/servicos.asmx

[3136207]
Nome=Joao Monlevade
UF=MG
Provedor=SimplISS
ProRecepcionar=http://wsjoaomonlevade.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsjoaomonlevade.com.br/nfseservice.svc

[3145208]
Nome=Nova Serrana
UF=MG
Provedor=SigCorp
Versao=2.03
ProRecepcionar=http://abrasfnovaserrana.sigbancos.com.br/servico.asmx
HomRecepcionar=http://testeabrasfnovaserrana.sigbancos.com.br/servico.asmx

[3147907]
; Atualizado em 17/09/2021
Nome=Passos
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://passosmg.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://passosmg.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3150703]
; Atualizado em 11/06/2021
Nome=Pirajuba
UF=MG
Provedor=Betha

[3152303]
Nome=Porto Firme
UF=MG
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/portofirmemg_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/portofirmemg_wsnfse_homolog/NfseServices.svc

[3155702]
Nome=Rio Piracicaba
UF=MG
Provedor=WebISS
ProRecepcionar=https://www3.webiss.com.br/riopiracicabamg_wsnfse/NfseServices.svc
HomRecepcionar=https://www3.webiss.com.br/riopiracicabamg_wsnfse_homolog/NfseServices.svc

[3157203]
Nome=Santa Barbara
UF=MG
Provedor=WebISS
ProRecepcionar=https://www3.webiss.com.br/santabarbaramg_wsnfse/NfseServices.svc
HomRecepcionar=https://www3.webiss.com.br/santabarbaramg_wsnfse_homolog/NfseServices.svc

[3159605]
Nome=Santa Rita do Sapucai
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://santaritadosapucai.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://santaritadosapucai.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3162104]
Nome=Sao Gotardo
UF=MG
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/saogotardomg_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/saogotardomg_wsnfse_homolog/NfseServices.svc

[3170107]
Nome=Uberaba
UF=MG
Provedor=WebISS
ProRecepcionar=https://www1.webiss.com.br/Uberaba_wsnfse/NfseServices.svc
HomRecepcionar=https://www1.webiss.com.br/Uberaba_wsnfse_homolog/NfseServices.svc

[3300803]
; Atualizado em 11/06/2021
Nome=Cachoeiras de Macacu
UF=RJ
Provedor=Betha

[3301207]
Nome=Carmo
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/carmorj_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/carmorj_wsnfse_homolog/NfseServices.svc

[3301306]
; Atualizado em 11/06/2021
Nome=Casimiro de Abreu
UF=RJ
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/casimirodeabreu/servicos.asmx

[3301504]
Nome=Cordeiro
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www3.webiss.com.br/cordeirorj_wsnfse/NfseServices.svc
HomRecepcionar=https://www3.webiss.com.br/cordeirorj_wsnfse_homolog/NfseServices.svc

[3302908]
Nome=Miguel Pereira
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www1.webiss.com.br/miguelpereirarj_wsnfse/NfseServices.svc
HomRecepcionar=https://www1.webiss.com.br/miguelpereirarj_wsnfse_homolog/NfseServices.svc

[3303302]
Nome=Niteroi
UF=RJ
Provedor=Tiplan
Versao=2.03
ProRecepcionar=https://nfse.niteroi.rj.gov.br/nfse/wsnacional2/nfse.asmx
HomRecepcionar=https://niteroihomologacao.nfe.com.br/nfse/wsnacional2/nfse.asmx

[3303401]
Nome=Nova Friburgo
UF=RJ
Provedor=EL
Versao=2.04
ProRecepcionar=http://rj-novafriburgo-pm-nfs.cloud.el.com.br/NfseWSService
HomRecepcionar=http://rj-novafriburgo-pm-nfs.cloud.el.com.br/NfseWSService

[3303856]
Nome=Paty do Alferes
UF=RJ
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://www1.webiss.com.br/patydoalferesrj_wsnfse/NfseServices.svc
HomRecepcionar=https://www1.webiss.com.br/patydoalferesrj_wsnfse_homolog/NfseServices.svc

[3304110]
Nome=Porto Real
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www1.webiss.com.br/rjportoreal_wsnfse/NfseServices.svc
HomRecepcionar=https://www1.webiss.com.br/rjportoreal_wsnfse_homolog/NfseServices.svc

[3304144]
Nome=Queimados
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www1.webiss.com.br/queimadosrj_wsnfse/NfseServices.svc
HomRecepcionar=https://www1.webiss.com.br/queimadosrj_wsnfse_homolog/NfseServices.svc

[3304607]
Nome=Santa Maria Madalena
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www3.webiss.com.br/santamariamadalenarj_wsnfse/NfseServices.svc
HomRecepcionar=https://www3.webiss.com.br/santamariamadalenarj_wsnfse_homolog/NfseServices.svc

[3305000]
Nome=Sao Joao da Barra
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www3.webiss.com.br/saojoaodabarrarj_wsnfse/NfseServices.svc
HomRecepcionar=https://www3.webiss.com.br/saojoaodabarrarj_wsnfse_homolog/NfseServices.svc

[3305604]
Nome=Silva Jardim
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www3.webiss.com.br/silvajardimrj_wsnfse/NfseServices.svc
HomRecepcionar=https://www3.webiss.com.br/silvajardimrj_wsnfse_homolog/NfseServices.svc

[3305802]
Nome=Teresopolis
UF=RJ
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://teresopolisrj.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://teresopolisrj.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3305901]
Nome=Trajano de Moraes
UF=RJ
Provedor=WebISS
ProRecepcionar=https://www1.webiss.com.br/trajanodemoraesrj_wsnfse/NfseServices.svc
HomRecepcionar=https://www1.webiss.com.br/trajanodemoraesrj_wsnfse_homolog/NfseServices.svc

[3125101]
Nome=Extrema
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://extremamg.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://extremamg.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[4209607]
Nome=Lauro Muller
UF=SC
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://lauromullersc.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://lauromullersc.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[4210100]
; Atualizado em 09/09/2021
Nome=Mafra
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/mafra_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/nfse_integracao/Services

[4211108]
Nome=Monte Castelo
UF=SC
Provedor=WebISS
ProRecepcionar=https://www4.webiss.com.br/montecastelosc_wsnfse/NfseServices.svc
HomRecepcionar=https://www4.webiss.com.br/montecastelosc_wsnfse_homolog/NfseServices.svc

[4212205]
; Atualizado em 11/06/2021
Nome=Papanduva
UF=SC
Provedor=Betha

[4301602]
Nome=Bage
UF=RS
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://bagers.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://bagers.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[5101308]
Nome=Arenapolis
UF=MT
Provedor=ISSIntel
ProNameSpace=http://arenapolis-mt.issintel.com.br/webservices/abrasf/api
HomNameSpace=http://arenapolis-mt.treino-issintel.com.br/webservices/abrasf/api
;
ProRecepcionar=https://arenapolis-mt.issintel.com.br/webservices/abrasf/api
HomRecepcionar=https://arenapolis-mt.treino-issintel.com.br/webservices/abrasf/api
;
ProSoapAction=http://arenapolis-mt.issintel.com.br/webservices/abrasf/api/
HomSoapAction=http://arenapolis-mt.treino-issintel.com.br/webservices/abrasf/api/

[5101704]
Nome=Barra do Bugres
UF=MT
Provedor=FISSLex
ProRecepcionar=https://barradobugres.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://barradobugres.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://barradobugres.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://barradobugres.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://barradobugres.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://barradobugres.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://barradobugres.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[5105259]
; Atualizado em 01/02/2022
Nome=Lucas do Rio Verde
UF=MT
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[5107305]
; Atualizado em 16/11/2021
Nome=Sao Jose do Rio Claro
UF=MT
Provedor=Agili
Params=NomeTagAtividadeEconomica:ItemLei116AtividadeEconomica
;
ProRecepcionar=https://agiliblue.agilicloud.com.br/api/EnviarLoteRps
ProConsultarLote=https://agiliblue.agilicloud.com.br/api/ConsultarLoteRps
ProConsultarNFSeRps=https://agiliblue.agilicloud.com.br/api/ConsultarNfseRps
ProConsultarNFSe=https://agiliblue.agilicloud.com.br/api/ConsultarNfseFaixa
ProCancelarNFSe=https://agiliblue.agilicloud.com.br/api/CancelarNfse
ProGerarNFSe=https://agiliblue.agilicloud.com.br/api/GerarNfse
ProSubstituirNFSe=https://agiliblue.agilicloud.com.br/api/SubstituirNfse
;
HomRecepcionar=
HomConsultarLote=
HomConsultarNFSeRps=
HomConsultarNFSe=
HomCancelarNFSe=
HomGerarNFSe=
HomSubstituirNFSe=

[5107958]
Nome=Tangara da Serra
UF=MT
Provedor=RLZ
Versao=2.03
ProRecepcionar=http://177.190.246.28/webservice/nfse
HomRecepcionar=http://saturno.rlz.com.br:3080/mt/tangaradaserra/webservice/nfse

[3537404]
Nome=Pereira Barreto
UF=SP
Provedor=RLZ
Versao=2.03
ProRecepcionar=http://pereirabarreto.sp.gov.br/webservice/nfse
HomRecepcionar=http://saturno.rlz.com.br:3080/sp/pereirabarreto/webservice/nfse

[5204508]
Nome=Caldas Novas
UF=GO
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://caldasnovasgo.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://caldasnovasgo.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3118304]
Nome=Conselheiro Lafaiete
UF=MG
Provedor=ISSDigital
Versao=2.00
ProRecepcionar=http://lafaiete.supernova.com.br:8090/nfe/snissdigitalsvc
HomRecepcionar=

[3120904]
Nome=Curvelo
UF=MG
Provedor=NFSeBrasil

[3169356]
Nome=Tres Marias
UF=MG
Provedor=NFSeBrasil

[3171204]
Nome=Vespasiano
UF=MG
Provedor=NFSeBrasil

[3519006]
Nome=Herculandia
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsherculandia.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsherculandia.com.br/nfseservice.svc

[5006309]
Nome=Paranaiba
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/paranaiba/servicos.asmx

[3555406]
Nome=Ubatuba
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://ubatuba.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://ubatuba.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[4310603]
Nome=Itaqui
UF=RS
Provedor=DBSeller
ProRecepcionar=https://nfse.itaqui.rs.gov.br/webservice/index/producao
HomRecepcionar=https://nfse.itaqui.rs.gov.br/webservice/index/homologacao
;
ProNameSpace=https://nfse.itaqui.rs.gov.br/webservice/index/producao
HomNameSpace=https://nfse.itaqui.rs.gov.br/webservice/index/homologacao

[4317103]
Nome=Santana do Livramento
UF=RS
Provedor=DBSeller
ProRecepcionar=http://nfe.sdolivramento.com.br/webservice/index/producao
HomRecepcionar=http://hom.nfe.sdolivramento.com.br/webservice/index/homologacao
;
ProNameSpace=http://nfe.sdolivramento.com.br/webservice/index/producao
HomNameSpace=http://hom.nfe.sdolivramento.com.br/webservice/index/homologacao

[5008305]
Nome=Tres Lagoas
UF=MS
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://issweb.treslagoas.ms.gov.br:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://issweb.treslagoas.ms.gov.br:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[5003207]
Nome=Corumba
UF=MS
Provedor=NEAInformatica
Versao=2.00
; a URL de homologacao nao esta correta
ProRecepcionar=http://nfse.corumba.ms.gov.br/pmcrbnfseletronica/ServicoWeb
HomRecepcionar=http://nfse.web.neainformatica.com.br:16580/pmcrbnfseletronica_homolog/ServicoWeb

[3140506]
Nome=Martinho Campos
UF=MG
Provedor=NotaInteligente
Versao=2.00
ProRecepcionar=https://martinhocampos-mg.notainteligente.com/api/action
HomRecepcionar=https://treino-martinhocampos-mg.notainteligente.com/api/action
;
ProNameSpace=https://martinhocampos-mg.notainteligente.com/api/wsdl
HomNameSpace=https://treino-martinhocampos-mg.notainteligente.com/api/wsdl

[3134400]
Nome=Iturama
UF=MG
Provedor=Governa
Params=VersaoArquivo:1|VersaoImpressao:3
;
ProRecepcionar=http://200.233.183.165/wsgoverna/esiat.asmx

[4112108]
Nome=Jandaia Do Sul
UF=PR
Provedor=Pronim
ProRecepcionar=http://187.109.161.3:8082/nfseWS/Services.svc
HomRecepcionar=http://187.109.161.3:8082/nfseWSTESTE/Services.svc

[2301000]
Nome=Aquiraz
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsaqz/Nfes

[2301109]
Nome=Aracati
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsarq/Nfes

[2301901]
Nome=Barbalha
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsbar/Nfes

[2302206]
Nome=Beberibe
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsbeb/Nfes

[2304202]
Nome=Crato
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wscrt/Nfes

[2305001]
Nome=Guaraciaba do Norte
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsgua/Nfes

[2306256]
Nome=Itaitinga
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsita/Nfes

[2307254]
Nome=Jijoca
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsjij/Nfes

[2307650]
Nome=Maracanau
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsmar/Nfes

[2611101]
Nome=Petrolina
UF=PE
Provedor=EL
Versao=2.04
ProRecepcionar=http://pe-petrolina-pm-nfs-backend.cloud.el.com.br/nfse/NfseWSService
HomRecepcionar=http://177.11.214.253:7081/ELNfse-0.0.1-SNAPSHOT/NfseWSService

[2310852]
Nome=Pindoretama
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wspin/Nfes

[2311405]
Nome=Quixeramobim
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wsqxb/Nfes

[2313302]
Nome=Taua
UF=CE
Provedor=SpeedGov
ProRecepcionar=http://www.speedgov.com.br/wstau/Nfes

[3550308]
Nome=Sao Paulo
UF=SP
Provedor=ISSSaoPaulo
ProRecepcionar=https://nfe.prefeitura.sp.gov.br/ws/lotenfe.asmx
HomRecepcionar=
;
ProLinkURL=https://nfe.prefeitura.sp.gov.br/nfe.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%
HomLinkURL=https://nfe.prefeitura.sp.gov.br/nfe.aspx?ccm=%InscMunic%&nf=%NumeroNFSe%&cod=%CodVerif%

[4205506]
Nome=Fraiburgo
UF=SC
Provedor=CIGA

[4200804]
Nome=Anchieta
UF=SC
Provedor=CIGA

[4205357]
Nome=Flor Do Sertao
UF=SC
Provedor=CIGA

[4207908]
Nome=Irineopolis
UF=SC
Provedor=CIGA

[4208955]
Nome=Jardinopolis
UF=SC
Provedor=CIGA

[4214102]
Nome=Presidente Nereu
UF=SC
Provedor=CIGA

[4214151]
Nome=Princesa
UF=SC
Provedor=CIGA

[4214904]
Nome=Rio Fortuna
UF=SC
Provedor=CIGA

[4215059]
Nome=Rio Rufino
UF=SC
Provedor=CIGA

[4216057]
Nome=Sao Cristovao Do Sul
UF=SC
Provedor=CIGA

[4218251]
Nome=Timbo Grande
UF=SC
Provedor=CIGA

[2411007]
Nome=Rodolfo Fernandes
UF=RN
Provedor=CIGA

[2804805]
Nome=Nossa Senhora do Socorro
UF=SE
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://nossasenhoradosocorrose.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://nossasenhoradosocorrose.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3111002]
Nome=Campestre
UF=MG
Provedor=NFSeBrasil

[3515004]
Nome=Embu das Artes
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsembudasartes.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsembudasartes.com.br/nfseservice.svc

[3152006]
Nome=Pompeu
UF=MG
Provedor=eReceita
Versao=2.02
ProRecepcionar=http://webservice.ereceita.net.br/ws/pompeu/wsProducao.php
HomRecepcionar=http://webservice.ereceita.net.br/ws/pompeu/wsHomologacao.php
;
ProLinkURL=http://server21.pompeu.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.pompeu.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[5200159]
Nome=Adelandia
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/adelandia/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5200209]
Nome=Agua Limpa
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/agualimpa/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5201603]
Nome=Aracu
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/aracu/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5203609]
Nome=Brazabrantes
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/brazabrantes/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5204003]
Nome=Cabeceiras
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/cabeceiras/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5204102]
Nome=Cachoeira Alta
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/cachoeiraalta/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5204607]
Nome=Campestre De Goias
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/campestredegoias/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5205000]
Nome=Carmo Do Rio Verde
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/carmodorioverde/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5205455]
Nome=Cezarina
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/cezarina/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5206404]
Nome=Crixas
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/crixas/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5207402]
Nome=Edeia
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/edeia/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5207535]
Nome=Faina
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/faina/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5207907]
Nome=Flores De Goias
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/floresdegoias/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5209291]
Nome=Guaraita
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/guaraita/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5209606]
Nome=Heitorai
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/heitorai/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5210000]
Nome=Inhumas
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/inhumas/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5211008]
Nome=Itapirapua
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/itapirapua/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5211701]
Nome=Jandaia
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/jandaia/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5212709]
Nome=Mambai
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/mambai/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5213509]
Nome=Monte Alegre De Goias
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/montealebredegoias/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5214002]
Nome=Mozarlandia
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/mozarlandia/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5214051]
Nome=Mundo Novo
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/mundonovo/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5214838]
Nome=Nova Crixas
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/novacrixas/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5215009]
Nome=Nova Veneza
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/novaveneza/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5215405]
Nome=Ouro Verde De Goias
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/ouroverdedegoias/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5218003]
Nome=Porangatu
UF=GO
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://gestaopublica.porangatu.bsit-br.com.br/integracao/services/nfseWS
HomRecepcionar=

[5217609]
Nome=Planaltina
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/planaltina/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5217104]
Nome=Piracanjuba
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/piracanjuba/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5218300]
Nome=Posse
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/posse/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5219258]
Nome=Santa Fe De Goias
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/santafedegoias/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5221403]
Nome=Trindade
UF=GO
Provedor=Prodata
Versao=2.01
ProRecepcionar=http://trindade.coretecnologia.net.br/prodataws/services/NfseWSService
HomRecepcionar=

[4306767]
Nome=Eldorado do Sul
UF=RS
Provedor=Pronim
ProRecepcaoRPS=
HomRecepcaoRPS=

[3152808]
Nome=Prata
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/prata
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/prata

[3305505]
Nome=Saquarema
UF=RJ
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://201.18.231.99/nfse.portal.integracao/services.svc
HomRecepcionar=http://201.18.231.99/nfse.portal.integracao.teste/services.svc

[3552601]
Nome=Tabapua
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://tabapua.sistemas4r.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://tabapua.sistemas4r.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://tabapua.sistemas4r.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://tabapua.sistemas4r.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://tabapua.sistemas4r.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://tabapua.sistemas4r.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://tabapua.sistemas4r.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://tabapua.sistemas4r.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://tabapua.sistemas4r.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://tabapua.sistemas4r.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[4300604]
Nome=Alvorada
UF=RS
Provedor=IPM

[4313508]
Nome=Osorio
UF=RS
Provedor=DBSeller
ProRecepcionar=http://nfse.osorio.rs.gov.br:81/webservice/index/producao
HomRecepcionar=http://nfse.osorio.rs.gov.br:26000/webservice/index/homologacao
;
ProNameSpace=http://nfse.osorio.rs.gov.br:81/webservice/index/producao
HomNameSpace=http://nfse.osorio.rs.gov.br:26000/webservice/index/homologacao

[5210208]
Nome=Ipora
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://ipora.megasoftarrecadanet.com.br/ipora/ws/nfseSOAP
HomRecepcionar=

[5201702]
Nome=Aragarcas
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://aragarcas.megasoftarrecadanet.com.br/aragarcas/ws/nfseSOAP
HomRecepcionar=

[5210406]
Nome=Itaberai
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://itaberai.megasoftarrecadanet.com.br/itaberai/ws/nfseSOAP
HomRecepcionar=

[5212907]
Nome=Marzagao
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://marzagao.megasoftarrecadanet.com.br/marzagao/ws/nfseSOAP
HomRecepcionar=

[5221197]
; Incluído em 04/11/2021
Nome=Terezopolis de Goias
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://terezopolisdegoias.megasoftarrecadanet.com.br/terezopolisdegoias/ws/nfseSOAP
HomRecepcionar=

[4120002]
Nome=Porecatu
UF=PR
Provedor=SimplISS
ProRecepcionar=http://wsporecatu.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsporecatu.com.br/nfseservice.svc

[3515707]
Nome=Ferraz de Vasconcelos
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.ferraz/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.ferraz/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.ferraz/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.ferraz/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[3538907]
Nome=Pirajui
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://189.57.88.131:3392/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://189.57.88.131:3392/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3507803]
; Atualizado em 23/02/2022
Nome=Brodowski
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://143.0.0.116:8083/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://143.0.0.116:8083/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3135100]
Nome=Janauba
UF=MG
Provedor=NFSeBrasil

[2609600]
Nome=Olinda
UF=PE
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/olinda/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/olinda/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/olinda/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/olinda/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/olinda/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/olinda/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/olinda/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/olinda/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testeoli/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testeoli/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testeoli/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testeoli/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testeoli/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testeoli/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testeoli/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testeoli/WSNFSE.RecepcionarLoteRpsSincrono.cls

[3139409]
Nome=Manhuacu
UF=MG
Provedor=EL
ProRecepcionar=https://mg-manhuacu-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://mg-manhuacu-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://mg-manhuacu-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3205069]
Nome=Venda Nova do Imigrante
UF=ES
Provedor=EL
ProRecepcionar=https://es-vendanovadoimigrante-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-vendanovadoimigrante-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-vendanovadoimigrante-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[4319604]
Nome=Sao Sepe
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://saosepe-portais.govcloud.com.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://177.8.37.253/nfse.portal.integracao.teste/services.svc

[4318606]
Nome=Sao Jose do Ouro
UF=RS
Provedor=DataSmart
Versao=2.02
Params=AliasCidade:B_SJOSE

[4309605]
Nome=Horizontina
UF=RS
Provedor=IPM

[3200607]
Nome=Aracruz
UF=ES
Provedor=EL
ProRecepcionar=https://es-aracruz-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=http://nfe.pma.es.gov.br:8080/nfse/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=http://nfe.pma.es.gov.br:8080/nfse/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[4311270]
Nome=Lagoa dos Tres Cantos
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://177.22.91.215/nfse.portal.integracao/services.svc
HomRecepcionar=http://177.22.91.215/nfse.portal.integracao.teste/services.svc

[4320107]
; Atualizado em 27/09/2021
Nome=Sarandi
UF=RS
Provedor=TcheInfo
Versao=2.04

[4317756]
Nome=Santo Antonio do Planalto
UF=RS
Provedor=TcheInfo
Versao=2.04

[3522505]
; Atualizado em 05/07/2021
Nome=Itapevi
UF=SP
Provedor=SilTecnologia
ProRecepcionar=https://itapevi.siltecnologia.com.br/services/Abrasf10
HomRecepcionar=
;
ProLinkURL=http://itapevi.siltecnologia.com.br/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%CodVerif%
HomLinkURL=http://itapevi.siltecnologia.com.br/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%CodVerif%

[3524303]
Nome=Jaboticabal
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://jaboticabal.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://jaboticabal.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[1506161]
Nome=Rio Maria
UF=PA
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://177.75.236.132:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://177.75.236.132:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3507605]
Nome=Braganca Paulista
UF=SP
Provedor=Giap
ProRecepcionar=http://webservice.giap.com.br/WSNfsesPmbp/nfseresources/ws/v2/emissao
ProConsultarNFSeRps=http://webservice.giap.com.br/WSNfsesPmbp/nfseresources/ws/consulta
ProCancelarNFSe=http://webservice.giap.com.br/WSNfsesPmbp/nfseresources/ws/v2/cancela
;
HomRecepcionar=http://webservice.giap.com.br/WSNfsesPmbp/nfseresources/ws/v2/emissao/simula
HomConsultarNFSeRps=http://webservice.giap.com.br/WSNfsesPmbp/nfseresources/ws/consulta
HomCancelarNFSe=http://webservice.giap.com.br/WSNfsesPmbp/nfseresources/ws/v2/cancela

[3152105]
Nome=Ponte Nova
UF=MG
Provedor=NFSeBrasil

[3300936]
Nome=Carapebus
UF=RJ	
Provedor=SH3
Versao=2.00
ProRecepcionar=https://carapebus.nfiss.com.br/soap/
;
ProLinkURL=https://carapebus.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_carapebus.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3157336]
Nome=Santa Cruz de Minas
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://santacruzdeminas.nfiss.com.br/soap/
;
ProLinkURL=https://santacruzdeminas.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_santacruzdeminas.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3167301]
Nome=Silveirania
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://silveirania.nfiss.com.br/soap/
;
ProLinkURL=https://silveirania.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_silveirania.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3162500]
Nome=Sao Joao Del Rei
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://saojoaodelrei.nfiss.com.br/soap/
;
ProLinkURL=https://saojoaodelrei.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_saojoaodelrei.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3165008]
Nome=Sao Tiago
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://saotiago.nfiss.com.br/soap/
;
ProLinkURL=https://saotiago.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_saotiago.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3154200]
Nome=Resende Costa
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://resendecosta.nfiss.com.br/soap/
;
ProLinkURL=https://resendecosta.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_resendecosta.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3158805]
Nome=Santana do Jacare
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://santanadojacare.nfiss.com.br/soap/
;
ProLinkURL=https://santanadojacare.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_santanadojacare.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3114600]
Nome=Carrancas
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://carrancas.nfiss.com.br/soap/
;
ProLinkURL=https://carrancas.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_carrancas.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3165305]
Nome=Sao Vicente de Minas
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://saovicentedeminas.nfiss.com.br/soap/
;
ProLinkURL=https://saovicentedeminas.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_saovicentedeminas.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3102902]
Nome=Antonio Carlos
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://antoniocarlos.nfiss.com.br/soap/
;
ProLinkURL=https://antoniocarlos.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_antoniocarlos.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3123007]
Nome=Dores de Campos
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://doresdecampos.nfiss.com.br/soap/
;
ProLinkURL=https://doresdecampos.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_doresdecampos.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3157302]
Nome=Santa Barbara do Tugurio
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://santabarbaradotugurio.nfiss.com.br/soap/
;
ProLinkURL=https://santabarbaradotugurio.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_santabarbaradotugurio.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3124005]
Nome=Ervalia
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://ervalia.nfiss.com.br/soap/
;
ProLinkURL=https://ervalia.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_ervalia.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3172004]
; Atualizado em 29/12/2021
Nome=Visconde do Rio Branco
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://viscondedoriobranco.nfiss.com.br/soap/
HomRecepcionar=https://homologaviscondedoriobranco.nfiss.com.br/soap/
;
ProLinkURL=https://viscondedoriobranco.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologaviscondedoriobranco.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3161502]
; Atualizado em 29/12/2021
Nome=Sao Geraldo
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://saogeraldo.nfiss.com.br/soap/
HomRecepcionar=https://homologasaogeraldo.nfiss.com.br/soap/
;
ProLinkURL=https://saogeraldo.nfiss.com.br/?Meio=qr&N=%NumeroNFSe%&C=%Cnpj%&T=N&K=%CodVerif%
HomLinkURL=https://homologasaogeraldo.nfiss.com.br/?Meio=qr&N=%NumeroNFSe%&C=%Cnpj%&T=N&K=%CodVerif%

[3138708]
Nome=Luminarias
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://luminarias.nfiss.com.br/soap/
;
ProLinkURL=https://luminarias.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_luminarias.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3130804]
Nome=Ingai
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://ingai.nfiss.com.br/soap/
;
ProLinkURL=https://ingai.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_ingai.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3134509]
Nome=Itutinga
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://itutinga.nfiss.com.br/soap/
;
ProLinkURL=https://itutinga.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_itutinga.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3134301]
Nome=Itumirim	
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://itumirim.nfiss.com.br/soap/
;
ProLinkURL=https://itumirim.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_itumirim.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3130002]
Nome=Ibituruna
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://ibituruna.nfiss.com.br/soap/
;
ProLinkURL=https://ibituruna.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_ibituruna.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3110400]
Nome=Camacho
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://camacho.nfiss.com.br/soap/
;
ProLinkURL=https://camacho.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_camacho.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3154804]
Nome=Rio Acima
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://rioacima.nfiss.com.br/soap/
;
ProLinkURL=https://rioacima.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_rioacima.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3106408]
Nome=Belo Vale	
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://belovale.nfiss.com.br/soap/
;
ProLinkURL=https://belovale.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_belovale.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3152709]
Nome=Prados
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://prados.nfiss.com.br/soap/
;
ProLinkURL=https://prados.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_prados.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3119708]
Nome=Coronel Xavier Chaves
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://coronelxavierchaves.nfiss.com.br/soap/
;
ProLinkURL=https://coronelxavierchaves.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_coronelxavierchaves.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3156106]
Nome=Ritapolis
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://ritapolis.nfiss.com.br/soap/
;
ProLinkURL=https://ritapolis.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_ritapolis.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3144508]
Nome=Nazareno	
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://nazareno.nfiss.com.br/soap/
;
ProLinkURL=https://nazareno.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_nazareno.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3168804]
Nome=Tiradentes
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://tiradentes.nfiss.com.br/soap/
;
ProLinkURL=https://tiradentes.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_tiradentes.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3115201]
Nome=Conceicao da Barra de minas
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://conceicaodabarrademinas.nfiss.com.br/soap/
;
ProLinkURL=https://conceicaodabarrademinas.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_conceicaodabarrademinas.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3137403]
Nome=Lagoa Dourada
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://lagoadourada.nfiss.com.br/soap/
;
ProLinkURL=https://lagoadourada.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_lagoadourada.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3114907]
Nome=Casa Grande
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://casagrande.nfiss.com.br/soap/
;
ProLinkURL=https://casagrande.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_casagrande.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3117801]
Nome=Conceicao dos Ouros
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://conceicaodosouros.nfiss.com.br/soap/
;
ProLinkURL=https://conceicaodosouros.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_conceicaodosouros.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3133907]
Nome=Itaverava
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://itaverava.nfiss.com.br/soap/
;
ProLinkURL=https://itaverava.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_itaverava.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3159100]
Nome=Santana dos Montes
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://santanadosmontes.nfiss.com.br/soap/
;
ProLinkURL=https://santanadosmontes.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_santanadosmontes.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3135407]
Nome=Jeceaba
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://jeceaba.nfiss.com.br/soap/
;
ProLinkURL=https://jeceaba.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_jeceaba.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3123908]
Nome=Entre Rios de Minas
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://entreriosdeminas.nfiss.com.br/soap/
;
ProLinkURL=https://entreriosdeminas.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_entreriosdeminas.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3160900]
Nome=Sao Bras do Suacui
UF=MG
Provedor=SH3
Versao=2.00
ProRecepcionar=https://saobrasdosuacui.nfiss.com.br/soap/
;
ProLinkURL=https://saobrasdosuacui.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_saobrasdosuacui.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3301405]
Nome=Conceicao de Macabu
UF=RJ
Provedor=SH3
Versao=2.00
ProRecepcionar=https://conceicaodemacabu.nfiss.com.br/soap/
;
ProLinkURL=https://conceicaodemacabu.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_conceicaodemacabu.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[3300951]
Nome=Comendador Levy Gasparian
UF=RJ
Provedor=SH3
Versao=2.00
ProRecepcionar=https://comendadorlevygasparian.nfiss.com.br/soap/
;
ProLinkURL=https://comendadorlevygasparian.nfiss.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://homologa_comendadorlevygasparian.nfiss.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[4119152]
; Atualizado em 29/11/2021
Nome=Pinhais
UF=PR
Provedor=IPM
Versao=1.01
ProRecepcionar=https://ws-pinhais.atende.net:7443/atende.php?pg=rest&service=WNERestServiceNFSe
HomRecepcionar=https://treinamento.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=migra_pinhais

[4105805]
Nome=Colombo
UF=PR
Provedor=IPM
Params=Assinar:AssRpsGerarNFSe

[4210605]
Nome=Massaranduba
UF=SC
Provedor=IPM

[4206504]
Nome=Guaramirim
UF=SC
Provedor=IPM

[4219309]
Nome=Videira
UF=SC
Provedor=IPM

[5105622]
Nome=Mirassol D´Oeste
UF=MT
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://186.235.81.12:5663/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://186.235.81.12:5663/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4303004]
Nome=Cachoeira do Sul
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://177.84.147.222:8091/nfse.portal.integracao/services.svc
HomRecepcionar=http://177.84.147.222:8091/nfse.portal.integracao.teste/services.svc

[4200101]
; Atualizado em 09/09/2021
Nome=Abelardo Luz
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/abelardoluz_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/nfse_integracao/Services

[4209102]
Nome=Joinville
UF=SC
Provedor=ISSJoinville
Versao=2.04
ProRecepcionar=https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx
HomRecepcionar=https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx
;
ProLinkURL=https://nfem.joinville.sc.gov.br/processos/imprimir_nfe.aspx?codigo=%CodVerif%&numero=%NumeroNFSe%&documento_prestador=%Cnpj%
HomLinkURL=https://nfemhomologacao.joinville.sc.gov.br/processos/imprimir_nfe.aspx?codigo=%CodVerif%&numero=%NumeroNFSe%&documento_prestador=%Cnpj%

[5004106]
Nome=Guia Lopes da Laguna
UF=MS
Provedor=NEAInformatica
Versao=2.00
ProRecepcionar=http://nfse.guialopesdalaguna.ms.gov.br/pmgllnfseletronica/ServicoWeb
HomRecepcionar=http://nfse.guialopesdalaguna.ms.gov.br/pmgllnfseletronica_homolog/ServicoWeb

[5002308]
Nome=Brasilandia
UF=MS
Provedor=NEAInformatica
Versao=2.00
ProRecepcionar=http://nfse.brasilandia.ms.gov.br/pmbsanfseletronica/ServicoWeb
HomRecepcionar=http://nfse.brasilandia.ms.gov.br/pmbsanfseletronica_homolog/ServicoWeb

[5002100]
Nome=Bela Vista
UF=MS
Provedor=NEAInformatica
Versao=2.00
ProRecepcionar=http://nfse.belavista.ms.gov.br/pmbvanfseletronica/ServicoWeb
HomRecepcionar=http://nfse.belavista.ms.gov.br/pmbvanfseletronica_homolog/ServicoWeb

[5005004]
Nome=Jardim
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/jardim/servicos.asmx

[5000708]
Nome=Anastacio
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/anastacio/servicos.asmx

[5001102]
Nome=Aquidauana
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/aquidauana/servicos.asmx

[5007802]
Nome=Selviria
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/selviria/servicos.asmx

[5006606]
Nome=Ponta Pora
UF=MS
Provedor=AEG
Versao=2.02
ProRecepcionar=http://187.53.176.143/tecnosis/portalinteg2.dll/soap/IWSPortalInteg
HomRecepcionar=

[5005608]
Nome=Miranda
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/miranda/servicos.asmx

[5007695]
Nome=Sao Gabriel do Oeste
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/saogabrieldooeste/servicos.asmx

[5004700]
Nome=Ivinhema
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/ivinhema/servicos.asmx

[5004304]
Nome=Iguatemi
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/iguatemi/servicos.asmx

[5002407]
Nome=Caarapo
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/caarapo/servicos.asmx

[5004403]
Nome=Inocencio
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/inocencio/servicos.asmx

[5007109]
Nome=Ribas do Rio Pardo
UF=MS
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/ribasdoriopardo/servicos.asmx

[3551702]
Nome=Sertaozinho
UF=SP
Provedor=SmarAPD
Versao=2.04
ProRecepcionar=https://nfe.sertaozinho.sp.gov.br:8443/tbw/services/nfseSOAP
HomRecepcionar=https://tributacao.smarapd.com.br/tbwhomolog/services/nfseSOAP
;
ProLinkURL=http://suporte.sertaozinho.sp.gov.br:9083/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://suporte.sertaozinho.sp.gov.br:9083/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[3134202]
Nome=Ituiutaba
UF=MG
Provedor=SmarAPD
Versao=2.04
ProRecepcionar=http://201.48.3.165:9083/tbw/services/nfseSOAP
HomRecepcionar=http://201.72.16.150/abrasf/services/nfseSOAP
;
ProLinkURL=http://suporte.ituiutuba.mg.gov.br:9083/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://suporte.ituiutuba.mg.gov.br:9083/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[3531902]
Nome=Morro Agudo
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://177.129.28.34:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://177.129.28.34:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4205100]
Nome=Dona Emma
UF=SC
Provedor=Betha

[1200203]
Nome=Cruzeiro do Sul
UF=AC
Provedor=Betha

[1200252]
Nome=Epitaciolandia
UF=AC
Provedor=Betha

[1200336]
Nome=Mancio Lima
UF=AC
Provedor=Betha

[1200427]
Nome=Rodrigues Alves
UF=AC
Provedor=Betha

[1200450]
Nome=Senador Guiomard
UF=AC
Provedor=Betha

[1200609]
Nome=Tarauaca
UF=AC
Provedor=Betha

[1304203]
Nome=Tefe
UF=AM
Provedor=Betha

[1702109]
Nome=Araguaina
UF=TO
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://araguainato.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://araguainato.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[2702306]
Nome=Coruripe
UF=AL
Provedor=Betha

[2707701]
Nome=Rio Largo
UF=AL
Provedor=Betha

[2907301]
Nome=Castro Alves
UF=BA
Provedor=Betha

[2915007]
Nome=Itaete
UF=BA
Provedor=Betha

[2915106]
Nome=Itagi
UF=BA
Provedor=Betha

[2917607]
Nome=Jaguaquara
UF=BA
Provedor=Betha

[2919306]
Nome=Lencois
UF=BA
Provedor=Betha

[2920502]
Nome=Maracas
UF=BA
Provedor=Betha

[2923001]
Nome=Nova Vicosa
UF=BA
Provedor=Betha

[2924504]
Nome=Pindai
UF=BA
Provedor=Betha

[3101607]
Nome=Alfenas
UF=MG
Provedor=Betha

[3102001]
Nome=Alterosa
UF=MG
Provedor=Betha

[3105301]
Nome=Bandeira do Sul
UF=MG
Provedor=Betha

[3108404]
Nome=Botelhos
UF=MG
Provedor=Betha

[3114204]
Nome=Carmo do Cajuru
UF=MG
Provedor=Betha

[3144607]
Nome=Nepomuceno
UF=MG
Provedor=Betha

[3118007]
Nome=Congonhas
UF=MG
Provedor=Betha

[3118700]
Nome=Coqueiral
UF=MG
Provedor=Betha

[3121258]
Nome=Delta
UF=MG
Provedor=Betha

[3128303]
Nome=Guaranesia
UF=MG
Provedor=Betha

[3130200]
Nome=Igaratinga
UF=MG
Provedor=Betha

[3133600]
Nome=Itapeva
UF=MG
Provedor=Betha

[3133709]
Nome=Itatiaiucu
UF=MG
Provedor=Betha

[3133758]
Nome=Itau de Minas
UF=MG
Provedor=Betha

[3140001]
Nome=Mariana
UF=MG
Provedor=Betha

[3145901]
Nome=Ouro Branco
UF=MG
Provedor=Betha

[3149606]
Nome=Pequi
UF=MG
Provedor=Betha

[3151602]
Nome=Planura
UF=MG
Provedor=Betha

[3151701]
Nome=Poco Fundo
UF=MG
Provedor=Betha

[3159902]
Nome=Santo Antonio do Amparo
UF=MG
Provedor=Betha

[3160405]
Nome=Santo Antonio do Monte
UF=MG
Provedor=Betha

[3164605]
Nome=Sao Sebastiao do Oeste
UF=MG
Provedor=Betha

[3166907]
Nome=Serrania
UF=MG
Provedor=Betha

[3168101]
Nome=Tapira
UF=MG
Provedor=Betha

[3201159]
Nome=Brejetuba
UF=ES
Provedor=Betha

[3300225]
Nome=Areal
UF=RJ
Provedor=Betha

[3301801]
Nome=Engenheiro Paulo de Frontin
UF=RJ
Provedor=Betha

[3302254]
Nome=Itatiaia
UF=RJ
Provedor=ISSNet
ProRecepcionar=http://www.issnetonline.com.br/webserviceabrasf/itatiaia/servicos.asmx

[3302809]
Nome=Mendes
UF=RJ
Provedor=Betha

[3303807]
Nome=Parati
UF=RJ
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://186.237.171.226:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://186.237.171.226:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3303955]
Nome=Pinheiral
UF=RJ
Provedor=Betha

[3304508]
Nome=Rio das Flores
UF=RJ
Provedor=Betha

[3305158]
Nome=Sao Jose do Vale do Rio Preto
UF=RJ
Provedor=Betha

[3306107]
Nome=Valenca
UF=RJ
Provedor=Betha

[3502002]
Nome=Analandia
UF=SP
Provedor=Betha

[3510104]
Nome=Candido Rodrigues
UF=SP
Provedor=Betha

[3512704]
Nome=Corumbatai
UF=SP
Provedor=Betha

[3513603]
Nome=Cunha
UF=SP
Provedor=Betha

[3516853]
Nome=Gaviao Peixoto
UF=SP
Provedor=Betha

[3518859]
Nome=Guatapara
UF=SP
Provedor=Betha

[3524907]
Nome=Jambeiro
UF=SP
Provedor=Betha

[3531308]
Nome=Monte Alto
UF=SP
Provedor=Betha

[3532405]
Nome=Nazare Paulista
UF=SP
Provedor=Betha

[3534302]
Nome=Orlandia
UF=SP
Provedor=Betha

[3539004]
Nome=Pirangi
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://portal.pmpirangi.com.br:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://portal.pmpirangi.com.br:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3546306]
Nome=Santa Cruz das Palmeiras
UF=SP
Provedor=Betha

[3547601]
Nome=Santa Rosa de Viterbo
UF=SP
Provedor=Betha

[3548203]
Nome=Santo Antonio do Pinhal
UF=SP
Provedor=Betha

[3556909]
; Atualizado em 04/06/2021
Nome=Vista Alegre do Alto
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://nfse.pmvistaalegredoalto.com.br:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://nfse.pmvistaalegredoalto.com.br:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4100202]
Nome=Adrianopolis
UF=PR
Provedor=Betha

[4100301]
Nome=Agudos do Sul
UF=PR
Provedor=Betha

[4100400]
Nome=Almirante Tamandare
UF=PR
Provedor=Betha

[4100608]
Nome=Alto Parana
UF=PR
Provedor=Betha

[4101002]
Nome=Ampere
UF=PR
Provedor=Betha

[4101507]
Nome=Arapongas
UF=PR
Provedor=IPM

[4101903]
Nome=Assai
UF=PR
Provedor=Betha

[4102604]
Nome=Barracao
UF=PR
Provedor=Betha

[4102752]
Nome=Bela Vista da Caroba
UF=PR
Provedor=Betha

[4102901]
Nome=Bituruna
UF=PR
Provedor=Betha

[4103156]
Nome=Bom Jesus do Sul
UF=PR
Provedor=Betha

[4104253]
Nome=Campo Magro
UF=PR
Provedor=Betha

[4105201]
Nome=Cerro Azul
UF=PR
Provedor=Betha

[4105904]
Nome=Colorado
UF=PR
Provedor=Betha

[4106407]
Nome=Cornelio Procopio
UF=PR
Provedor=Betha

[4106803]
Nome=Cruz Machado
UF=PR
Provedor=Betha

[4107504]
Nome=Engenheiro Beltrao
UF=PR
Provedor=Betha

[4107652]
Nome=Fazenda Rio Grande
UF=PR
Provedor=Betha

[4107751]
Nome=Figueira
UF=PR
Provedor=Betha

[4107850]
Nome=Flor da Serra do Sul
UF=PR
Provedor=Betha

[4108502]
Nome=General Carneiro
UF=PR
Provedor=Betha

[4108601]
Nome=Goioere
UF=PR
Provedor=Betha

[4109500]
Nome=Guaraquecaba
UF=PR
Provedor=Betha

[4110656]
Nome=Iracema do Oeste
UF=PR
Provedor=Betha

[4112009]
Nome=Jaguariaiva
UF=PR
Provedor=Betha

[4112959]
Nome=Juranda
UF=PR
Provedor=Betha

[4113452]
Nome=Lindoeste
UF=PR
Provedor=Betha

[4113908]
Nome=Mallet
UF=PR
Provedor=Betha

[4113601]
Nome=Lobato
UF=PR
Provedor=Betha

[4114104]
Nome=Mandaguacu
UF=PR
Provedor=Betha

[4114302]
Nome=Mandirituba
UF=PR
Provedor=Betha

[4114401]
Nome=Mangueirinha
UF=PR
Provedor=Betha

[4116307]
Nome=Munhoz de Melo
UF=PR
Provedor=Betha

[4116703]
Nome=Nova Aurora
UF=PR
Provedor=Betha

[4117305]
Nome=Ortigueira
UF=PR
Provedor=Betha

[4117404]
Nome=Ourizona
UF=PR
Provedor=Betha

[4117602]
Nome=Palmas
UF=PR
Provedor=Betha

[4118402]
Nome=Paranavai
UF=PR
Provedor=Betha

[4118600]
Nome=Paula Freitas
UF=PR
Provedor=Betha

[4119004]
Nome=Perola d'Oeste
UF=PR
Provedor=Betha

[4120804]
; Atualizado em 13/08/2021
Nome=Quatro Barras
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://quatrobarras.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[4120853]
Nome=Quatro Pontes
UF=PR
Provedor=Betha

[4122800]
Nome=Salgado Filho
UF=PR
Provedor=Betha

[4124020]
Nome=Santa Tereza do Oeste
UF=PR
Provedor=Betha

[4125308]
Nome=Sao Jorge do Ivai
UF=PR
Provedor=Betha

[4125605]
Nome=Sao Mateus do Sul
UF=PR
Provedor=Betha

[4125753]
Nome=Sao Pedro do Iguacu
UF=PR
Provedor=Betha

[4126009]
Nome=Sao Sebastiao da Amoreira
UF=PR
Provedor=Betha

[4126603]
Nome=Siqueira Campos
UF=PR
Provedor=Betha

[4127106]
; Atualizado em 29/11/2021
Nome=Telemaco Borba
UF=PR
Provedor=IPM

[4127601]
Nome=Tijucas do Sul
UF=PR
Provedor=Betha

[4127809]
Nome=Tomazina
UF=PR
Provedor=Betha

[4128203]
Nome=Uniao da Vitoria
UF=PR
Provedor=Betha

[4128500]
Nome=Wenceslau Braz
UF=PR
Provedor=Betha

[4128559]
Nome=Vera Cruz do Oeste
UF=PR
Provedor=Betha

[4128708]
Nome=Vitorino
UF=PR
Provedor=Betha

[4200051]
Nome=Abdon Batista
UF=SC
Provedor=Betha

[4200309]
Nome=Agronomica
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/agronomica_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/homologa_nfse_integracao/Services

[4200408]
Nome=Agua Doce
UF=SC
Provedor=Betha

[4200507]
Nome=Aguas de Chapeco
UF=SC
Provedor=Betha

[4200606]
Nome=Aguas Mornas
UF=SC
Provedor=Betha

[4200705]
Nome=Alfredo Wagner
UF=SC
Provedor=Betha

[4200754]
Nome=Alto Bela Vista
UF=SC
Provedor=Betha

[4201000]
Nome=Anita Garibaldi
UF=SC
Provedor=Betha

[4201109]
Nome=Anitapolis
UF=SC
Provedor=Betha

[4201208]
Nome=Antonio Carlos
UF=SC
Provedor=Betha

[4201273]
Nome=Arabuta
UF=SC
Provedor=Betha

[4201505]
Nome=Armazem
UF=SC
Provedor=Betha

[4201802]
Nome=Atalanta
UF=SC
Provedor=Betha

[4202073]
Nome=Balneario Gaivota
UF=SC
Provedor=Betha

[4202131]
Nome=Bela Vista do Toldo
UF=SC
Provedor=Betha

[4202156]
Nome=Belmonte
UF=SC
Provedor=Betha

[4202453]
Nome=Bombinhas
UF=SC
Provedor=Betha

[4202503]
Nome=Bom Jardim da Serra
UF=SC
Provedor=Betha

[4202537]
Nome=Bom Jesus
UF=SC
Provedor=Betha

[4202800]
Nome=Braco do Norte
UF=SC
Provedor=Betha

[4203303]
Nome=Campo Alegre
UF=SC
Provedor=Betha

[4203600]
Nome=Campos Novos
UF=SC
Provedor=Betha

[4203709]
Nome=Canelinha
UF=SC
Provedor=Betha

[4203808]
Nome=Canoinhas
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse2.publica.inf.br/canoinhas_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/homologa_nfse_integracao/Services

[4203907]
Nome=Capinzal
UF=SC
Provedor=Betha

[4204004]
Nome=Catanduvas
UF=SC
Provedor=Betha

[4204152]
Nome=Celso Ramos
UF=SC
Provedor=Betha

[4204194]
Nome=Chapadao do Lageado
UF=SC
Provedor=Betha

[4204202]
Nome=Chapeco
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/chapeco_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/homologa_nfse_integracao/Services

[4204251]
Nome=Cocal Do Sul
UF=SC
Provedor=Betha

[4204350]
Nome=Cordilheira Alta
UF=SC
Provedor=Betha

[4204400]
Nome=Coronel Freitas
UF=SC
Provedor=Betha

[4204509]
Nome=Corupa
UF=SC
Provedor=Betha

[4204608]
Nome=Criciuma
UF=SC
Provedor=Betha

[4204756]
Nome=Cunhatai
UF=SC
Provedor=Betha

[4204806]
Nome=Curitibanos
UF=SC
Provedor=Betha

[4204905]
Nome=Descanso
UF=SC
Provedor=Betha

[4205001]
Nome=Dionisio Cerqueira
UF=SC
Provedor=Betha

[4205191]
Nome=Ermo
UF=SC
Provedor=Betha

[4205209]
Nome=Erval Velho
UF=SC
Provedor=Betha

[4205308]
Nome=Faxinal Dos Guedes
UF=SC
Provedor=Betha

[4205555]
Nome=Frei Rogerio
UF=SC
Provedor=Betha

[4205704]
; Atualizado em 22/11/2021
Nome=Garopaba
UF=SC
Provedor=IPM
Versao=1.01
Params=Assinar:AssRpsGerarNFSe
;
ProRecepcionar=https://garopaba.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[4206108]
Nome=Grao Para
UF=SC
Provedor=Betha

[4206207]
Nome=Gravatal
UF=SC
Provedor=Betha

[4206405]
Nome=Guaraciaba
UF=SC
Provedor=Betha

[4206603]
Nome=Guaruja do Sul
UF=SC
Provedor=Betha

[4206702]
Nome=Herval D Oeste
UF=SC
Provedor=Betha

[4206751]
Nome=Ibiam
UF=SC
Provedor=Betha

[4206801]
Nome=Ibicare
UF=SC
Provedor=Betha

[4206900]
Nome=Ibirama
UF=SC
Provedor=Betha

[4207205]
Nome=Imarui
UF=SC
Provedor=Betha

[4207304]
Nome=Imbituba
UF=SC
Provedor=Betha

[4207403]
Nome=Imbuia
UF=SC
Provedor=Betha

[4207601]
Nome=Ipira
UF=SC
Provedor=Betha

[4207684]
Nome=Ipuacu
UF=SC
Provedor=Betha

[4207700]
Nome=Ipumirim
UF=SC
Provedor=Betha

[4207809]
; Atualizado em 18/11/2021
Nome=Irani
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/irani_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/homologa_nfse_integracao/Services

[4208005]
Nome=Ita
UF=SC
Provedor=Betha

[4208302]
; Atualizado em 31/12/2021
Nome=Itapema
UF=SC
Provedor=Bauhaus
ProRecepcionar=*
ProGerarNFSe=https://api-nfse-itapema-sc.prefeituramoderna.com.br/ws/services/gerar
ProConsultarNFSe=https://api-nfse-itapema-sc.prefeituramoderna.com.br/ws/services/consultar
ProCancelarNFSe=https://api-nfse-itapema-sc.prefeituramoderna.com.br/ws/services/cancelar
ProSubstituirNFSe=https://api-nfse-itapema-sc.prefeituramoderna.com.br/ws/services/substituir

[4208401]
Nome=Itapiranga
UF=SC
Provedor=Betha

[4208500]
Nome=Ituporanga
UF=SC
Provedor=IPM

[4208708]
Nome=Jacinto Machado
UF=SC
Provedor=Betha

[4208906]
Nome=Jaragua do Sul
UF=SC
Provedor=Betha

[4209003]
Nome=Joacaba
UF=SC
Provedor=Betha

[4209177]
Nome=Jupia
UF=SC
Provedor=Betha

[4209201]
Nome=Lacerdopolis
UF=SC
Provedor=Betha

[4209300]
Nome=Lages
UF=SC
Provedor=Betha

[4209409]
Nome=Laguna
UF=SC
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[4209458]
Nome=Lajeado Grande
UF=SC
Provedor=Betha

[4209854]
Nome=Lindoia do Sul
UF=SC
Provedor=Betha

[4210001]
Nome=Luiz Alves
UF=SC
Provedor=Betha

[4210035]
Nome=Luzerna
UF=SC
Provedor=Betha

[4210050]
Nome=Macieira
UF=SC
Provedor=Betha

[4210209]
Nome=Major Gercino
UF=SC
Provedor=Betha

[4210308]
Nome=Major Vieira
UF=SC
Provedor=Betha

[4210407]
Nome=Maracaja
UF=SC
Provedor=Betha

[4210506]
Nome=Maravilha
UF=SC
Provedor=Betha

[4210555]
Nome=Marema
UF=SC
Provedor=Betha

[4211009]
Nome=Mondai
UF=SC
Provedor=Betha

[4211058]
Nome=Monte Carlo
UF=SC
Provedor=Betha

[4211207]
Nome=Morro da Fumaca
UF=SC
Provedor=Betha

[4211256]
Nome=Morro Grande
UF=SC
Provedor=Betha

[4211306]
Nome=Navegantes
UF=SC
Provedor=Betha

[4211405]
Nome=Nova Erechim
UF=SC
Provedor=Betha

[4211504]
Nome=Nova Trento
UF=SC
Provedor=Betha

[4211603]
Nome=Nova Veneza
UF=SC
Provedor=Betha

[4211652]
Nome=Novo Horizonte
UF=SC
Provedor=Betha

[4211702]
Nome=Orleans
UF=SC
Provedor=Betha

[4211751]
Nome=Otacilio Costa
UF=SC
Provedor=Betha

[4211801]
Nome=Ouro
UF=SC
Provedor=Betha

[4211876]
Nome=Paial
UF=SC
Provedor=Betha

[4212106]
Nome=Palmitos
UF=SC
Provedor=Betha

[4212254]
Nome=Passo de Torres
UF=SC
Provedor=Betha

[4212270]
Nome=Passos Maia
UF=SC
Provedor=Betha

[4212304]
Nome=Paulo Lopes
UF=SC
Provedor=Betha

[4212403]
Nome=Pedras Grandes
UF=SC
Provedor=Betha

[4212502]
Nome=Penha
UF=SC
Provedor=Betha

[4212601]
Nome=Peritiba
UF=SC
Provedor=Betha

[4212700]
Nome=Petrolandia
UF=SC
Provedor=Betha

[4213104]
Nome=Piratuba
UF=SC
Provedor=Betha

[4213153]
Nome=Planalto Alegre
UF=SC
Provedor=IPM

[4213302]
Nome=Ponte Alta
UF=SC
Provedor=Betha

[4213351]
Nome=Ponte Alta do Norte
UF=SC
Provedor=Betha

[4213401]
Nome=Ponte Serrada
UF=SC
Provedor=Betha

[4213500]
Nome=Porto Belo
UF=SC
Provedor=Betha

[4213609]
Nome=Porto Uniao
UF=SC
Provedor=Betha

[4213708]
Nome=Pouso Redondo
UF=SC
Provedor=Betha

[4214201]
Nome=Quilombo
UF=SC
Provedor=Betha

[4214300]
Nome=Rancho Queimado
UF=SC
Provedor=Betha

[4215000]
Nome=Rio Negrinho
UF=SC
Provedor=IPM

[4215356]
Nome=Saltinho
UF=SC
Provedor=Betha

[4215406]
Nome=Salto Veloso
UF=SC
Provedor=Betha

[4215455]
Nome=Sangao
UF=SC
Provedor=Betha

[4215505]
Nome=Santa Cecilia
UF=SC
Provedor=Betha

[4215554]
Nome=Santa Helena
UF=SC
Provedor=Betha

[4215604]
Nome=Santa Rosa de Lima
UF=SC
Provedor=Betha

[4215679]
Nome=Santa Terezinha
UF=SC
Provedor=Betha

[4215703]
Nome=Santo Amaro da Imperatriz
UF=SC
Provedor=Betha

[4215802]
Nome=Sao Bento do Sul
UF=SC
Provedor=IPM

[4215901]
Nome=Sao Bonifacio
UF=SC
Provedor=Betha

[4216008]
Nome=Sao Carlos
UF=SC
Provedor=Betha

[4216107]
Nome=Sao Domingos
UF=SC
Provedor=Betha

[4216255]
Nome=Sao Joao Do Oeste
UF=SC
Provedor=Betha

[4216305]
Nome=Sao Joao Batista
UF=SC
Provedor=Betha

[4216354]
Nome=Sao Joao do Itaperiu
UF=SC
Provedor=Betha

[4216404]
Nome=Sao Joao do Sul
UF=SC
Provedor=Betha

[4216503]
Nome=Sao Joaquim
UF=SC
Provedor=Betha

[4216602]
Nome=Sao Jose
UF=SC
Provedor=Betha

[4216800]
Nome=Sao Jose do Cerrito
UF=SC
Provedor=Betha

[4216909]
Nome=Sao Lourenco do Oeste
UF=SC
Provedor=Betha

[4217006]
Nome=Sao Ludgero
UF=SC
Provedor=Betha

[4217105]
Nome=Sao Martinho
UF=SC
Provedor=Betha

[4217204]
Nome=Sao Miguel do Oeste
UF=SC
Provedor=Betha

[4217402]
Nome=Schroeder
UF=SC
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[4217501]
; Atualizado em 02/07/2021
Nome=Seara
UF=SC
Provedor=IPM
ProRecepcionar=http://sync-sc.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
HomRecepcionar=
;
ProLinkURL=http://sync-sc.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%
HomLinkURL=http://sync-sc.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%

[4217550]
Nome=Serra Alta
UF=SC
Provedor=Betha

[4217600]
Nome=Sideropolis
UF=SC
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://sideropolissc.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://sideropolissc.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[4217709]
Nome=Sombrio
UF=SC
Provedor=Betha

[4217808]
Nome=Taio
UF=SC
Provedor=IPM

[4217907]
Nome=Tangara
UF=SC
Provedor=Betha

[4218004]
Nome=Tijucas
UF=SC
Provedor=Betha

[4218350]
Nome=Treviso
UF=SC
Provedor=Betha

[4218400]
Nome=Treze de Maio
UF=SC
Provedor=Betha

[4218509]
Nome=Treze Tilias
UF=SC
Provedor=Betha

[4218608]
Nome=Trombudo Central
UF=SC
Provedor=Betha

[4218756]
Nome=Tunapolis
UF=SC
Provedor=Betha

[4218806]
Nome=Turvo
UF=SC
Provedor=Betha

[4219002]
Nome=Urussanga
UF=SC
Provedor=Betha

[4219101]
Nome=Vargeao
UF=SC
Provedor=Betha

[4219176]
Nome=Vargem Bonita
UF=SC
Provedor=Betha

[4219200]
Nome=Vidal Ramos
UF=SC
Provedor=Betha

[4219507]
Nome=Xanxere
UF=SC
Provedor=Betha

[4219606]
Nome=Xavantina
UF=SC
Provedor=Betha

[4219705]
Nome=Xaxim
UF=SC
Provedor=Betha

[4219853]
Nome=Zortea
UF=SC
Provedor=Betha

[4220000]
Nome=Balneario Rincao
UF=SC
Provedor=Betha

[4300646]
Nome=Ametista do Sul
UF=RS
Provedor=Betha

[4301107]
Nome=Arroio dos Ratos
UF=RS
Provedor=Betha

[4302105]
Nome=Bento Goncalves
UF=RS
Provedor=IPM

[4302451]
Nome=Boqueirao do Leao
UF=RS
Provedor=Betha

[4304002]
Nome=Campo Novo
UF=RS
Provedor=Betha

[4304358]
Nome=Candiota
UF=RS
Provedor=Betha

[4304630]
Nome=Capao Da Canoa
UF=RS
Provedor=Betha

[4305173]
Nome=Cerro Grande do Sul
UF=RS
Provedor=Betha

[4305801]
Nome=Constantina
UF=RS
Provedor=Betha

[4306007]
Nome=Crissiumal
UF=RS
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://crissiumal-portais.govcloud.com.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://crissiumal-portais.govcloud.com.br/nfse.portal.integracao.teste/services.svc

[4309100]
Nome=Gramado
UF=RS
Provedor=Betha

[4310439]
Nome=Ipe
UF=RS
Provedor=Betha

[4310850]
Nome=Jaboticaba
UF=RS
Provedor=Betha

[4311304]
Nome=Lagoa Vermelha
UF=RS
Provedor=Betha

[4312450]
Nome=Morro Redondo
UF=RS
Provedor=Betha

[4313037]
Nome=Nova Esperanca do Sul
UF=RS
Provedor=Betha

[4313706]
; Atualizado em 28/12/2021
Nome=Palmeira das Missoes
UF=RS
Provedor=IPM
ProRecepcionar=http://sync-rs.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
HomRecepcionar=
;
ProLinkURL=http://sync-rs.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%
HomLinkURL=http://sync-rs.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%

[4316006]
Nome=Rolante
UF=RS
Provedor=Betha

[4317806]
Nome=Santo Augusto
UF=RS
Provedor=Betha

[4318002]
Nome=Sao Borja
UF=RS
Provedor=DBSeller
ProRecepcionar=https://nfse.saoborja.rs.gov.br/webservice/index/producao
HomRecepcionar=http://hom.nfse.saoborja.rs.gov.br:81/webservice/index/homologacao
;
ProNameSpace=https://nfse.saoborja.rs.gov.br/webservice/index/producao
HomNameSpace=http://hom.nfse.saoborja.rs.gov.br:81/webservice/index/homologacao

[4318408]
Nome=Sao Jeronimo
UF=RS
Provedor=Betha

[4319372]
Nome=Sao Pedro do Butia
UF=RS
Provedor=Betha

[4320552]
Nome=Sertao Santana
UF=RS
Provedor=Betha

[4321402]
Nome=Tenente Portela
UF=RS
Provedor=Betha

[4321501]
Nome=Torres
UF=RS
Provedor=Betha

[4321907]
Nome=Tres Passos
UF=RS
Provedor=Betha

[5001243]
Nome=Aral Moreira
UF=MS
Provedor=Betha

[5002001]
Nome=Bataypora
UF=MS
Provedor=Betha

[5003157]
Nome=Coronel Sapucaia
UF=MS
Provedor=Betha

[5003454]
Nome=Deodapolis
UF=MS
Provedor=Betha

[5003801]
Nome=Fatima do Sul
UF=MS
Provedor=Betha

[5004601]
Nome=Itaquirai
UF=MS
Provedor=Betha

[5005400]
Nome=Maracaju
UF=MS
Provedor=Betha

[5005681]
Nome=Mundo Novo
UF=MS
Provedor=Betha

[5006200]
Nome=Nova Andradina
UF=MS
Provedor=Betha

[5006259]
Nome=Novo Horizonte do Sul
UF=MS
Provedor=Betha

[5006903]
Nome=Porto Murtinho
UF=MS
Provedor=Betha

[5007406]
Nome=Rio Verde de Mato Grosso
UF=MS
Provedor=Betha

[5007554]
Nome=Santa Rita do Pardo
UF=MS
Provedor=Betha

[5007976]
Nome=Taquarussu
UF=MS
Provedor=Betha

[5100300]
Nome=Alto Araguaia
UF=MT
Provedor=Betha

[5100409]
Nome=Alto Garcas
UF=MT
Provedor=Betha

[5100805]
Nome=Apiacas
UF=MT
Provedor=Betha

[5102686]
Nome=Campos de Julio
UF=MT
Provedor=Betha

[5103304]
Nome=Comodoro
UF=MT
Provedor=Betha

[5103379]
Nome=Cotriguacu
UF=MT
Provedor=Betha

[5107180]
Nome=Ribeirao Cascalheira
UF=MT
Provedor=Betha

[5107859]
Nome=Sao Felix do Araguaia
UF=MT
Provedor=Betha

[5108352]
Nome=Vale de Sao Domingos
UF=MT
Provedor=Betha

[5108600]
; Atualizado em 24/01/2022
Nome=Vila Rica
UF=MT
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[5201454]
Nome=Aparecida do Rio Doce
UF=GO
Provedor=Betha

[5201504]
Nome=Apore
UF=GO
Provedor=Betha

[5204300]
Nome=Cacu
UF=GO
Provedor=Betha

[5205471]
Nome=Chapadao do Ceu
UF=GO
Provedor=Betha

[5210802]
Nome=Itaja
UF=GO
Provedor=Betha

[5211305]
Nome=Itaruma
UF=GO
Provedor=Betha

[5212253]
Nome=Lagoa Santa
UF=GO
Provedor=Betha

[5216304]
Nome=Paranaiguara
UF=GO
Provedor=Betha

[5218805]
Nome=Rio Verde
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=https://api.centi.com.br/nfe/gerar/go/rioverde
ProConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/rps/go/rioverde
ProCancelarNFSe=https://api.centi.com.br/nfe/cancelar/go/rioverde
ProGerarNFSe=https://api.centi.com.br/nfe/gerar/go/rioverde
;
HomRecepcionar=https://api.centi.com.br/nfe/gerar/homologacao/go/rioverde
HomConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/homologacao/rps/go/rioverde
HomCancelarNFSe=https://api.centi.com.br/nfe/cancelar/homologacao/go/rioverde
HomGerarNFSe=https://api.centi.com.br/nfe/gerar/homologacao/go/rioverde
;
ProLinkURL=https://api.centi.dev.br/portal/nfse/go/rioverde/%CodVerif%
HomLinkURL=https://api.centi.dev.br/portal/nfse/go/rioverde/%CodVerif%

[4303301]
Nome=Caibate
UF=RS
Provedor=ABase
Versao=2.01

[4305207]
Nome=Cerro Largo
UF=RS
Provedor=ABase
Versao=2.01

[4306734]
Nome=Doutor Mauricio Cardoso
UF=RS
Provedor=ABase
Versao=2.01

[4309001]
Nome=Girua
UF=RS
Provedor=ABase
Versao=2.01

[4310405]
Nome=Independencia
UF=RS
Provedor=ABase
Versao=2.01

[4315107]
Nome=Porto Xavier
UF=RS
Provedor=ABase
Versao=2.01

[4317509]
Nome=Santo Angelo
UF=RS
Provedor=ABase
Versao=2.01

[4317707]
Nome=Santo Antonio das Missoes
UF=RS
Provedor=ABase
Versao=2.01

[4317905]
Nome=Santo Cristo
UF=RS
Provedor=ABase
Versao=2.01

[4318903]
Nome=Sao Luiz Gonzaga
UF=RS
Provedor=ABase
Versao=2.01

[4321808]
Nome=Tres de Maio
UF=RS
Provedor=ABase
Versao=2.01

[4104204]
Nome=Campo Largo
UF=PR
Provedor=IPM

[3508405]
Nome=Cabreuva
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.cabreuva/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.cabreuva/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.cabreuva/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.cabreuva/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[4322509]
Nome=Vacaria
UF=RS
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://200.170.163.253:8082/nfse.portal.integracao/services.svc
HomRecepcionar=http://200.170.163.253:8082/nfse.portal.integracao.teste/services.svc

[3303906]
Nome=Petropolis
UF=RJ
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/rj.petropolis/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/rj.petropolis/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/rj.petropolis/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/rj.petropolis/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[3526902]
Nome=Limeira
UF=SP
Provedor=iiBrasil
Versao=2.04
ProRecepcionar=https://limeira.iibr.com.br/api/soap/notafiscal.php
HomRecepcionar=https://limeira.iibr.com.br/api/soap/homologacao_notafiscal.php

[4113205]
Nome=Lapa
UF=PR
Provedor=IPM

[3536307]
Nome=Patrocinio Paulista
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=aaa
ProLinkURL=http://aaa/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3544004]
Nome=Rio das Pedras
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://riodaspedras.brgov.com.br:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://riodaspedras.brgov.com.br:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4313904]
Nome=Panambi
UF=RS
Provedor=IPM

[4309209]
Nome=Gravatai
UF=RS
Provedor=IPM

[4218202]
; Atualizado em 26/08/2021
Nome=Timbo
UF=SC
Provedor=IPM
Versao=1.01
ProRecepcionar=https://timbo.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1 
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1 

[3520509]
Nome=Indaiatuba
UF=SP
Provedor=DeISS
Versao=2.03
Params=NaoGerarTag:ValorIss
;
ProRecepcionar=https://deiss.indaiatuba.sp.gov.br/producao/nfse
HomRecepcionar=https://deiss.indaiatuba.sp.gov.br/homologacao/nfse
;
ProNameSpace=http://nfse.indaiatuba.sp.gov.br
HomNameSpace=http://nfse.indaiatuba.sp.gov.br
;
ProSoapAction=http://nfse.indaiatuba.sp.gov.br/
HomSoapAction=http://nfse.indaiatuba.sp.gov.br/

[4301008]
Nome=Arroio do Meio
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://arroiodomeio.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://arroiodomeio.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://arroiodomeio.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://arroiodomeio.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://arroiodomeio.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://arroiodomeio.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologaarroio.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologaarroio.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologaarroio.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologaarroio.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologaarroio.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologaarroio.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4301057]
Nome=Arroio do Sal
UF=RS
Provedor=DBSeller
ProRecepcionar=https://nfse.arroiodosal.rs.gov.br/webservice/index/producao
HomRecepcionar=http://hom.nfe.arroiodosal.rs.gov.br/webservice/index/homologacao
;
ProNameSpace=https://nfse.arroiodosal.rs.gov.br/webservice/index/producao
HomNameSpace=http://hom.nfe.arroiodosal.rs.gov.br/webservice/index/homologacao

[4304804]
Nome=Carlos Barbosa
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://carlosbarbosa.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://carlosbarbosa.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://carlosbarbosa.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://carlosbarbosa.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://carlosbarbosa.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://carlosbarbosa.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologabarbosa.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologabarbosa.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologabarbosa.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologabarbosa.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologabarbosa.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologabarbosa.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[4312708]
Nome=Nonoai
UF=RS
Provedor=DataSmart
Versao=2.02
Params=AliasCidade:NONOAIRS

[3113404]
Nome=Caratinga
UF=MG
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://187.63.193.135/nfse.portal.integracao/services.svc
HomRecepcionar=http://187.63.193.135/nfse.portal.integracao.teste/services.svc

[2503209]
Nome=Cabedelo
UF=PB
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/cabedelo/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/cabedelo/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/cabedelo/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/cabedelo/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/cabedelo/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/cabedelo/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/cabedelo/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/cabedelo/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testecbd/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testecbd/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testecbd/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testecbd/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testecbd/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testecbd/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testecbd/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testecbd/WSNFSE.RecepcionarLoteRpsSincrono.cls

[4309803]
Nome=Ibiaca
UF=RS
Provedor=DataSmart
Versao=2.02
Params=AliasCidade:B_IBIACA

[4300059]
Nome=Agua Santa
UF=RS
Provedor=DataSmart
Versao=2.02
Params=AliasCidade:B_ASANTA

[4316600]
Nome=Sananduva
UF=RS
Provedor=DataSmart
Versao=2.02
Params=AliasCidade:SANANDUVA

[4323358]
Nome=Vila Langaro
UF=RS
Provedor=DataSmart
Versao=2.02
Params=AliasCidade:B_LANGARO

[3554102]
Nome=Taubate
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.taubate/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.taubate/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.taubate/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.taubate/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[4124103]
Nome=Santo Antonio da Platina
UF=PR
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://186.251.15.12:90/nfse.portal.integracao/services.svc
HomRecepcionar=http://186.251.15.12:90/nfse.portal.integracao.teste/services.svc

[4121604]
Nome=Renascenca
UF=PR
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://200.195.142.211:8081/nfse.portal.integracao/services.svc
HomRecepcionar=http://200.195.142.211:8081/nfse.portal.integracao.teste/services.svc

[4106506]
Nome=Coronel Vivida
UF=PR
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://www.nfse.coronelvivida.pr.gov.br:8087/nfse.portal.integracao/services.svc
HomRecepcionar=http://www.nfse.coronelvivida.pr.gov.br:8087/nfse.portal.integracao.teste/services.svc

[1716109]
Nome=Paraiso do Tocantins
UF=TO
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://paraisodotocantinsto.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://paraisodotocantinsto.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[2918407]
Nome=Juazeiro
UF=BA
Provedor=MetropolisWeb
ProRecepcionar=http://issjuazeiro.metropolisweb.com.br:9090/webservicenfse/nfse/services
HomRecepcionar=http://issjuazeiro.metropolisweb.com.br:9090/webservicenfsehomologa/nfse/services

[2919207]
Nome=Lauro de Freitas
UF=BA
Provedor=MetropolisWeb
ProRecepcionar=http://lftributos.metropolisweb.com.br:9090/webservicenfse/nfse/services
HomRecepcionar=http://lftributos.metropolisweb.com.br:9090/webservicenfsehomologa/nfse/services

[4320909]
Nome=Tapejara
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://tapejara.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://tapejara.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://tapejara.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://tapejara.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://tapejara.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://tapejara.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologatapejara.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologatapejara.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologatapejara.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologatapejara.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologatapejara.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologatapejara.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[2603454]
Nome=Camaragibe
UF=PE
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/camaragibe/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/camaragibe/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/camaragibe/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/camaragibe/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/camaragibe/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/camaragibe/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/camaragibe/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/camaragibe/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testecam/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testecam/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testecam/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testecam/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testecam/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testecam/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testecam/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testecam/WSNFSE.RecepcionarLoteRpsSincrono.cls

[4305702]
Nome=Condor
UF=RS
Provedor=SafeWeb
Versao=2.00

[4105706]
Nome=Clevelandia
UF=PR
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://186.250.93.210/nfse.portal.integracao/services.svc
HomRecepcionar=http://186.250.93.210/nfse.portal.integracao.teste/services.svc

[3168606]
Nome=Teofilo Otoni
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/ton
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/ton

[4308458]
Nome=Fortaleza dos Valos
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/fortalezadosvalos/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/fortalezadosvalos_homolog/nfse/ws/principal

[2932507]
Nome=Una
UF=BA
Provedor=EL
ProRecepcionar=https://ba-una-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://ba-una-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://ba-una-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[4311007]
Nome=Jaguarao
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://sistemas.jaguarao.rs.gov.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://sistemas.jaguarao.rs.gov.br/nfse.portal.integracao.teste/services.svc

[5220108]
Nome=Sao Luis de Montes Belos
UF=GO
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://www.slmb.bsit-br.com.br/integracao/services/nfseWS
HomRecepcionar=

[2101400]
Nome=Balsas
UF=MA
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://macontreina.dcfiorilli.com.br:8100/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://macontreina.dcfiorilli.com.br:8100/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[2929503]
Nome=Sao Sebastiao do Passe
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://saosebastiaodopasse.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-saosebastiaodopasse.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://saosebastiaodopasse.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://saosebastiaodopasse.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[4302352]
; Atualizado em 03/08/2021
Nome=Bom Principio
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://bomprincipio.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://bomprincipio.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://bomprincipio.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://bomprincipio.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://bomprincipio.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://bomprincipio.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologabomprincipio.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologabomprincipio.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologabomprincipio.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologabomprincipio.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologabomprincipio.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologabomprincipio.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[2407104]
Nome=Macaiba
UF=RN
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/macaiba/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/macaiba/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/macaiba/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/macaiba/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/macaiba/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/macaiba/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/macaiba/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/macaiba/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testemac/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testemac/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testemac/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testemac/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testemac/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testemac/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testemac/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testemac/WSNFSE.RecepcionarLoteRpsSincrono.cls

[4218855]
Nome=Uniao do Oeste
UF=SC
Provedor=Betha

[3529005]
Nome=Marilia
UF=SP
Provedor=SigISS
ProRecepcionar=https://marilia.sigiss.com.br/marilia/ws/sigiss_ws.php
;
ProSoapAction=urn:sigiss_ws

[3512407]
Nome=Cordeiropolis
UF=SP
Provedor=SigCorp
Versao=2.03
ProRecepcionar=http://abrasfcordeiropolis.sigbancos.com.br/servico.asmx
HomRecepcionar=http://testeabrasfcordeiropolis.sigbancos.com.br/servico.asmx

[3534708]
Nome=Ourinhos
UF=SP
Provedor=SmarAPD
ProRecepcionar=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSEntrada
ProConsultarSituacao=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSEntrada
ProConsultarLote=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSSaida
ProConsultarNFSeRps=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSSaida
ProConsultarNFSe=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSSaida
ProCancelarNFSe=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSEntrada
ProGerarNFSe=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSEntrada
ProRecepcionarSincrono=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSEntrada
ProSubstituirNFSe=http://e-gov.ourinhos.sp.gov.br:8080/tbw/services/WSEntrada
;
HomRecepcionar=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSEntrada
HomConsultarSituacao=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSEntrada
HomConsultarLote=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSSaida
HomConsultarNFSeRps=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSSaida
HomConsultarNFSe=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSSaida
HomCancelarNFSe=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSEntrada
HomGerarNFSe=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSEntrada
HomRecepcionarSincrono=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSEntrada
HomSubstituirNFSe=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/services/WSEntrada
;
ProLinkURL=http://e-gov.ourinhos.sp.gov.br:8080/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://e-gov.ourinhos.sp.gov.br:8080/tbwavaliacao/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[4103107]
Nome=Bocaiuva do Sul
UF=PR
Provedor=GovBR 
ProRecepcionar=http://18.230.172.116/nfsews/services.svc
HomRecepcionar=http://18.230.172.116/nfsewsteste/services.svc

[4104006]
Nome=Campina Grande do Sul
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://campinagrandedosul.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[4109906]
Nome=Icaraima
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://icaraima.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[3523404]
Nome=Itatiba
UF=SP
Provedor=fintelISS
Versao=2.02
ProRecepcionar=https://iss.itatiba.sp.gov.br:4431/WebService.asmx
HomRecepcionar=https://iss.itatiba.sp.gov.br:4432/Homologacao/WebService.asmx
;
ProXMLNameSpace=http://iss.itatiba.sp.gov.br/Arquivos/nfseV202.xsd

[4310900]
Nome=Jacutinga
UF=RS
Provedor=SystemPro
Versao=2.01
ProRecepcionar=https://portal.jacutinga.rs.gov.br:8182/NfseService/NfseService
HomRecepcionar=https://portal.jacutinga.rs.gov.br:8182/NfseService_Homolog/NfseService_Homolog

[3203908]
Nome=Nova Venecia
UF=ES
Provedor=EL
ProRecepcionar=https://es-novavenecia-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-novavenecia-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-novavenecia-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[2800605]
Nome=Barra dos Coqueiros
UF=SE
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://barradoscoqueirosse.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://barradoscoqueirosse.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[4302204]
Nome=Boa vista do Burica
UF=RS
Provedor=ABase
Versao=2.01

[4319158]
Nome=Sao Miguel das Missoes
UF=RS
Provedor=ABase
Versao=2.01

[4322103]
Nome=Tucunduva
UF=RS
Provedor=ABase
Versao=2.01

[4322301]
Nome=Tuparendi
UF=RS
Provedor=ABase
Versao=2.01

[4315057]
Nome=Porto Maua
UF=RS
Provedor=ABase
Versao=2.01

[4315404]
Nome=Redentora
UF=RS
Provedor=ABase
Versao=2.01

[4313805]
Nome=Palmitinho
UF=RS
Provedor=IPM

[4306072]
Nome=Cristal do Sul
UF=RS
Provedor=IPM

[4314456]
Nome=Pinhal
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/pinhal/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/pinhal_homolog/nfse/ws/principal

[4310504]
Nome=Irai
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/irai/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/irai_homolog/nfse/ws/principal

[4307500]
Nome=Espumoso
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/espumoso/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/espumoso_homolog/nfse/ws/principal

[4323507]
Nome=Vista Alegre
UF=RS
Provedor=Betha

[4212007]
Nome=Palma Sola
UF=SC
Provedor=IPM

[4312609]
Nome=Mucum
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://mucum.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://mucum.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://mucum.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://mucum.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://mucum.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://mucum.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologamucum.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologamucum.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologamucum.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologamucum.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologamucum.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologamucum.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[3532009]
Nome=Morungaba
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://servicos.morungaba.sp.gov.br:5600/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://servicos.morungaba.sp.gov.br:5600/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3161809]
Nome=Sao Goncalo do Para
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://saogoncalodoparamg.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://saogoncalodoparamg.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[2930709]
Nome=Simoes Filho
UF=BA
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://simoesfilhoba.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://simoesfilhoba.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3530805]
Nome=Mogi Mirim
UF=SP
Provedor=SigCorp
Versao=2.03
ProRecepcionar=http://abrasfmogimirim.sigbancos.com.br/servico.asmx
HomRecepcionar=http://abrasfmogimirimteste.sigbancos.com.br/servico.asmx

[4210902]
Nome=Modelo
UF=SC
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://187.45.102.66/nfse.portal.integracao/services.svc
HomRecepcionar=http://187.45.102.66/nfse.portal.integracao.teste/services.svc

[3529302]
Nome=Matao
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://matao.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://matao.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[4113304]
Nome=Laranjeiras do Sul
UF=PR
Provedor=Equiplano
Params=CodigoCidade:53

[3551405]
Nome=Serra Azul
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://189.44.176.74:8888/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://189.44.176.74:8888/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4321634]
Nome=Tres Arroios
UF=RS
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://portal.pmtresarroios.com.br:8888/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://portal.pmtresarroios.com.br:8888/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3526803]
Nome=Lencois Paulista
UF=SP
Provedor=ISSLencois
ProRecepcionar=https://apl2.lencoispaulista.sp.gov.br/webservice/wsNotaFiscal.asmx
HomRecepcionar=https://apl2.lencoispaulista.sp.gov.br/wsteste/wsNotaFiscal.asmx

[3515103]
Nome=Embu-Guacu
UF=SP
Provedor=Ginfes
;
ProLinkURL=http://embuguacu.ginfes.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null
HomLinkURL=http://embuguacu.ginfesh.com.br/report/consultarNota?__report=nfs_ver4&cdVerificacao=%CodVerif%&numNota=%NumeroNFSe%&cnpjPrestador=null

[1100189]
; Atualizado em 01/11/2021
Nome=Pimenta Bueno
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://nfse.pimentabueno.ro.gov.br:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://nfse.pimentabueno.ro.gov.br:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3140803]
Nome=Matias Barbosa
UF=MG
Provedor=Futurize
Versao=2.02
ProRecepcionar=https://matiasbarbosamg.nfse-futurize.com.br/webservice/prod
HomRecepcionar=https://matiasbarbosamg.nfse-futurize.com.br/webservice/homo

[4304507]
Nome=Cangucu
UF=RS
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://nfse.cangucu.rs.gov.br:81/nfse.portal.integracao/services.svc
HomRecepcionar=http://nfse.cangucu.rs.gov.br:81/nfse.portal.integracao.teste/services.svc

[4201703]
Nome=Ascurra
UF=SC
Provedor=IPM

[4202107]
Nome=Barra Velha
UF=SC
Provedor=IPM

[4207502]
Nome=Indaial
UF=SC
Provedor=IPM

[4213203]
Nome=Pomerode
UF=SC
Provedor=IPM

[4214706]
Nome=Rio dos Cedros
UF=SC
Provedor=IPM

[4315602]
Nome=Rio Grande
UF=RS
Provedor=Betha

[4303806]
Nome=Campinas do Sul
UF=RS
Provedor=SystemPro
Versao=2.01
ProRecepcionar=https://sistema.campinasdosul.rs.gov.br:8182/NfseService/NfseService
HomRecepcionar=https://sistema.campinasdosul.rs.gov.br:8182/NfseService_Homolog/NfseService_Homolog

[3133303]
Nome=Itaobim
UF=MG
Provedor=EL
ProRecepcionar=https://mg-itaobim-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://mg-itaobim-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://mg-itaobim-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[4117503]
; Atualizado em 26/01/2022
Nome=Paicandu
UF=PR
Provedor=AssessorPublico
ProRecepcionar=http://177.220.141.2:8280/issonline_/servlet/anfse
HomRecepcionar=http://177.220.141.2:8280/issonline_homolog/servlet/anfse

[4105409]
Nome=Chopinzinho
UF=PR
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://int.chopinzinho.pr.gov.br:38181/nfse.portal.integracao/services.svc
HomRecepcionar=http://int.chopinzinho.pr.gov.br:38181/nfse.portal.integracao.teste/services.svc

[1503606]
; Atualizado em 06/10/2021
Nome=Itaituba
UF=PA
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://itaituba.tributosmunicipais.net:8110/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://itaituba.tributosmunicipais.net:8110/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3522406]
Nome=Itapeva
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.itapeva/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.itapeva/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.itapeva/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.itapeva/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[4115309]
Nome=Mariopolis
UF=PR
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://177.44.223.242/nfse.portal.integracao/services.svc
HomRecepcionar=http://177.44.223.242/nfse.portal.integracao.teste/services.svc

[4103222]
Nome=Bom Sucesso do Sul
UF=PR
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://nfse.bomsucessodosul.pr.gov.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://nfse.bomsucessodosul.pr.gov.br/nfse.portal.integracao.teste/services.svc

[4203501]
Nome=Campo Ere
UF=SC
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://179.127.140.41:8095/nfse.portal.integracao/services.svc
HomRecepcionar=http://179.127.140.41:8095/nfse.portal.integracao.teste/services.svc

[3507506]
Nome=Botucatu
UF=SP
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://botucatu.bsit-br.com.br/integracao/services/nfseWS
HomRecepcionar=

[1713304]
Nome=Miranorte
UF=TO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://miranorte.megasoftarrecadanet.com.br/miranorte/ws/nfseSOAP
HomRecepcionar=

[1711902]
Nome=Lagoa da Confusao
UF=TO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://lagoadaconfusao.megasoftarrecadanet.com.br/lagoadaconfusao/ws/nfseSOAP
HomRecepcionar=

[3300233]
Nome=Armacao dos Buzios
UF=RJ
Provedor=ModernizacaoPublica
Versao=2.02
ProRecepcionar=http://notabuzios.modernizacaopublica.com.br:8041/nfe/webservices/NFEServices.jws
HomRecepcionar=http://notabuzios.modernizacaopublica.com.br:3082/homologacao/webservices/NFEServices.jws

[3302858]
Nome=Mesquita
UF=RJ
Provedor=ModernizacaoPublica
Versao=2.02
ProRecepcionar=http://sis-nfe.mesquita.rj.gov.br:8040/nfe/webservices/NFEServices.jws
HomRecepcionar=http://notamesquita.modernizacaopublica.com.br:8038/homologacao/webservices/NFEServices.jws

[3304128]
Nome=Quatis
UF=RJ
Provedor=ModernizacaoPublica
Versao=2.02
ProRecepcionar=http://sis-nfse.quatis.rj.gov.br:8061/nfe/webservices/NFEServices.jws
HomRecepcionar=http://sishomologacao.quatis.rj.gov.br:8064/homologacao/webservices/NFEServices.jws

[3302502]
Nome=Mage
UF=RJ
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[4117909]
Nome=Palotina
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://palotina.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[3509007]
Nome=Caieiras
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.caieiras/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.caieiras/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.caieiras/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.caieiras/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[5221858]
Nome=Valparaiso de Goias
UF=GO
Provedor=Governa
Params=VersaoArquivo:1|VersaoImpressao:3
;
ProRecepcionar=http://177.69.240.130/webservicevalparaiso/esiat.asmx

[4123808]
Nome=Santa Izabel do Oeste
UF=PR
Provedor=IPM
Versao=1.01
ProRecepcionar=https://santaizabeldooeste.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[5205109]
Nome=Catalao
UF=GO
Provedor=Prodata
Versao=2.01
ProRecepcionar=http://187.111.62.130/prodataws/services/NfseWSService
HomRecepcionar=

[3536703]
Nome=Pederneiras
UF=SP
Provedor=SmarAPD
ProRecepcionar=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSEntrada
ProConsultarSituacao=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSEntrada
ProConsultarLote=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSSaida
ProConsultarNFSeRps=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSSaida
ProConsultarNFSe=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSSaida
ProCancelarNFSe=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSEntrada
ProGerarNFSe=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSEntrada
ProRecepcionarSincrono=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSEntrada
ProSubstituirNFSe=http://portal.pederneiras.sp.gov.br:8080/tbw/services/WSEntrada
;
HomRecepcionar=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSEntrada
HomConsultarSituacao=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSEntrada
HomConsultarLote=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSSaida
HomConsultarNFSeRps=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSSaida
HomConsultarNFSe=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSSaida
HomCancelarNFSe=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSEntrada
HomGerarNFSe=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSEntrada
HomRecepcionarSincrono=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSEntrada
HomSubstituirNFSe=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/services/WSEntrada
;
ProLinkURL=http://portal.pederneiras.sp.gov.br:8080/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://portal.pederneiras.sp.gov.br:8080/tbwhomolog/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[3143401]
Nome=Monte Siao
UF=MG
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://200.98.66.118:9028/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://200.98.66.118:9028/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3515186]
Nome=Espirito Santo do Pinhal
UF=SP
Provedor=SimplISS
ProRecepcionar=http://wsespiritosantodopinhal.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsespiritosantodopinhal.com.br/nfseservice.svc

[3102605]
Nome=Andradas
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/andradas
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/andradas

[3162922]
Nome=Sao Joaquim De Bicas
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/sjbicas
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/sjbicas

[3106309]
Nome=Belo Oriente
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/beor
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/beor

[3128709]
Nome=Guaxupe
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/guax
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/guax

[3170404]
Nome=Unai
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/unai
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/unai

[3556453]
Nome=Vargem Grande Paulista
UF=SP
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/vgp
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/vgp

[3146107]
Nome=Ouro Preto
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/ouroPreto
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/ouroPreto

[3159803]
Nome=Santa Vitoria
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/santaVit
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/santaVit

[3112604]
Nome=Capinopolis
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/capinop
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/capinop

[1501451]
Nome=Belterra
UF=PA
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://187.108.203.210:8095/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://187.108.203.210:8095/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3500303]
Nome=Aguaí
UF=MG
Provedor=Betha

[3303609]
Nome=Paracambi
UF=RJ
Provedor=fintelISS
Versao=2.02
ProRecepcionar=https://iss.paracambi.rj.gov.br:4431/WebService.asmx
HomRecepcionar=https://iss.paracambi.rj.gov.br:4432/Homologacao/WebService.asmx
;
ProXMLNameSpace=http://iss.paracambi.rj.gov.br/Arquivos/nfseV202.xsd

[2708006]
Nome=Santana do Ipanema
UF=AL
Provedor=DBSeller
ProRecepcionar=https://santanadoipanema.nfse.srv.br/webservice/index/producao
HomRecepcionar=https://santanadoipanema.nfse.srv.br/webservice/index/homologacao
;
ProNameSpace=https://santanadoipanema.nfse.srv.br/webservice/index/producao
HomNameSpace=https://santanadoipanema.nfse.srv.br/webservice/index/homologacao

[3550407]
Nome=Sao Pedro
UF=SP
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://186.238.54.82/nfse.portal.integracao/services.svc
HomRecepcionar=http://186.238.54.82/nfse.portal.integracao.teste/services.svc

[3152204]
Nome=Porteirinha
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://porteirinhamg.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://porteirinhamg.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[3306305]
; Atualizado em 19/10/2021
Nome=Volta Redonda
UF=RJ
Provedor=SimplISS
Versao=2.03
ProRecepcionar=https://wsvoltaredonda.simplissweb.com.br/nfseservice.svc
HomRecepcionar=https://wshomologacaoabrasf1.simplissweb.com.br/nfseservice.svc

[3123205]
Nome=Dores Do Indaia
UF=MG
Provedor=GovDigital
Versao=2.00
ProRecepcionar=https://ws.nfe-cidades.com.br/ws/dores
HomRecepcionar=https://ws.homolog.nfe-cidades.com.br/ws/dores

[4307054]
Nome=Ernestina
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/ernestina/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/ernestina_homolog/nfse/ws/principal

[4321469]
Nome=Tio Hugo
UF=RS
Provedor=Digifred
Versao=2.00
ProRecepcionar=https://sim.digifred.net.br/tiohugo/nfse/ws/principal
HomRecepcionar=https://sim.digifred.net.br/tiohugo_homolog/nfse/ws/principal

[4207650]
Nome=Ipora do Oeste
UF=SC
Provedor=IPM

[3517208]
Nome=Guaicara
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://45.225.142.194:8080/IssWeb-ejb/IssWebWS/IssWebWS?wsd
ProLinkURL=http://45.225.142.194:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3161106]
Nome=Sao Francisco
UF=MG
Provedor=eReceita
Versao=2.02
ProRecepcionar=http://webservice.ereceita.net.br/ws/saofranciscomg/wsProducao.php
HomRecepcionar=http://webservice.ereceita.net.br/ws/saofranciscomg/wsHomologacao.php
;
ProLinkURL=http://server21.saofranciscomg.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.saofranciscomg.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[3533403]
; Atualizado em 27/05/2021
Nome=Nova Odessa
UF=SP
Provedor=SmarAPD
ProRecepcionar=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSEntrada
ProConsultarSituacao=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSEntrada
ProConsultarLote=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSSaida
ProConsultarNFSeRps=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSSaida
ProConsultarNFSe=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSSaida
ProCancelarNFSe=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSEntrada
ProGerarNFSe=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSEntrada
ProRecepcionarSincrono=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSEntrada
ProSubstituirNFSe=http://apps.novaodessa.sp.gov.br:9083/tbw/services/WSEntrada
;
HomRecepcionar=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSEntrada
HomConsultarSituacao=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSEntrada
HomConsultarLote=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSSaida
HomConsultarNFSeRps=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSSaida
HomConsultarNFSe=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSSaida
HomCancelarNFSe=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSEntrada
HomGerarNFSe=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSEntrada
HomRecepcionarSincrono=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSEntrada
HomSubstituirNFSe=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/services/WSEntrada
;
ProLinkURL=http://apps.novaodessa.sp.gov.br:9083/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://apps.novaodessa.sp.gov.br:9083/tbwhomolog/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[3522703]
Nome=Itapolis
UF=SP
Provedor=SmarAPD
Versao=2.04
ProRecepcionar=http://notafiscal.itapolis.sp.gov.br:8090/tbw/services/nfseSOAP
HomRecepcionar=https://tributacao.smarapd.com.br/tbwhomolog/services/nfseSOAP
;
ProLinkURL=http://suporte.itapolis.sp.gov.br:9083/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%
HomLinkURL=http://suporte.itapolis.sp.gov.br:9083/tbw/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%ChaveAcesso%

[3304904]
; Atualizado em 19/10/2021
Nome=Sao Goncalo
UF=RJ
Provedor=SimplISS
Versao=2.03
ProRecepcionar=https://wssaogoncalo.simplissweb.com.br/nfseservice.svc
HomRecepcionar=https://wshomologacaoabrasf1.simplissweb.com.br/nfseservice.svc

[5200258]
; Atualizado em 27/10/2021
Nome=Aguas Lindas de Goias
UF=GO
Provedor=Prodata
Versao=2.01
ProRecepcionar=http://sistema.aguaslindasdegoias.go.gov.br/prodataws/services/NfseWSService
HomRecepcionar=

[4218301]
Nome=Tres Barras
UF=SC
Provedor=IPM

[4301636]
Nome=Balneario Pinhal
UF=RS
Provedor=TcheInfo
Versao=2.04

[4305306]
Nome=Chapada
UF=RS
Provedor=TcheInfo
Versao=2.04

[4314779]
Nome=Pontao
UF=RS
Provedor=TcheInfo
Versao=2.04

[4318457]
Nome=Sao Jose das Missoes
UF=RS
Provedor=TcheInfo
Versao=2.04

[4312955]
Nome=Nova Boa Vista
UF=RS
Provedor=TcheInfo
Versao=2.04

[4305850]
Nome=Coqueiros do Sul
UF=RS
Provedor=TcheInfo
Versao=2.04

[4316204]
Nome=Rondinha
UF=RS
Provedor=TcheInfo
Versao=2.04

[5101902]
Nome=Brasnorte
UF=MT
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://200.199.196.35:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://200.199.196.35:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1100452]
Nome=Buritis
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://160.238.242.254:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://160.238.242.254:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4104451]
Nome=Cantagalo
UF=PR
Provedor=Equiplano
Params=CodigoCidade:51

[2606200]
Nome=Goiana
UF=PE
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/goiana/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/goiana/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/goiana/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/goiana/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/goiana/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/goiana/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/goiana/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/goiana/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testegoi/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testegoi/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testegoi/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testegoi/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testegoi/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testegoi/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testegoi/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testegoi/WSNFSE.RecepcionarLoteRpsSincrono.cls

[4301701]
Nome=Barao de Cotergipe
UF=RS
Provedor=SystemPro
Versao=2.01
ProRecepcionar=https://portal.baraodecotegipe.rs.gov.br:8182/NfseService/NfseService
HomRecepcionar=https://portal.baraodecotegipe.rs.gov.br:8182/NfseService_Homolog/NfseService_Homolog

[5103700]
Nome=Feliz Natal
UF=MT
Provedor=FISSLex
ProRecepcionar=https://feliznatal.fisslex.com.br/fiss-lex/servlet/aws_recepcionarloterps
ProConsultarSituacao=https://feliznatal.fisslex.com.br/fiss-lex/servlet/aws_consultarsituacaoloterps
ProConsultarLote=https://feliznatal.fisslex.com.br/fiss-lex/servlet/aws_consultaloterps
ProConsultarNFSeRps=https://feliznatal.fisslex.com.br/fiss-lex/servlet/aws_consultanfseporrps
ProConsultarNFSe=https://feliznatal.fisslex.com.br/fiss-lex/servlet/aws_consultanfse
ProCancelarNFSe=https://feliznatal.fisslex.com.br/fiss-lex/servlet/aws_cancelarnfse
;
ProLinkURL=https://feliznatal.fisslex.com.br/fiss-lex/servlet/apnotafiscalurl?%CodVerif%

[1100064]
Nome=Colorado do Oeste
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://iss.coloradodooeste.ro.gov.br:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://iss.coloradodooeste.ro.gov.br:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3537107]
Nome=Pedreira
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://intranet.pedreira.sp.gov.br:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://intranet.pedreira.sp.gov.br:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[5209952]
Nome=Indiara
UF=GO
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://gestaopublica.indiara.bsit-br.com.br/integracao/services/nfseWS
HomRecepcionar=http://gestaopublica.indiara.bsit-br.com.br/integracao/services/nfseWS

[2906303]
Nome=Canavieiras
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://canavieiras.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-canavieiras.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://canavieiras.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://canavieiras.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[3541604]
Nome=Promissao
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://kaingang.comunicapromissao.com.br:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://kaingang.comunicapromissao.com.br:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3552809]
Nome=Taboao da Serra
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.taboaodaserra/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.taboaodaserra/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.taboaodaserra/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.taboaodaserra/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[5209705]
Nome=Hidrolandia
UF=GO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://186.211.164.130:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://186.211.164.130:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1709302]
Nome=Guarai
UF=TO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://guarai.megasoftarrecadanet.com.br/guarai/ws/nfseSOAP
HomRecepcionar=

[3305109]
Nome=Sao Joao de Meriti
UF=RJ
Provedor=SigISS
ProRecepcionar=https://saojoaodemeriti.sigiss.com.br/saojoaodemeriti/ws/sigiss_ws.php
HomRecepcionar=https://testesaojoaodemeriti.sigiss.com.br/testesaojoaodemeriti/ws/sigiss_ws.php
;
ProSoapAction=urn:sigiss_ws

[3537909]
Nome=Pilar do Sul
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://www.nfse.pilardosul.sp.gov.br:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://www.nfse.pilardosul.sp.gov.br:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3123304]
Nome=Dores do Turvo
UF=MG
Provedor=Adm
Versao=2.01
ProRecepcionar=http://ws.admnotafiscal.com.br/2
HomRecepcionar=http://wshomologacao.admnotafiscal.com.br/2
;
ProNameSpace=http://ws.admnotafiscal.com.br/2/nfse.wsdl
HomNameSpace=http://wshomologacao.admnotafiscal.com.br/2/nfse.wsdl
;
ProSoapAction=http://ws.admnotafiscal.com.br/2/
HomSoapAction=http://wshomologacao.admnotafiscal.com.br/2/

[3509601]
; Atualizado em 08/02/2022
Nome=Campo Limpo Paulista
UF=SP
Provedor=GeisWeb
Params=AliasCidade:campolimpopaulista
;
ProRecepcionar=https://www.geisweb.net.br/producao/campolimpopaulista/webservice/GeisWebServiceImpl.php

[3204302]
Nome=Presidente Kennedy
UF=ES
Provedor=EL
ProRecepcionar=https://es-presidentekennedy-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-presidentekennedy-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-presidentekennedy-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3200706]
Nome=Atilio Vivacqua
UF=ES
Provedor=Betha

[5208905]
Nome=Goias
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://goias.megasoftarrecadanet.com.br/goias/ws/nfseSOAP
HomRecepcionar=

[3503901]
; Atualizado em 27/05/2021
Nome=Aruja
UF=SP
Provedor=SmarAPD
Versao=2.03
ProRecepcionar=http://servicos.prefeituradearuja.sp.gov.br:8080/tbw/services/Abrasf23
HomRecepcionar=http://servicos.prefeituradearuja.sp.gov.br:8080/tbwhomologacao/services/Abrasf23
;
ProLinkURL=
HomLinkURL=

[1100155]
Nome=Ouro Preto do Oeste
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://201.216.110.67:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://201.216.110.67:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1100031]
Nome=Cabixi
UF=RO
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://nfse.cabixi.ro.gov.br/nfse.portal.integracao/services.svc
HomRecepcionar=http://nfse.cabixi.ro.gov.br/nfse.portal.integracao.teste/services.svc

[4110706]
Nome=Irati
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://irati.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[2504603]
Nome=Conde
UF=PB
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://conde.aossoftware.com.br:8888/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://conde.aossoftware.com.br:8888/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3506102]
Nome=Bebedouro
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.bebedouro/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.bebedouro/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.bebedouro/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.bebedouro/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[4312385]
Nome=Monte Belo do Sul
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://montebelo.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://montebelo.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://montebelo.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://montebelo.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://montebelo.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://montebelo.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologamontebelo.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologamontebelo.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologamontebelo.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologamontebelo.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologamontebelo.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologamontebelo.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[1505031]
; Atualizado em 16/03/2022
Nome=Novo Progresso
UF=PA
Provedor=Fiorilli
Versao=2.00
;
ProRecepcionar=http://novoprogresso.tec.br:8071/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://novoprogresso.tec.br:8071/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4321956]
Nome=Trindade do Sul
UF=RS
Provedor=DataSmart
Versao=2.02
Params=AliasCidade:B_TRINDADE

[3502804]
Nome=Aracatuba
UF=SP
Provedor=AssessorPublico
ProRecepcionar=http://201.49.72.130:8083/issonline/servlet/anfse
HomRecepcionar=http://201.49.72.130:8083/issonline-homolog/servlet/anfse

[4313375]
Nome=Nova Santa Rita
UF=RS
Provedor=IPM

[3528502]
Nome=Mairipora
UF=SP
Provedor=Conam
ProRecepcionar=https://nfe.etransparencia.com.br/sp.mairipora/webservice/aws_nfe.aspx
HomRecepcionar=https://nfehomologacao.etransparencia.com.br/sp.mairipora/webservice/aws_nfe.aspx
;
ProLinkURL=https://nfe.etransparencia.com.br/sp.mairipora/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%
HomLinkURL=https://nfehomologacao.etransparencia.com.br/sp.mairipora/nfe/stubimprimenfe.aspx?%NumeroNFSe%_%InscMunic%_%CodVerif%

[3528007]
Nome=Macatuba
UF=SP
Provedor=Sistemas4R
Versao=2.00
ProRecepcionar=*
ProConsultarLote=http://macatuba.4rtec.com.br/abrasf/aconsultarloterps.aspx
ProConsultarNFSeRps=http://macatuba.4rtec.com.br/abrasf/aconsultarnfseporrps.aspx
ProCancelarNFSe=http://macatuba.4rtec.com.br/abrasf/acancelarnfse.aspx
ProRecepcionarSincrono=http://macatuba.4rtec.com.br/abrasf/arecepcionarloterpssincrono.aspx
;
HomRecepcionar=*
HomConsultarLote=http://macatuba.4rtec.com.br/abrasf/ahconsultarloterps.aspx
HomConsultarNFSeRps=http://macatuba.4rtec.com.br/abrasf/ahconsultarnfseporrps.aspx
HomCancelarNFSe=http://macatuba.4rtec.com.br/abrasf/ahcancelarnfse.aspx
HomRecepcionarSincrono=http://macatuba.4rtec.com.br/abrasf/ahrecepcionarloterpssincrono.aspx
;
ProLinkURL=https://macatuba.4rtec.com.br/CS/Em_Impressao_Nfe.aspx?id=%CodVerif%
HomLinkURL=https://macatuba.4rtec.com.br/CS/Em_Impressao_NfeHomologa.aspx?id=%CodVerif%

[4121505]
Nome=Reboucas
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://reboucas.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[3205036]
; Incluído em 10/05/2021
Nome=Vargem Alta
UF=ES
Provedor=EL
ProRecepcionar=https://es-vargemalta-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-vargemalta-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-vargemalta-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3203320]
; Incluído em 10/05/2021
Nome=Marataizes
UF=ES
Provedor=EL
ProRecepcionar=https://es-marataizes-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-marataizes-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-marataizes-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3200136]
; Incluído em 10/05/2021
Nome=Aguia Branca
UF=ES
Provedor=EL
ProRecepcionar=https://es-aguiabranca-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://es-aguiabranca-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://es-aguiabranca-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3509205]
; Incluído em 10/05/2021
Nome=Cajamar
UF=SP
Provedor=GeisWeb
Params=AliasCidade:cajamar
;
ProRecepcionar=https://www.geisweb.net.br/producao/cajamar/webservice/GeisWebServiceImpl.php

[4112504]
; Incluído em 14/05/2021
Nome=Jardim Alegre
UF=PR
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://18.229.179.240/nfse.portal.integracao/services.svc
HomRecepcionar=http://18.229.179.240/nfse.portal.integracao.teste/services.svc

[5106257]
; Atualizado em 16/11/2021
Nome=Nova Xavantina
UF=MT
Provedor=Agili
Params=NomeTagAtividadeEconomica:CodigoAtividadeEconomica
;
ProRecepcionar=https://agiliblue.agilicloud.com.br/api/EnviarLoteRps
ProConsultarLote=https://agiliblue.agilicloud.com.br/api/ConsultarLoteRps
ProConsultarNFSeRps=https://agiliblue.agilicloud.com.br/api/ConsultarNfseRps
ProConsultarNFSe=https://agiliblue.agilicloud.com.br/api/ConsultarNfseFaixa
ProCancelarNFSe=https://agiliblue.agilicloud.com.br/api/CancelarNfse
ProGerarNFSe=https://agiliblue.agilicloud.com.br/api/GerarNfse
ProSubstituirNFSe=https://agiliblue.agilicloud.com.br/api/SubstituirNfse
;
HomRecepcionar=
HomConsultarLote=
HomConsultarNFSeRps=
HomConsultarNFSe=
HomCancelarNFSe=
HomGerarNFSe=
HomSubstituirNFSe=

[5208806] 
; Incluído em 24/05/2021
Nome=Goianira
UF=GO
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://goianira.bsit-br.com.br/integracao/services/nfseWS
HomRecepcionar=

[4307559]
; Incluído em 25/05/2021
Nome=Estacao
UF=RS
Provedor=SystemPro
Versao=2.01
ProRecepcionar=https://sistema.pmestacao.com.br:8182/NfseService/NfseService
HomRecepcionar=https://sistema.pmestacao.com.br:8182/NfseService_Homolog/NfseService_Homolog

[3523107]
; Incluído em 27/05/2021
Nome=Itaquaquecetuba
UF=SP
Provedor=SilTecnologia
ProRecepcionar=https://itaquaquecetuba.siltecnologia.com.br/services/Abrasf10
HomRecepcionar=
;
ProLinkURL=http://itaquaquecetuba.siltecnologia.com.br/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%CodVerif%
HomLinkURL=http://itaquaquecetuba.siltecnologia.com.br/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%CodVerif%

[3160702]
; Incluído em 28/05/2021
Nome=Santos Dumont
UF=MG
Provedor=ADPM
Versao=2.03
ProRecepcionar=https://api.redemunicipal.com.br/serversoap/NfseWSService
HomRecepcionar=http://200.251.30.48:8080/serversoap/NfseWSService

[4214805]
; Atualizado em 26/08/2021
Nome=Rio do Sul
UF=SC
Provedor=IPM
Versao=1.01
Params=Assinar:AssRpsGerarNFSe
;
ProRecepcionar=https://riodosul.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[4317202]
; Atualizado em 26/08/2021
Nome=Santa Rosa
UF=RS
Provedor=IPM
Versao=1.01
ProRecepcionar=https://santarosa.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[4211900]
; Atualizado em 21/03/2022
Nome=Palhoca
UF=SC
Provedor=IPM
Versao=1.01
ProRecepcionar=https://palhoca.atende.net:7443/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[4114609]
; Atualizado em 21/03/2022
Nome=Marechal Candido Rondon
UF=PR
Provedor=IPM
Versao=1.01
ProRecepcionar=https://marechalcandidorondon.atende.net:7443/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[3139805]
; Incluído em 01/06/2021
Nome=Mar De Espanha
UF=MG
Provedor=Futurize
Versao=2.02
ProRecepcionar=https://mardeespanhamg.nfse-futurize.com.br/webservice/prod
HomRecepcionar=

[3531506]
; Incluído em 04/06/2021
Nome=Monte Azul Paulista
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://914f087b1e8f.sn.mynetname.net:35000/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://914f087b1e8f.sn.mynetname.net:35000/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[5211909] 
; Incluído em 11/06/2021
Nome=Jatai
UF=GO
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://gestaopublica.jatai.bsit-br.com.br/integracao/services/nfseWS
HomRecepcionar=

[4300570]
; Incluído em 18/08/2021
Nome=Alto Feliz
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://187.84.56.98:8082/nfse.portal.integracao/services.svc
HomRecepcionar=http://187.84.56.98:8082/nfse.portal.integracao.teste/services.svc

[3552700]
; Incluído em 18/06/2021
Nome=Tabatinga
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://189.20.141.242:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://189.20.141.242:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4113700]
; Incluído em 21/06/2021
; Atualizado em 29/11/2021
Nome=Londrina
UF=PR
Provedor=SigISS
Versao=1.03
ProRecepcionar=https://iss.londrina.pr.gov.br/ws/v1_03/sigiss_ws.php
HomRecepcionar=http://testeiss.londrina.pr.gov.br/ws/v1_03/sigiss_ws.php
;
ProSoapAction=http://iss.londrina.pr.gov.br/ws/v1_03

[1100403]
; Incluído em 24/06/2021
Nome=Alto Paraiso
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://servicos.altoparaiso.ro.gov.br:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://servicos.altoparaiso.ro.gov.br:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4122305]
; Incluído em 07/07/2021
Nome=Rio Negro
UF=PR
Provedor=IPM
ProRecepcionar=http://sync-pr.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
HomRecepcionar=http://sync-pr.nfs-e.net/datacenter/include/nfw/importa_nfw/nfw_import_upload.php?eletron=1
;
ProLinkURL=http://sync-pr.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%
HomLinkURL=http://sync-pr.nfs-e.net/datacenter/include/nfw/nfw_imp_notas.php?codauten=%CodVerif%

[5214507]
; Incluído em 19/07/2021
; Atualizado em 14/08/2022
Nome=Neropolis
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=https://api.centi.com.br/nfe/gerar/go/neropolis
ProConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/rps/go/neropolis
ProCancelarNFSe=https://api.centi.com.br/nfe/cancelar/go/neropolis
ProGerarNFSe=https://api.centi.com.br/nfe/gerar/go/neropolis
;
HomRecepcionar=https://api.centi.com.br/nfe/gerar/homologacao/go/neropolis
HomConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/homologacao/rps/go/neropolis
HomCancelarNFSe=https://api.centi.com.br/nfe/cancelar/homologacao/go/neropolis
HomGerarNFSe=https://api.centi.com.br/nfe/gerar/homologacao/go/neropolis
;
ProLinkURL=https://api.centi.dev.br/portal/nfse/go/neropolis/%CodVerif%
HomLinkURL=https://api.centi.dev.br/portal/nfse/go/neropolis/%CodVerif%

[2930105]
; Atualizado em 01/02/2022
Nome=Senhor Do Bonfim
UF=BA
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://senhordobonfimba.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://senhordobonfimba.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[4203105]
; Incluído em 03/08/2021
Nome=Caibi
UF=SC
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://186.236.16.66:8095/nfse.portal.integracao/services.svc
HomRecepcionar=http://186.236.16.66:8095/nfse.portal.integracao.teste/services.svc

[4306502]
; Incluído em 03/08/2021
Nome=Dom Feliciano
UF=RS
Provedor=SystemPro
Versao=2.01
ProRecepcionar=https://www.sistemas.domfeliciano.rs.gov.br:8182/NfseService/NfseService
HomRecepcionar=https://www.sistemas.domfeliciano.rs.gov.br:8182/NfseService_Homolog/NfseService_Homolog

[3146305]
; Incluído em 03/08/2021
Nome=Padre Paraiso
UF=MG
Provedor=NFSeBrasil

[5200134]
; Incluído em 03/08/2021
Nome=Acreuna
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=https://api.centi.com.br/nfe/gerar/go/acreuna
ProConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/rps/go/acreuna
ProCancelarNFSe=https://api.centi.com.br/nfe/cancelar/go/acreuna
ProGerarNFSe=https://api.centi.com.br/nfe/gerar/go/acreuna
;
HomRecepcionar=https://api.centi.com.br/nfe/gerar/homologacao/go/acreuna
HomConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/homologacao/rps/go/acreuna
HomCancelarNFSe=https://api.centi.com.br/nfe/cancelar/homologacao/go/acreuna
HomGerarNFSe=https://api.centi.com.br/nfe/gerar/homologacao/go/acreuna
;
ProLinkURL=https://api.centi.dev.br/portal/nfse/go/acreuna/%CodVerif%
HomLinkURL=https://api.centi.dev.br/portal/nfse/go/acreuna/%CodVerif%

[5213756]
; Incluído em 06/08/2021
Nome=Montividiu
UF=GO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://45.182.54.130:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://45.182.54.130:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4203204]
; Incluído em 11/08/2021
Nome=Camboriu
UF=SC
Provedor=Simple
ProRecepcionar=http://simple.camboriu.sc.gov.br/LISIPMC/NFSePrefeituraCamboriu.wso

[3107307]
; Incluído em 12/08/2021
Nome=Bocaiuva
UF=MG
Provedor=Sintese
Versao=2.04
ProRecepcionar=https://bocaiuva.sintesetecnologia.com.br/nfsews/NfseWS
HomRecepcionar=http://homologacao.sintesetecnologia.com.br/nfsews/NfseWS

[4121406]
; Incluído em 20/08/2021
Nome=Realeza
UF=PR
Provedor=Equiplano
Params=CodigoCidade:49

[5217708]
; Incluído em 30/08/2021
Nome=Pontalina
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://pontalina.megasoftarrecadanet.com.br/pontalina/ws/nfseSOAP
HomRecepcionar=

[4301958]
; Incluído em 30/08/2021
Nome=Barra Funda
UF=RS
Provedor=TcheInfo
Versao=2.04

[3506904]
; Incluído em 08/09/2021
Nome=Bofete
UF=SP
Provedor=GeisWeb
Params=AliasCidade:bofete
;
ProRecepcionar=https://www.geisweb.net.br/producao/bofete/webservice/GeisWebServiceImpl.php

[1100940]
Nome=Cujubim
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://receita.cujubim.ro.gov.br:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://receita.cujubim.ro.gov.br:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3109006]
Nome=Brumadinho
UF=MG
Provedor=EL
ProRecepcionar=https://mg-brumadinho-pm-nfs.cloud.el.com.br/RpsServiceService
HomRecepcionar=
;
ProLinkURL=https://mg-brumadinho-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%
HomLinkURL=https://mg-brumadinho-pm-nfs.cloud.el.com.br/paginas/sistema/autenticacaoNota.jsf?cpfCnpj=%Cnpj%&chave=%CodVerif%

[3526407]
; Incluído em 10/09/2021
Nome=Laranjal Paulista
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://189.45.236.250/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://189.45.236.250/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[3119302]
; Incluído em 14/09/2021
Nome=Coromandel
UF=MG
Provedor=eReceita
Versao=2.02
ProRecepcionar=http://webservice.ereceita.net.br/ws/coromandelmg/wsProducao.php
HomRecepcionar=http://webservice.ereceita.net.br/ws/coromandelmg/wsHomologacao.php
;
ProLinkURL=http://server21.coromandel.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.coromandel.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[3529807]
; Atualizado em 24/09/2021
Nome=Mineiros do Tiete
UF=SP
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://54.207.200.34/nfse.portal.integracao/services.svc
HomRecepcionar=http://54.207.200.34/nfse.portal.integracao.teste/services.svc

[4304903]
; Incluído em 17/09/2021
Nome=Casca
UF=RS
Provedor=Citta
Versao=2.03
ProRecepcionar=https://casca.cittaweb.com.br/nfse/services/nfseSOAP
;
HomLinkURL=https://casca.cittaweb.com.br/nfse/api/public/documento/report/%CodVerif%

[4312674]
; Incluído em 17/09/2021
Nome=Nicolau Vergueiro
UF=RS
Provedor=Citta
Versao=2.03
ProRecepcionar=https://nicolau.cittaweb.com.br/nfse/services/nfseSOAP
;
HomLinkURL=https://nicolau.cittaweb.com.br/nfse/api/public/documento/report/%CodVerif%

[4314001]
; Incluído em 17/09/2021
Nome=Parai
UF=RS
Provedor=Citta
Versao=2.03
ProRecepcionar=https://parai.cittaweb.com.br/nfse/services/nfseSOAP
;
HomLinkURL=https://parai.cittaweb.com.br/nfse/api/public/documento/report/%CodVerif%

[4312757]
; Incluído em 17/09/2021
Nome=Nova Alvorada
UF=RS
Provedor=Citta
Versao=2.03
ProRecepcionar=https://nalvorada.cittaweb.com.br/nfse/services/nfseSOAP
;
HomLinkURL=https://nalvorada.cittaweb.com.br/nfse/api/public/documento/report/%CodVerif%

[4312807]
; Incluído em 17/09/2021
NomeNova Araca
UF=RS
Provedor=Citta
Versao=2.03
ProRecepcionar=https://novaaraca.cittaweb.com.br/nfse/services/nfseSOAP
;
HomLinkURL=https://novaaraca.cittaweb.com.br/nfse/api/public/documento/report/%CodVerif%

[4318051]
; Incluído em 17/09/2021
Nome=Sao Domingos Do Sul
UF=RS
Provedor=Citta
Versao=2.03
ProRecepcionar=https://sds.cittaweb.com.br/nfse/services/nfseSOAP
;
HomLinkURL=https://sds.cittaweb.com.br/nfse/api/public/documento/report/%CodVerif%

[4322558]
; Incluído em 17/09/2021
Nome=Vanini
UF=RS
Provedor=Citta
Versao=2.03
ProRecepcionar=https://vanini.cittaweb.com.br/nfse/services/nfseSOAP
;
HomLinkURL=https://vanini.cittaweb.com.br/nfse/api/public/documento/report/%CodVerif%

[4126652]
; Incluído em 21/09/2021
Nome=Sulina
UF=PR
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://177.71.163.104/nfse.portal.Integracao/Services.svc
HomRecepcionar=http://177.71.163.104/nfse.portal.integracao.teste/services.svc

[2616407]
; Incluído em 26/09/2021
Nome=Vitoria de Santo Antao
UF=PE
Provedor=Tinus
ProRecepcionar=http://www.tinus.com.br/csp/vitoria/WSNFSE.RecepcionarLoteRps.cls
ProConsultarSituacao=http://www.tinus.com.br/csp/vitoria/WSNFSE.ConsultarSituacaoLoteRps.cls
ProConsultarLote=http://www.tinus.com.br/csp/vitoria/WSNFSE.ConsultarLoteRps.cls
ProConsultarNFSeRps=http://www.tinus.com.br/csp/vitoria/WSNFSE.ConsultarNfsePorRps.cls
ProConsultarNFSe=http://www.tinus.com.br/csp/vitoria/WSNFSE.ConsultarNfse.cls
ProCancelarNFSe=http://www.tinus.com.br/csp/vitoria/WSNFSE.CancelarNfse.cls
ProGerarNFSe=http://www.tinus.com.br/csp/vitoria/WSNFSE.GerarNfse.cls
ProRecepcionarSincrono=http://www.tinus.com.br/csp/vitoria/WSNFSE.RecepcionarLoteRpsSincrono.cls
;
HomRecepcionar=http://www2.tinus.com.br/csp/testevit/WSNFSE.RecepcionarLoteRps.cls
HomConsultarSituacao=http://www2.tinus.com.br/csp/testevit/WSNFSE.ConsultarSituacaoLoteRps.cls
HomConsultarLote=http://www2.tinus.com.br/csp/testevit/WSNFSE.ConsultarLoteRps.cls
HomConsultarNFSeRps=http://www2.tinus.com.br/csp/testevit/WSNFSE.ConsultarNfsePorRps.cls
HomConsultarNFSe=http://www2.tinus.com.br/csp/testevit/WSNFSE.ConsultarNfse.cls
HomCancelarNFSe=http://www2.tinus.com.br/csp/testevit/WSNFSE.CancelarNfse.cls
HomGerarNFSe=http://www2.tinus.com.br/csp/testevit/WSNFSE.GerarNfse.cls
HomRecepcionarSincrono=http://www2.tinus.com.br/csp/testevit/WSNFSE.RecepcionarLoteRpsSincrono.cls

[3506003]
; Incluído em 26/09/2021
; Atualizado em 21/12/2021
Nome=Bauru
UF=SP
Provedor=SilTecnologia
Versao=2.03
ProRecepcionar=https://tributario.bauru.sp.gov.br/services/Abrasf23
HomRecepcionar=http://tbhomologacao.bauru.sp.gov.br/services/Abrasf23
;
ProLinkURL=https://tributario.bauru.sp.gov.br/loginWeb.jsp?execobj=NFSENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%CodVerif%
HomLinkURL=http://tbhomologacao.bauru.sp.gov.br/loginWeb.jsp?execobj=NFENotaFiscalBuscarDireto&cnpj=%Cnpj%&numero=%NumeroNFSe%&chave=%CodVerif%

[3101904]
; Incluído em 01/10/2021
Nome=Alpinopolis
UF=MG
Provedor=eReceita
Versao=2.02
ProRecepcionar=https://webservice.ereceita.net.br/ws/alpinopolismg/wsProducao.php
HomRecepcionar=https://www3.ereceita.net.br/ereceita/rpp/ws/alpinopolismg/wsHomologacao.php
;
ProLinkURL=http://server21.alpinopolis.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true
HomLinkURL=http://server21.alpinopolis.mg.gov.br/nfse/VisualizarXMLdaNota.aspx?Prestador=&Numero=%NumeroNFSe%&Codigo=%CodVerif%&page=default.aspx&origin=ConAut&pdf=true

[3200409]
; Atualizado em 06/10/2021
Nome=Anchieta
UF=ES
Provedor=EL
ProRecepcionar=http://servicos.anchieta.es.gov.br:9090/nfse/RpsServiceService
HomRecepcionar=
;
ProLinkURL=http://servicos.anchieta.es.gov.br:9090/nfse/paginas/sistema/autenticacao.jsf?cpfCnpj=%Cnpj%&chave=%
HomLinkURL=http://servicos.anchieta.es.gov.br:9090/nfse/paginas/sistema/autenticacao.jsf?cpfCnpj=%Cnpj%&chave=%

[1101104]
; Incluído em 06/10/2021
Nome=Itapuã do Oeste
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://45.225.19.186:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://45.225.19.186:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1100130]
; Incluído em 06/10/2021
Nome=Machadinho do Oeste
UF=RO
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://nfe.machadinho.ro.gov.br:5660/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://nfe.machadinho.ro.gov.br:5660/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1101757]
; Incluído em 06/10/2021
Nome=Vale do Anari
UF=RO
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://valedoanari.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[2205706]
; Incluído em 06/10/2021
Nome=Luís Correia
UF=PI
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://45.184.27.5:3075/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://45.184.27.5:3075/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[2207702]
; Incluído em 06/10/2021
Nome=Parnaíba
UF=PI
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://notafiscal.parnaiba.pi.gov.br:8080/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://notafiscal.parnaiba.pi.gov.br:8080/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4322707]
; Incluído em 29/10/2021
Nome=Vera Cruz
UF=RS
Provedor=Pronim
Versao=2.02
ProRecepcionar=http://srvwebveracruz.ddns.com.br:8086/nfse.portal.integracao/services.svc
HomRecepcionar=http://srvwebveracruz.ddns.com.br:8086/nfse.portal.integracao.teste/services.svc

[2105302]
; Incluído em 01/11/2021
Nome=Imperatriz
UF=MA
Provedor=Actcon
Versao=2.02
ProRecepcionar=https://nfse-ma-imperatriz.portalfacil.com.br/nfseserv/webservice/servicos
HomRecepcionar=https://nfse-ma-imperatriz.portalfacil.com.br/homologacao/webservice/servicos
;
ProXMLNameSpace=http://nfse-ma-imperatriz.portalfacil.com.br/nfseserv/schema/nfse_v202.xsd
HomXMLNameSpace=http://nfse-ma-imperatriz.portalfacil.com.br/homologacao/schema/nfse_v202.xsd
;
ProNameSpace=http://nfse-ma-imperatriz.portalfacil.com.br/nfseserv/webservice/nfse.wsdl
HomNameSpace=http://nfse-ma-imperatriz.portalfacil.com.br/homologacao/webservice/nfse.wsdl
;
ProSoapAction=http://nfse-ma-imperatriz.portalfacil.com.br/nfseserv/webservice/servicos#
HomSoapAction=http://nfse-ma-imperatriz.portalfacil.com.br/homologacao/webservice/servicos#

[4300802]
; Incluído em 05/11/2021
Nome=Antonio Prado
UF=RS
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://antonioprado-portais.govcloud.com.br/NFSe.portal.integracao/services.svc
HomRecepcionar=http://antonioprado-portais.govcloud.com.br/NFSe.portal.integracao.teste/services.svc

[5106372]
; Incluído em 16/11/2021
Nome=Pedra Preta
UF=MT
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://pedrapreta.iss.elotech.com.br/iss-ws/nfse203.wsdl

[5215306] 
; Incluído em 17/11/2021
Nome=Orizona
UF=GO
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://gestaopublica.orizona.bsit-br.com.br/integracao/services/nfseWS

[4308706]
; Incluído em 22/11/2021
Nome=Gaurama
UF=RS
Provedor=SystemPro
Versao=2.01
ProRecepcionar=https://sistema.gaurama.rs.gov.br:8182/NfseService/NfseService
HomRecepcionar=https://sistema.gaurama.rs.gov.br:8182/NfseService_Homolog/NfseService_Homolog

[4323770]
; Incluído em 24/11/2021
Nome=Westfalia
UF=RS
Provedor=Tecnos
Versao=2.01
ProRecepcionar=*
ProConsultarLote=http://westfalia.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
ProConsultarNFSeRps=http://westfalia.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
ProConsultarNFSePorFaixa=http://westfalia.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
ProCancelarNFSe=http://westfalia.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
ProRecepcionarSincrono=http://westfalia.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
ProGerarNFSe=*
ProSubstituirNFSe=http://westfalia.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx
;
HomRecepcionar=*
HomConsultarLote=http://homologawestfalia.nfse-tecnos.com.br:9097/ConsultaLoteRPS.asmx
HomConsultarNFSeRps=http://homologawestfalia.nfse-tecnos.com.br:9095/ConsultaNFSePorRPS.asmx
HomConsultarNFSePorFaixa=http://homologawestfalia.nfse-tecnos.com.br:9096/ConsultaNFSePorFaixa.asmx
HomCancelarNFSe=http://homologawestfalia.nfse-tecnos.com.br:9098/CancelamentoNFSe.asmx
HomRecepcionarSincrono=http://homologawestfalia.nfse-tecnos.com.br:9091/EnvioLoteRPSSincrono.asmx
HomGerarNFSe=*
HomSubstituirNFSe=http://homologawestfalia.nfse-tecnos.com.br:9086/SubstituicaoNFSe.asmx

[2914604]
; Incluído em 29/11/2021
; Alterado em 14/02/2022
Nome=Irece
UF=BA
Provedor=Saatri
Versao=2.01
ProRecepcionar=https://irece.saatri.com.br/servicos/nfse.svc
HomRecepcionar=https://homologa-irece.saatri.com.br/servicos/nfse.svc
;
ProLinkURL=https://irece.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%
HomLinkURL=https://irece.saatri.com.br/Relatorio/VisualizarNotaFiscal?numero=%NumeroNFSe%&codigoVerificacao=%CodVerif%

[5220603] 
; Incluído em 14/12/2021
Nome=Silvania
UF=GO
Provedor=Sigep
Versao=2.00
ProRecepcionar=http://silvania.bsit-br.com.br/integracao/services/nfseWS
HomRecepcionar=

[5201801]
; Incluído em 14/12/2021
Nome=Aragoiania
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://aragoiania.megasoftarrecadanet.com.br/aragoiania/ws/nfseSOAP
HomRecepcionar=

[5220207]
; Incluído em 14/12/2021
Nome=Sao Miguel do Araguaia
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=https://api.centi.com.br/nfe/gerar/go/saomigueldoaraguaia
ProConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/rps/go/saomigueldoaraguaia
ProCancelarNFSe=https://api.centi.com.br/nfe/cancelar/go/saomigueldoaraguaia
ProGerarNFSe=https://api.centi.com.br/nfe/gerar/go/saomigueldoaraguaia
;
HomRecepcionar=https://api.centi.com.br/nfe/gerar/homologacao/go/saomigueldoaraguaia
HomConsultarNFSeRps=https://api.centi.com.br/nfe/consultar/homologacao/rps/go/saomigueldoaraguaia
HomCancelarNFSe=https://api.centi.com.br/nfe/cancelar/homologacao/go/saomigueldoaraguaia
HomGerarNFSe=https://api.centi.com.br/nfe/gerar/homologacao/go/saomigueldoaraguaia
;
ProLinkURL=https://api.centi.dev.br/portal/nfse/go/saomigueldoaraguaia/%CodVerif%
HomLinkURL=https://api.centi.dev.br/portal/nfse/go/saomigueldoaraguaia/%CodVerif%

[5103254]
; Incluído em 15/12/2021
Nome=Colniza
UF=MT
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://170.79.84.5:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://170.79.84.5:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4104600]
; Incluído em 27/12/2021
Nome=Capitao Leonidas Marques
UF=PR
Provedor=Betha
Versao=2.02
ProRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-ws/nfseWS
HomRecepcionar=http://e-gov.betha.com.br/e-nota-contribuinte-test-ws/nfseWS

[4102406]
; Incluído em 27/12/2021
Nome=Bandeirantes
UF=PR
Provedor=SimplISS
ProRecepcionar=http://wsbandeirantes.simplissweb.com.br/nfseservice.svc
;
ProLinkURL=http://wsbandeirantes.simplissweb.com.br/nfseservice.svc

[4105300]
; Incluído em 27/12/2021
Nome=Ceu Azul
UF=PR
Provedor=Pronim
Versao=2.03
ProRecepcionar=http://portal.ceuazul.pr.gov.br/nfse.portal.integracao/Services.svc
HomRecepcionar=http://portal.ceuazul.pr.gov.br/nfse.portal.integracao.teste/Services.svc

[4115804]
; Incluído em 27/12/2021
; Atualizado em 21/01/2022
Nome=Medianeira
UF=PR
Provedor=Pronim
ProRecepcionar=http://nfse2.medianeira.pr.gov.br/nfse.portal.integracao/Services.svc
HomRecepcionar=http://nfse2.medianeira.pr.gov.br/nfse.portal.integracao.teste/Services.svc

[4104303]
; Incluído em 17/01/2022
Nome=Campo Mourao
UF=PR
Provedor=IPM
Versao=1.01
ProRecepcionar=https://campomourao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=padrao&eletron=1
HomRecepcionar=https://homologacao.atende.net/atende.php?pg=rest&service=WNERestServiceNFSe&cidade=integracoes&eletron=1

[4127205]
; Incluído em 18/01/2022
Nome=Terra Boa
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://terraboa.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[3163706]
; Incluído em 19/01/2022
Nome=Sao Lourenco
UF=MG
Provedor=WebISS
Versao=2.02
ProRecepcionar=https://saolourencomg.webiss.com.br/ws/nfse.asmx
HomRecepcionar=https://homologacao.webiss.com.br/ws/nfse.asmx
;
ProLinkURL=https://saolourencomg.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%
HomLinkURL=https://homologacao.webiss.com.br/externo/nfse/visualizar/%Cnpj%/%CodVerif%/%NumeroNFSe%

[5217401]
; Incluído em 21/01/2022
Nome=Pires do Rio
UF=GO
Provedor=Centi
Versao=2.02
ProRecepcionar=http://app.centi.com.br/piresdorio/wcf/service/ServiceNfse.svc/ws
HomRecepcionar=

[5221601]
; Incluído em 24/01/2022
Nome=Uruaucu
UF=GO
Provedor=MegaSoft
Versao=2.00
ProRecepcionar=https://uruacu.megasoftarrecadanet.com.br/uruacu/ws/nfseSOAP

[4127403]
; Incluído em 30/01/2022
Nome=Terra Roxa
UF=PR
Provedor=IPM

[4108809]
; Incluído em 30/01/2022
Nome=Guaira
UF=PR
Provedor=IPM

[4111555]
; Incluído em 30/01/2022
Nome=Ivate
UF=PR
Provedor=EloTech

[4107256]
; Incluído em 30/01/2022
Nome=Douradina
UF=PR
Provedor=EloTech

[4115101]
; Incluído em 30/01/2022
Nome=Mariluz
UF=PR
Provedor=EloTech

[4106605]
; Incluído em 30/01/2022
Nome=Cruzeiro do Oeste
UF=PR
Provedor=EloTech

[4306304]
; Incluído em 08/02/2022
Nome=David Canabarro
UF=RS
Provedor=Citta
Versao=2.03
ProRecepcionar=https://davidcanabarro.cittaweb.com.br/nfse/services/nfseSOAP
;
HomLinkURL=https://davidcanabarro.cittaweb.com.br/nfse/api/public/documento/report/%CodVerif%

[4117701]
; Incluído em 15/02/2022
Nome=Palmeira
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://palmeira.iss.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[4106209]
; Incluído em 15/02/2022
Nome=Contenda
UF=PR
Provedor=EloTech
Versao=2.03
ProRecepcionar=https://contenda.oxy.elotech.com.br/iss-ws/nfse203.wsdl
HomRecepcionar=

[3556800]
; Incluído em 16/02/2022
Nome=Viradouro
UF=SP
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://191.5.98.25:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://191.5.98.25:5661/issweb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[4216206]
; Incluído em 22/02/2022
Nome=Sao Francisco do Sul
UF=SC
Provedor=IPM

[4201604]
; Incluído em 22/02/2022
Nome=Arroio Trinta
UF=SC
Provedor=Publica
ProRecepcionar=http://nfse1.publica.inf.br/arroiotrinta_nfse_integracao/Services
HomRecepcionar=http://nfse-teste.publica.inf.br/homologa_nfse_integracao/Services

[3500709]
; Incluído em 24/02/2022
Nome=Agudos
UF=SP
Provedor=AssessorPublico
ProRecepcionar=https://servicos.agudos.sp.gov.br/issonline/servlet/anfse

[1508084]
; Incluído em 03/03/2022
Nome=Tucuma
UF=PA
Provedor=Fiorilli
Versao=2.00
ProRecepcionar=http://168.232.83.142:5661/IssWeb-ejb/IssWebWS/IssWebWS
ProLinkURL=http://168.232.83.142:5661/IssWeb-ejb/formGerarNF.jsf?nroNota=%NumeroNFSe%&codVerificacao=%CodVerif%&cnpj=%Cnpj%&hash=%ChaveAcesso%

[1506138]
; Incluído em 03/03/2022
Nome=Redencao
UF=PA
Provedor=Bauhaus
ProRecepcionar=*
ProGerarNFSe=https://api-nfse-redencao-pa.prefeituramoderna.com.br/ws/services/gerar
ProConsultarNFSe=https://api-nfse-redencao-pa.prefeituramoderna.com.br/ws/services/consultar
ProCancelarNFSe=https://api-nfse-redencao-pa.prefeituramoderna.com.br/ws/services/cancelar
ProSubstituirNFSe=https://api-nfse-redencao-pa.prefeituramoderna.com.br/ws/services/substituir

[4104907]
; Incluído em 08/03/2022
Nome=Castro
UF=PR
Provedor=IPM

[3508603]
; Incluído em 09/03/2022
Nome=Cachoeira Paulista
UF=SP
Provedor=SiapNet
Versao=2.00
ProRecepcionar=https://pmcachoeirapaulista.geosiap.net.br/pmcachoeirapaulista/issonline/ws/index.php
HomRecepcionar=

[5107768]
; Incluído em 14/03/2022
Nome=Santa Rita do Trivelato
UF=MT
Provedor=Agili
Params=NomeTagAtividadeEconomica:CodigoCnaeAtividadeEconomica|NaoGerarTag:CodigoCnae
;
ProRecepcionar=https://agiliblue.agilicloud.com.br/api/EnviarLoteRps
ProConsultarLote=https://agiliblue.agilicloud.com.br/api/ConsultarLoteRps
ProConsultarNFSeRps=https://agiliblue.agilicloud.com.br/api/ConsultarNfseRps
ProConsultarNFSe=https://agiliblue.agilicloud.com.br/api/ConsultarNfseFaixa
ProCancelarNFSe=https://agiliblue.agilicloud.com.br/api/CancelarNfse
ProGerarNFSe=https://agiliblue.agilicloud.com.br/api/GerarNfse
ProSubstituirNFSe=https://agiliblue.agilicloud.com.br/api/SubstituirNfse

[3554508]
; Incluído em 16/03/2022
Nome=Tiete
UF=SP
Provedor=GeisWeb
Params=AliasCidade:tiete
;
ProRecepcionar=https://www.geisweb.net.br/producao/tiete/webservice/GeisWebServiceImpl.php

[4103701]
; Incluído em 21/03/2022
Nome=Cambe
UF=PR
Provedor=ISSCambe
;
ProRecepcionar=https://nfse.cambe.pr.gov.br:8443/enfe-ws/schemas/schema-ws-service.wsdl

[3169505]
; Incluído em 22/03/2022
Nome=Tumiritinga
UF=MG
Provedor=Sintese
Versao=2.04
ProRecepcionar=https://tumiritinga.sintesetecnologia.com.br/nfsews/NfseWS
HomRecepcionar=http://homologacao.sintesetecnologia.com.br/nfsews/NfseWS
