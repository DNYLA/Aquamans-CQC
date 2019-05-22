player enableFatigue false;
private ["_Aquaman_CQC_Kills"];
// cleaning the chat

0 enableChannel [true, false];
1 enableChannel [true, false];
2 enableChannel [true, false];
3 enableChannel [true, false];

setGroupIconsVisible [false,false];

/* fixing the aids part of arma */
disableSerialization;
enableEnvironment false;
player disableConversation true;
enableSentences false;
enableRadio false;
enableSaving [false, false];
0 setFog 0;
//setTerrainGrid 50;
player setUnitTrait ["Medic",true];
player setCustomAimCoef 0.0;

execVM "scripts\InitialLoadout.sqf";

/* Player Related Information */
LastSpawn = "None";
PlayerSpawnPoint = getPos player;
AutoSpawn = false;

/* Setting Kills & Deaths Variable If Not Already Set. Change the variables if you don't want the kills to be the same on every server thast uses this mission file*/
if (isNil {profileNamespace getVariable "Aquaman_CQC_Kills"} ) then {
    profileNamespace setVariable ["Aquaman_CQC_Kills", 0];
};

if (isNil {profileNamespace getVariable "Aquaman_CQC_Deaths"} ) then {
    profileNamespace setVariable ["Aquaman_CQC_Deaths", 0];
};

call compile preprocessFile "dialogs\hud.sqf";
[] spawn AQUAMAN_HUD;

call compile preprocessFile "dialogs\VehicleSpawn.sqf";
call compile preprocessFile "scripts\Aquaman_TeleportLB.sqf";
call compile preprocessFile "scripts\Functions.sqf";

/* Loading Player Variables */
_Aquaman_CQC_Kills = profileNamespace getVariable "Aquaman_CQC_Kills";
player setVariable ["Aquaman_CQC_Kills", _Aquaman_CQC_Kills, true];
_LoadPlayerDeaths = profileNamespace getVariable "Aquaman_CQC_Deaths";
player setVariable ["Aquaman_CQC_Deaths", _LoadPlayerDeaths, true];

// Run on all clients in multiplayer when player is killled
player addMPEventHandler ["MPKilled", {null = _this execVM "scripts\Aquaman_PlayerStats.sqf";}];

sleep 2;
["Useful Keybinds <br/>SHIFT + 1: Item/Return Spawn Menu<br/>SHIFT + 2: Vehicle Menu<br/>F5: View Stats<br/>Shift + 6: Settings<br/>", "info", 30] call Aquaman_fnc_notification_system;
['AutoSpawn', profileNamespace getVariable "Aquaman_AutoSpawn"] call Aquaman_fnc_UpdateSettings;
['LowDetail', profileNamespace getVariable "Aquaman_LowDetail"] call Aquaman_fnc_UpdateSettings;
[] call Aquaman_fnc_setupSettings;
call Aquaman_ShowKDMessage;