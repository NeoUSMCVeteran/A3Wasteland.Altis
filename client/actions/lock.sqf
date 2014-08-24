//	@file Version: 1.1
//	@file Name: unlockLock.sqf
//	@file Author: Cael817, with help, inspiration and ideas from around the ArmA community
//	@file Created: 20140728 23:04

private ["_lockStatus", "_vehicle","_nearvehicle"];
_nearvehicle = nearestObjects [player, ["LandVehicle", "Ship", "Air"], 5];
_vehicle = _nearvehicle select 0;
_lockStatus = locked _vehicle;

if (_vehicle getVariable "ownerUID" == getPlayerUID player) then {

	if (_lockStatus == 1) then
	{
		_vehicle lock true;
		_vehicle setVariable ["objectLocked", true, true];
		_vehicle setVariable ["R3F_LOG_disabled",true,true];
		_vehicle say3D "carlock";
		titleText ["Vehicle Locked!","PLAIN DOWN"]; titleFadeOut 2;
	};
	
};

if (_vehicle getVariable "ownerUID" != getPlayerUID player) then
	{
		titleText ["Piss off, you are not the owner of this vehicle","PLAIN DOWN"]; titleFadeOut 5;
		_vehicle say3D "caralarm";
		player action ["lightOn", _vehicle];
		sleep 0.5;
		player action ["lightOff", _vehicle];
		sleep 0.5;
		player action ["lightOn", _vehicle];
		sleep 0.5;
		player action ["lightOff", _vehicle];
		sleep 0.5;
		player action ["lightOn", _vehicle];
		sleep 0.5;
		player action ["lightOff", _vehicle];
		sleep 0.5;
		player action ["lightOn", _vehicle];
		sleep 0.5;
		player action ["lightOff", _vehicle];
		sleep 0.5;
};