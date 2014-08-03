//	@file Version: 1.0
//	@file Name: spawnVehStoreObject.sqf
//	@file Author: Munch following from spawnStoreObject by AgentRev
//	@file Created: 11/10/2013 22:17
//  @file Revised: 02/21/2014 Munch - for use in vehicle store purchase spawning
//	@file Args:  true: lock the vehicle / false: unlock the vehicle
#define OBJECT_LOCK_TIMEOUT 15

private ["_vehicle","_status","_lockState","_requestKey","_result","_msg"];

_requestTimeout = time + OBJECT_LOCK_TIMEOUT;

_requestKey = call generateKey;
_vehicle = _this select 0;
_status = _this select 3;  // first argument from addAction caller

if(_status) then {
	if (local _vehicle) then {
		_vehicle lock 2;
		_vehicle setVariable ["R3F_LOG_disabled",true,true];
		_result="done";
	} else {
		// Request the server to lock the vehicle
		[[player, netId _vehicle, 2, _requestKey], "vehicleLockUnlock", false, false] call TPG_fnc_MP;
	};
	_msg="Vehicle locked";
	//diag_log format ["unlocklock posted %1,2,%2 to vehicleLockUnlock TPG_fnc_MP call",netId _vehicle,_requestKey];
} else {
	if (local _vehicle) then {
		_vehicle lock 0;
		_vehicle setVariable ["R3F_LOG_disabled",false,true];
		_result="done";
	} else {
		// Request the server to unlock the vehicle
		[[player, netId _vehicle, 0, _requestKey], "vehicleLockUnlock", false, false] call TPG_fnc_MP;
	};
	_msg="Vehicle unlocked";
	//diag_log format ["unlocklock posted %1,0,%2 to vehicleLockUnlock TPG_fnc_MP call",netId _vehicle,_requestKey];
};

hint "Waiting for server to set lock state";

while {isNil "_result" && {time < _requestTimeout}} do
{
	sleep 0.1;
	_result = player getVariable _requestKey;
};

if (!isNil "_result") then {
	hint _msg;
} else {
	hint "Lock state change failed!";
};
