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
		//Mags Menu
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

        //Aquamans Garage Menu
        case 3: {
            if (_IsShift) then {
                if (vehicle player != player) exitWith {systemChat("You are Already In a Vehicle");};
                if (player inArea ([[14456, 5889, 0], 50, 50, 0, true])) exitWith {systemChat("You Can't Spawn a Vehicle in Spawn");};
                if(!dialog) then {
                    [] call Aquaman_CreateVehUI;
                    _handled = true;
                };
            };
        };

        //NMD Garage Menu
        case 4: {
            if (_IsShift) then {
                if(vehicle player != player) exitWith {};
                if(!dialog) then {
                    createDialog "NMD_RscDisplayGarage";
                    _handled = true;
                };
            };
        };



		//Earplugs
        case 24: {//o
            if (_shift) then{
                if (soundVolume == 1) then{
                    2 fadeSound 0.1;
                    hint "Earplugs In";
                } else {
                    2 fadeSound 1;
                    hint "Earplugs Out";
                }; _handled = true;
            };
         };

		//Holster Weapon
        case 35: {
            if (_IsShift && !_IsCtrl && !(currentWeapon player isEqualTo "")) then
            {
                player action ["SWITCHWEAPON",player,player,-1];
                _handled = true;
            };
        };

		case 83:
		{
			if ((_this select 1) in (actionKeys "TacticalView")) then {
			hint "Tactical View is Disabled";
			_handled = true;
			};
		};


		/* case 61: {
			if (getplayerUID player in playeradmin) then {
				[] spawn AH_ViewLogs;
				_handled = true;
			};
		}; */

		//case 211: {
			//if (getplayerUID player in playeradmin) then {
				//deletevehicle cursortarget;
				//hint "deleted cursor";
				//_handled = true;
			//};
		//};

    };
    _handled;
}];