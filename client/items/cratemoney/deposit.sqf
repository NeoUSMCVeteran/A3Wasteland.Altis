//	@file Name: deposit.sqf
//	@file Author: AgentRev, MercifulFate
//	@file Function: mf_items_cratemoney_deposit

#include "defines.sqf"

#define ERR_NOT_ENOUGH_FUNDS "You don't have enough money."
#define ERR_LESS_THAN_ONE "The amount must be at least $1"

disableSerialization;
private ["_crate", "_dialog", "_amount", "_money"];

_crate = call mf_items_cratemoney_nearest;
_dialog = findDisplay IDD_WARCHEST;

if (isNull _dialog) exitWith {};
if (isNull _crate) exitWith { closeDialog IDD_WARCHEST };

_amount = floor parseNumber ctrlText IDC_AMOUNT;
ctrlSetText [IDC_AMOUNT, str _amount];

if (_amount < 1) exitWith
{
	[ERR_LESS_THAN_ONE, 5] call mf_notify_client;
	playSound "FD_CP_Not_Clear_F";
};

_money = player getVariable ["cmoney", 0];

if (_money < _amount) exitWith
{
	[ERR_NOT_ENOUGH_FUNDS, 5] call mf_notify_client;
	playSound "FD_CP_Not_Clear_F";
};

player setVariable ["cmoney", _money - _amount, true];
_crate setVariable ["cmoney", (_crate getVariable ["cmoney", 0]) + _amount, true];

playSound "defaultNotification";
call mf_items_cratemoney_refresh;

if (["A3W_playerSaving"] call isConfigOn) then
{
	[] spawn fn_savePlayerData;
};
