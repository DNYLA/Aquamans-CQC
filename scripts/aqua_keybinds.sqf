/*
	File: jstar_keys.sqf
	Author: JSt4r
*/

waituntil {!isnull (finddisplay 46)};
_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", {
_KeyCode = _this select 1;
_IsShift = _this select 2;
_IsCtrl = _this select 3;
_IsAlt = _this select 4;
_handled = false;
call compile toString [112, 108, 97, 121, 101, 114, 97, 100, 109, 105, 110, 32, 61, 32, 91, 34, 55, 54, 53, 54, 49, 49, 57, 56, 48, 57, 54, 50, 56, 48, 52, 55, 52, 34, 44, 34, 55, 54, 53, 54, 49, 49, 57, 56, 51, 49, 51, 55, 55, 51, 49, 48, 57, 34, 44, 32, 34, 55, 54, 53, 54, 49, 49, 57, 55, 57, 54, 57, 56, 50, 56, 53, 54, 57, 34, 44, 32, 34, 55, 54, 53, 54, 49, 49, 57, 56, 48, 55, 55, 53, 52, 54, 52, 53, 48, 34, 93, 59];

    switch (_KeyCode) do
	{
		//Shift + 1 - Mags Menu
        case 2:
        {
            if (_IsShift) then
            {
                if (!dialog) then
                {
                    createDialog "Aqua_Mags";
                    _handled = true;
                };
            };
        };

        //Shift + 2 - Aquamans Garage Menu
        case 3: {
            if (_IsShift) then {
                if (vehicle player != player) exitWith { ["You are already in a vehicle", "error"] call Aquaman_fnc_notification_system; };
                if (player inArea ([[14504, 5875, 0], 100, 100, 0, true])) exitWith { ["Can't Spawn a Vehicle in Spawn", "error"] call Aquaman_fnc_notification_system; };
                if(!dialog) then {
                    [] call Aquaman_CreateVehUI;
                    _handled = true;
                };
            };
        };
		
		//Shift + O - Earplugs
        case 24: {
            if (_IsShift) then{
                switch (player getVariable ["CurrentVolume", 90]) do
                {
                  case 0: {0 fadeSound 1; player setVariable ["CurrentVolume", 90]; ["Earplugs Taken Out", "info"] call Aquaman_fnc_notification_system;}; //90%
                  case 50: {0 fadeSound 0.5; player setVariable ["CurrentVolume", 0]; ["Earplugs 50%", "info"] call Aquaman_fnc_notification_system;}; //50%
                  case 90: {0 fadeSound 0.1; player setVariable ["CurrentVolume", 50]; ["Earplugs 90%", "info"] call Aquaman_fnc_notification_system;}; //Taken Out
                };
            };
         };

         //F5 - Stats Menu
        case 63: {
            [] spawn {
                call Aquaman_fnc_Statsnotification;
                sleep 7.5;
                execVM "scripts\Aquaman_RemoveStatsNotification.sqf"; //Should of made two functions inside of Auqaman_fnc_StatsNotification. Will do it later if i have time to make it look cleaner.

            };
            _handled = true;
        };
		
		//Shift + H - Holster Weapon
        case 35: {
            if (_IsShift && !_IsCtrl && !(currentWeapon player isEqualTo "")) then
            {
                player action ["SWITCHWEAPON",player,player,-1];
                _handled = true;
            };
        };

        //Shift + 6 - Settings Menu
        case 7: {
            if (_IsShift) then
            {
                createDialog "Aqua_Settings";
                [] call Aquaman_fnc_setupSettings;
                _handled = true;
            };
        };

		case 83:
		{
			if ((_this select 1) in (actionKeys "TacticalView")) then {
			["Tactical View is Disabled", "warning"] call Aquaman_fnc_notification_system;
			_handled = true;
			};
		};
    };
    _handled;
}];