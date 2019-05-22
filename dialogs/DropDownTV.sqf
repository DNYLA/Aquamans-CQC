/*
	File: DropDownTV.sqf
	Author: Aquaman
	Description: Test Drop Down Script that i will use later to update Vehicle UI.
*/

fnc_printParents =
{
	disableSerialization;

	private _parents = [];

	while {!isNull _this} do
	{
		_parents pushBack configName _this;
		_this = inheritsFrom _this;
	};

	reverse _parents;

	private _tv = findDisplay 46 createDisplay "RscDisplayEmpty" ctrlCreate ["RscTree", -1];
	_tv ctrlSetPosition [0,0,1,1];
	_tv ctrlSetBackgroundColor [0,0,0,0.5];
	_tv ctrlCommit 0;
	_tv tvAdd [[], "MRAPS"];
    _tv tvAdd [[0], "Ifrit"];
    _tv tvAdd [[0], "Hunter"];
    _tv tvAdd [[1], "Cars"];
    _tv tvAdd [[1], "SUV"];
    _tv tvAdd [[1], "HAtchback Sport"];
    _tv tvExpand [0];

	private _path = [];
	{
		_tv tvAdd [_path, _x];
		_path pushBack 0;
	} forEach _parents;

	tvExpandAll _tv;
};

(configFile >> "CfgVehicles" >> typeOf player) call fnc_printParents;





_VehType = "Car"; //Dont Load Any Boats or Helicopters
_lbC = ((findDisplay 18002) displayCtrl (1)); //lbC = ListBox Control basically finding the List box
lbClear _lbC; //Check to make sure that vehicles arent re added everytime Dialog is opened

//Only adds these Vehicles.


_mrapsArray = ["O_MRAP_02_F", "B_MRAP_01_F", "I_MRAP_03_F", "O_T_LSV_02_unarmed_F", "B_T_LSV_01_unarmed_F"];
_carsArray = ["C_Hatchback_01_sport_F", "C_SUV_01_F"];
_trucksArray = ["C_Van_01_box_F", "B_Truck_01_Repair_F", "O_Truck_03_covered_F"];

_count = count (configFile >> "cfgVehicles");
_arrayCount = count _VehsAllowed;

private _tv = findDisplay 46 createDisplay "RscDisplayEmpty" ctrlCreate ["RscTree", 50];
_tv ctrlSetPosition [0,0,1,1];
_tv ctrlSetBackgroundColor [0,0,0,0.5];
_tv ctrlCommit 0;

_tv tvAdd [[], ("MRAPS")];
_tv tvAdd [[], ("Cars")];
_tv tvAdd [[], ("Trucks")];

for "_f" from 0 to 2 do
{
    {
        for "_i" from 0 to ((count _x) - 1) do
        {
            _class = (_x select _i);
            _index = _tv tvAdd [[_f], (getText(configFile >> "cfgVehicles" >> _class >> "displayName"))];
            _tv tvSetData[[_f, _i], _class];
            systemChat(str(format (["%1  %2   %3", _class, _f, _i])));
            _lbPicture = (getText(configFile >> "cfgVehicles" >> _class >> "picture"));
            _tv tvSetPicture [[_f, _i], _lbPicture];
        };
    } forEach [_mrapsArray, _carsArray, _trucksArray];

};



_tv tvExpand [0];

_VehicleSelected = tvCurSel _tv;
systemChat(str(_VehicleSelected));
systemChat(str(tvData[50, _VehicleSelected]));
_classVeh = tvData[50, _VehicleSelected];
_emptyPos = position player findEmptyPosition [5,50, _classVeh];
if (count _emptyPos == 0) exitWith { ["Cannot Spawn Vehicle.", "error"] call Aquaman_fnc_notification_system; };


_veh = createVehicle [_classVeh, _emptyPos, [], 0, ""];
_veh setDir (getDir player);
_veh setVehicleAmmo 0;
_veh setVehicleAmmoDef 0;

clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
player moveInAny _veh;


for "_x" from 0 to (_arrayCount - 1) do
{
    //Finding Vehicle
    _class = (_VehsAllowed select _x);

    //Adding Vehicles to LB
    _index = _lbC lbAdd(getText(configFile >> "cfgVehicles" >> _class >> "displayName"));
    _lbC lbSetData[(lbSize _lbC) - 1, _class];
    _lbPicture = (getText(configFile >> "cfgVehicles" >> _class >> "picture"));
    _lbC lbSetPicture[(lbSize _lbC) - 1, _lbPicture];
};


_tv tvAdd [[1], "SUV"];
_tv tvAdd [[1], "HAtchback Sport"];
_tv tvExpand [0];

_count = count (configFile >> "cfgVehicles");
_arrayCount = count _VehsAllowed;

/* for "_x" from 0 to (_arrayCount - 1) do
{
    _veh = ((configFile >> "cfgVEhicles") select _x);
    if
}; */




//Show Vehicles in Array _VehsAllowed Ordered From Array
