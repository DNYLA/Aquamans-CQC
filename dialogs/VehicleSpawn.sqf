/*
	File: VehicleSpawn.sqf
	Author: Aquaman
	Description: Includes multiple functions to populate and spawn in a vehicle.

    Working on a a script to make the ListBox a DropDown Tree so you can sort the vehicles out.
*/

private ["_veh"];

//Creates VVS Dialogs.
Aquaman_CreateVehUI =
{
    disableSerialization;
    createDialog "AquamanVVS";
    call Aquaman_LoadVehList;
};

//Adds Vehicles to the ListBox.
Aquaman_LoadVehList =
{
    _VehType = "Car"; //Dont Load Any Boats or Helicopters
    _lbC = ((findDisplay 18002) displayCtrl (1)); //lbC = ListBox Control basically finding the List box
    lbClear _lbC; //Check to make sure that vehicles arent re added everytime Dialog is opened

    //Only adds these Vehicles.
    _VehsAllowed = [
        "O_MRAP_02_F", //Ifrit
        "B_MRAP_01_F", //Hunter
        "I_MRAP_03_F", //Strider
        "O_T_LSV_02_unarmed_F", //Qilin
        "B_T_LSV_01_unarmed_F", //Prowler
        "C_Van_01_box_F", //Truck Boxer
        "C_SUV_01_F", //SUV
        "C_Hatchback_01_sport_F", //Hachback Sport
        "B_Truck_01_Repair_F", //hemtt repair
        "O_Truck_03_covered_F" //tempest transport
    ];

    _count = count (configFile >> "cfgVehicles");
    _arrayCount = count _VehsAllowed;

    /* for "_x" from 0 to (_arrayCount - 1) do
    {
        _veh = ((configFile >> "cfgVEhicles") select _x);
        if
    }; */




    //Show Vehicles in Array _VehsAllowed Ordered From Array
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

    /*
    //Showing Vehicles in Array _VehsAllowed Ordered "Randomly"
    //Disabled because i prefer to order them using the array.
    //This is still useful if you would like to add all vehicles in the game or that are cars into LB just remove the && (_class in _VehsAllowed) check on line 50
    for "_x" from 0 to (_count - 1) do
     {
        _veh = ((configFile >> "cfgVehicles") select _x);
        if (isClass _veh) then
        {
            if (getNumber (_veh >> "scope") == 2) then
            {
                _class = configName _veh;
                if ((_class isKindOf _VehType) && (_class in _VehsAllowed)) then
                {
                    _index = _lbC lbAdd(getText(configFile >> "cfgVehicles" >> _class >> "displayName"));
                    _lbC lbSetData[(lbSize _lbC) - 1, _class];
                    _lbPicture = (getText(configFile >> "cfgVehicles" >> _class >> "picture"));
                    _lbC lbSetPicture[(lbSize _lbC) - 1, _lbPicture];
                };
            };
        };
     }; */
};


//Spawns in Vehicle and Deletes old vehicle spawned in.
Aquaman_VehicleCreate =
{
    //Finding a Suitable Position
    _VehicleSelected = lbCurSel 1;
    _classVeh = lbData[1, _VehicleSelected];
    _emptyPos = position player findEmptyPosition [5,50, _classVeh]; //Spawn A Vehicle 5-50M around player
    if (count _emptyPos == 0) exitWith { ["Cannot Spawn Vehicle.", "error"] call Aquaman_fnc_notification_system; };

    //Spawning a Vehicle In Position Found
    _veh = createVehicle [_classVeh, _emptyPos, [], 0, ""];
    _veh setDir (getDir player);
    _veh setVehicleAmmo 0;
    _veh setVehicleAmmoDef 0;
    //Removing any Items in the Vehicle
    clearWeaponCargoGlobal _veh;
    clearMagazineCargoGlobal _veh;
    clearItemCargoGlobal _veh;
    clearBackpackCargoGlobal _veh;
    player moveInAny _veh; //Moving Player inside vehicle.


    //Deleting old vehicle.
    if (Old_Vehicle_Spawned isEqualTo "") exitWith {closeDialog 18002;}; //If they haven't got an old vehicle then the function will stop.

    deleteVehicle Old_Vehicle_Spawned; //Deletes old vehicle.

    Old_Vehicle_Spawned = _veh; //sets new vehicle spawned in to old vehicle.

    //Works But No need for Iteration Only use this method if you want the player to have more than 1 vehicle spawned at a time.
    /*
    Old_Vehicles_Spawned pushBack _veh;

    if (count Old_Vehicles_Spawned > 1) then
    {
        deleteVehicle (Old_Vehicles_Spawned select 0);
        [Old_Vehicles_Spawned] call BIS_fnc_arrayShift;
    }; */

    closeDialog 18002;
};