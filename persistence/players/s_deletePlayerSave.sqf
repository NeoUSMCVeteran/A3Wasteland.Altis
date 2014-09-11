//	@file Name: s_deletePlayerSave.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

[_this call PDB_playerFileName, "PlayerSave"] call iniDB_deleteSection;
