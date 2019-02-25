
Aquaman_CreateVehUI =
{
    disableSerialization;
    createDialog "AquamanVVS";
    call Aquaman_LoadVehList;
};

Aquaman_LoadVehList =
{
    _VehType = "Car"; //Dont Load Any Boats or Helicopters
    _lbC = ((findDisplay 18002) displayCtrl (1)); //lbC = ListBox Control basically finding the List box
    lbClear _lbC; //Check to make sure that vehicles arent re added everytime Dialog is opened

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

Aquaman_VehicleCreate =
{
    _VehicleSelected = lbCurSel 1;
    _classVeh = lbData[1, _VehicleSelected];
    _emptyPos = position player findEmptyPosition [5,50, _classVeh]; //Spawn A Vehicle 5-50M around player
    if (count _emptyPos == 0) then {hint "Vehicle Cant be Spawned Here"; }
    else
    {
        _veh = createVehicle [_classVeh, _emptyPos, [], 0, ""];
        player moveInAny _veh;
        _veh setVehicleAmmo 0;
        _veh setVehicleAmmoDef 0;
        clearWeaponCargoGlobal _veh;
        clearMagazineCargoGlobal _veh;
        clearItemCargoGlobal _veh;
        clearBackpackCargoGlobal _veh;
    };
    closeDialog 18002;
};