/*

    Example Use:
    ['AutoSpawn',_this select 1] call Aquaman_fnc_UpdateSettings;
*/
disableSerialization;

params [
    ["_setting", "none"],
    ["_value", "false"]
];

switch (_setting) do
{
    case "AutoSpawn": {
        if (_value isEqualTo 1) then
        {
            AutoSpawn = true;
            profileNamespace setVariable ["Aquaman_AutoSpawn", true];


            ["Autospawn isn't enabled by default because it is buggy. It may get removed/reworked in the future as it causes spawn and death issues.", "warning", 10] call Aquaman_fnc_notification_system;
            ["Autospawn Enabled, if You Experience any problems with randomly dying or spawning next to other people i suggest you disable autospawn", "success", 10] call Aquaman_fnc_notification_system;

        } else {
            AutoSpawn = false;
            profileNamespace setVariable ["Aquaman_AutoSpawn", false];

            LastSpawn = "None";

            ["Autospawn Disabled", "success"] call Aquaman_fnc_notification_system;

        };
    };

    case "LowDetail": {
        if (_value isEqualTo 1) then
        {
            profileNamespace setVariable ["Aquaman_LowDetail", true];

            setTerrainGrid 50;

            ["Low Detail Mode Enabled", "success"] call Aquaman_fnc_notification_system;
        } else {
            profileNamespace setVariable ["Aquaman_LowDetail", false];

            setTerrainGrid 10;

            ["Low Detail Mode Disabled", "success"] call Aquaman_fnc_notification_system;

        };
    };
};

[] call Aquaman_fnc_setupSettings;

/*
if (cbChecked ((findDisplay 15003) displayCtrl 2)) then
{
    ["Autospawn Activated", "success"] call Aquaman_fnc_notification_system;
};

*/
