{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2021 Daniel Simoes de Almeida               }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
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

(*

  Documenta��o:
  https://github.com/bacen/pix-api

*)

{$I ACBr.inc}

unit ACBrPIXUtil;

interface

uses
  Classes, SysUtils,
  ACBrPIXBase;

const
  cPSSMaximo = 99999999;

resourcestring
  sErroTxIdMuitoLonga = 'Chave TxId excede %d Caracteres';
  sErroTxIdMuitoCurta = 'Chave TxId inferior a %d Caracteres';
  sErroTxIdInvalido = 'Caracteres inv�lidos no TxId';
  sErroPSSForaDaFaixa = 'C�digo ISPB fora da Faixa, 0-99999999';
  sErroEndToEndIdentification = 'EndToEndIdentification deve ser 32 caracteres alfanum�ricos';
  sErroChaveInvalida = 'Chave Inv�lida: %s';

function DetectarTipoChave(const AChave: String): TACBrPIXTipoChave;
function ValidarChave(const AChave: String): String;
function ValidarChaveAleatoria(const AChave: String): Boolean;
function CriarTxId: String;
function FormatarGUID(const AString: String): String;
function ValidarTxId(const ATxId: String; MaiorTamanho: Integer; MenorTamanho: Integer = 0): String;
function ValidarPSS(const AValue: Integer): String;
function ValidarEndToEndId(const AValue: String): String;
function FormatarValorPIX(AValor: Double): String;
function Crc16BRCode(const AString: String): String;

implementation

uses
  ACBrValidador, ACBrUtil, ACBrConsts;

function DetectarTipoChave(const AChave: String): TACBrPIXTipoChave;
var
  s, e: String;
  l: Integer;
begin
  s := trim(AChave);
  l := Length(s);
  Result := tchNenhuma;

  if StrIsNumber(s) then
  begin
    if (l = 11) then
    begin
      e := ACBrValidador.ValidarCPF(s);
      if (e = '') then
        Result := tchCPF;
    end

    else if (l = 14) then
    begin
      e := ACBrValidador.ValidarCNPJ(s);
      if (e = '') then
        Result := tchCNPJ;
    end
  end

  else if (copy(s,1,3) = '+55') and (l=14) and StrIsNumber(copy(s,4,l)) then
    Result := tchCelular

  else if (pos('@', s) > 0) then
  begin
    e := ACBrValidador.ValidarEmail(s);
    if (e = '') then
      Result := tchEmail;
  end

  else if ValidarChaveAleatoria(s) then
    Result := tchAleatoria;
end;

function ValidarChave(const AChave: String): String;
var
  TipoChave: TACBrPIXTipoChave;
begin
  TipoChave := DetectarTipoChave(AChave);
  if (TipoChave = tchNenhuma) then
    Result := Format(sErroChaveInvalida, [AChave])
  else
    Result := '';
end;

function ValidarChaveAleatoria(const AChave: String): Boolean;
var
  s: String;
  l: Integer;
begin
  s := Trim(AChave);
  l := Length(s);
  Result := (l = 36) and
            (copy(s,09,1) = '-') and
            (copy(s,14,1) = '-') and
            (copy(s,19,1) = '-') and
            (copy(s,24,1) = '-') and
            StrIsAlphaNum(StringReplace(s,'-','',[rfReplaceAll]));
end;

function CriarTxId: String;
var
  guid: TGUID;
begin
  if (CreateGUID(guid) = 0) then
  begin
    Result := GUIDToString(guid);
    Result := StringReplace(Result, '-', '', [rfReplaceAll]);
    Result := copy(Result, 2, Length(Result)-2);
  end
  else
    Result := '';
end;

function FormatarGUID(const AString: String): String;
begin
  Result := copy(AString, 1, 8) + '-' +
            copy(AString, 9, 4) + '-' +
            copy(AString,13, 4) + '-' +
            copy(AString,17, 4) + '-' +
            copy(AString,21, 8);
end;

function ValidarTxId(const ATxId: String; MaiorTamanho: Integer;
  MenorTamanho: Integer): String;
var
  e, s: String;
  l: Integer;
begin
  e := '';
  s := Trim(ATxId);
  l := Length(s);

  if (l < MenorTamanho) then
    e := Format(sErroTxIdMuitoCurta, [MenorTamanho])
  else if (l > MaiorTamanho) then
    e := Format(sErroTxIdMuitoLonga, [MaiorTamanho])
  else
  begin
    if not StrIsAlphaNum(s) then
      e := sErroTxIdInvalido;
  end;

  Result := e;
end;

function ValidarPSS(const AValue: Integer): String;
begin
  if (AValue > cPSSMaximo) then
    Result := sErroPSSForaDaFaixa
  else
    Result := '';
end;

function ValidarEndToEndId(const AValue: String): String;
var
  s: String;
  l: Integer;
begin
  s := Trim(AValue);
  l := Length(s);
  Result := '';
  if (l > 0) then
    if (l <> 32) or (not StrIsAlphaNum(s)) then
      Result := sErroEndToEndIdentification;
end;

function FormatarValorPIX(AValor: Double): String;
var
  s: String;
begin
  s := FormatFloatBr(AValor, FloatMask(2,False));
  Result := StringReplace(s, DecimalSeparator, '.', []);
end;

// Fonte: https://github.com/bacen/pix-api/issues/189#issuecomment-783712221
function Crc16BRCode(const AString: String): String;
const
  polynomial = $1021;
var
  crc: WORD;
  i, j: Integer;
  b: Byte;
  bit, c15: Boolean;
begin
  crc := $FFFF;
  for i := 1 to length(AString) do
  begin
    b := Byte(AString[i]);
    for j := 0 to 7 do
    begin
      bit := (((b shr (7 - j)) and 1) = 1);
      c15 := (((crc shr 15) and 1) = 1);
      crc := crc shl 1;
      if (c15 xor bit) then
        crc := crc xor polynomial;
    end;
  end;
  crc := crc and $FFFF;

  Result := IntToHex(crc, 4);
end;

end.

