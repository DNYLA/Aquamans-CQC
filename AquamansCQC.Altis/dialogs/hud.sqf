/*
	File: hud.sqf
	Author: Aquaman
*/

AQUAMAN_HUD =
{
    waitUntil {!isNull player};
    waitUntil { alive player };
    if (!local Player) exitWith {};

    disableSerialization;
    ("AQUAMAN_Layer" call BIS_fnc_rscLayer) cutRsc ["TAG_AQUAMANHUD","PLAIN"];

    _display = uiNamespace getVariable "TAG_AQUAMAN_display";
    _ctrlHps = _display displayCtrl 15002;

    private "_heading";
    while {!isNull _display} do {

        sleep 0.1;
        _ctrlHps ctrlSetText format ["%1%2", round((1 - (damage player)) * 100), "%"];

        switch (true) do {
            case (GetDammage Player < 0.25): {_ctrlHps ctrlSetTextColor [0,0.5,0,1];};
            case (GetDammage Player >= 0.25): {_ctrlHps ctrlSetTextColor [1,1,0,1];};
            case (GetDammage Player >= 0.5): {_ctrlHps ctrlSetTextColor [1,0.645,0,1];};
            case (GetDammage Player >= 0.75): {_ctrlHps ctrlSetTextColor [1,0,0,1];};
        };

    };

};



