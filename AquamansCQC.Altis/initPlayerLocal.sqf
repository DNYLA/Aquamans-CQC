private ["_player"];

_player = _this select 0;

/* no fatigue */
player enableFatigue false;

/* cleaning the chat */
0 enableChannel [true, false];
1 enableChannel [true, false];
2 enableChannel [true, false];
3 enableChannel [true, false];

/* fixing the aids part of arma */
disableSerialization;
enableEnvironment false;
player disableConversation true;
enableSentences false;
enableRadio false;
enableSaving [false, false];
0 setFog 0;
//setTerrainGrid 50;

/* Player Related Information */
LastSpawn = "None";
PlayerSpawnPoint = GetPos Player;
player setUnitTrait ["Medic",true];

/* Setting Kills & Deaths Variable If Not Already Set */
if (isNil {profileNamespace getVariable "Aquaman_CQC_Kills"} ) then {
    profileNameSpace setVariable ["Aquaman_CQC_Kills", 0];
};

if (isNil {profileNamespace getVariable "Aquaman_CQC_Deaths"} ) then {
    profileNameSpace setVariable ["Aquaman_CQC_Deaths", 0];
};

/* Loading Player Variables */
_LoadPlayerKills = profileNamespace getVariable "Aquaman_CQC_Kills";
_player setVariable ["Aquaman_CQC_Kills", _LoadPlayerKills];
_LoadPlayerDeaths = profileNamespace getVariable "Aquaman_CQC_Deaths";
_player setVariable ["Aquaman_CQC_Deaths", _LoadPlayerKills];

execVM "scripts\InitialLoadout.sqf";

call compile preprocessFile "dialogs\hud.sqf";
[] spawn AQUAMAN_HUD;

//call compile preprocessFile "dialogs\VehicleSpawn.sqf";

//execVM "scripts\PlayerStats.sqf";

player setUnitTrait ["Medic",true];



execVM "scripts\aquaman_jump.sqf";
execVM "scripts\aqua_keybinds.sqf";
