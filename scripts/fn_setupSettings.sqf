/*

    Example Use:
    [] call Aquaman_fnc_UpdateSettings;

*/
//createDialog "Aqua_Settings";

disableSerialization;
//Sets up Variables if they dont exist
if (isNil {profileNamespace getVariable "Aquaman_AutoSpawn"} ) then {
    profileNamespace setVariable ["Aquaman_AutoSpawn", false];
    profileNamespace setVariable ["Aquaman_LowDetail", false];
};

_AutoSpawnEnabled = profileNamespace getVariable "Aquaman_AutoSpawn";
_LowDetailEnabled = profileNamespace getVariable "Aquaman_LowDetail";


_display = findDisplay 15003;

(_display displayCtrl 1) cbSetChecked _AutoSpawnEnabled;
(_display displayCtrl 2) cbSetChecked _LowDetailEnabled;
