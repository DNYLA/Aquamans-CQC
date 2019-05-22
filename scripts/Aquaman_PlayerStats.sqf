/*
    File: Aquaman_TeleportLB.sqf
    Author: Aquaman
    Description: Adds a kill to the kill variable when he kills someone
*/
params [["_unitKilled", objNull], ["_killer", objNull]];
private ["_Aquaman_CQC_Kills"];

// Check if you are the ﻿killer
if (player isEqualTo _killer) then {

	// Update kill count
	_Aquaman_CQC_Kills = (player getVariable ["Aquaman_CQC_Kills", 0]) + 1; // 0 is the default value
	profileNamespace setVariable ["Aquaman_CQC_Kills", _Aquaman_CQC_Kills]; // ProfileNamespace cannot use true with setVariable
	player setVariable ["Aquaman_CQC_Kills", _Aquaman_CQC_Kills];
	player addPlayerScores [2, 0, 0, 0, 0]; //Updates Scoreboard. Adds 2 kills to infantry because team kills adds -1.

};