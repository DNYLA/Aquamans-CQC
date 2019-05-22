// Disable saving
enableSaving [false, false];

// Disable automatic radio messages
enableRadio false;
enableSentences false;
0 fadeRadio 0;

["Initialize"] call BIS_fnc_dynamicGroups;

// voice
0 enableChannel [true, false]; // Enable user ability to send text but disable voice on global channel
1 enableChannel [true, false]; // Enable user ability to send text but disable voice on side channel
2 enableChannel [false, false]; // Disable user ability to send text and voice on Command channel
3 enableChannel [true, false]; // Enable user ability to send text but disable voice on group

//_AquamansVehicleDiag = [] spawn compile preprocessFileLineNumbers "dialogs\VehicleSpawn.sqf";
//waitUntil {scriptDOne _AquamansVehicleDiag};
Old_Vehicles_Spawned = "";
call compile preprocessFile "scripts\Aquaman_TeleportLB.sqf";

execVM "scripts\aquaman_jump.sqf";
execVM "scripts\aqua_keybinds.sqf";