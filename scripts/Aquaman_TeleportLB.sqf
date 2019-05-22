/*
    File: Aquaman_TeleportLB.sqf
    Author: Aquaman
    Description: Functions to add items to Teleport Dialog and then teleport player when item is selected.
*/

//To refresh player count player must reload Dialog.
//Will try and add automatic updating when i found out how.
Aquaman_PopulateListBox =
{
    createDialog "Aqua_Teleport";
    _lbC = ((findDisplay 2000) displayCtrl (1));
    lbClear _lbC;
    _SpawnPoints = ["OG Arms", "Airport", "Church", "Federal Reserve", "APD", "Laboratory", "Mushroom"]; //Pointless variable as i changed the way the script works
    _triggerNames = [CountTrigger_OG, CountTrigger_Airport, CountTrigger_Church, CountTrigger_Fed, CountTrigger_APD, CountTrigger_Lab, CountTrigger_Mushroom];
    _triggerNamesCount = (count _triggerNames) - 1;
    _playersInAreaArray = [];
    _playersInAreaCount = [];
    _texttFormatted = [];


    //Spent a few days figuring out why this script wouldn't work and it turns out i forgot to put the _x in quotes.
    for "_x" from 0 to (_triggerNamesCount) do
    {
      _playersInAreaArray set [_x, allUnits inAreaArray (_triggerNames select _x)];
    };

    for "_x" from 0 to (_triggerNamesCount) do
    {
        _playersInAreaCount set [_x, count (_playersInAreaArray select _x)];
    };


    for "_x" from 0 to (_triggerNamesCount) do
    {
        _texttFormatted set [_x, format ["%1 players", _playersInAreaCount select _x]];
    };

    //Thanks to HazJ on Bohemia Forums for telling me LbSetTextRight Existed.
    //Probably better way to set the arrays although i don't know how to combine two arrays into one multi dimensional array.
    {
        _x params ["_leftText", "_rightText"];
        _lbC lbAdd _leftText;
        _lbC lbSetTextRight [_forEachIndex, _rightText];
    } forEach
    [
        ["OG Arms", _texttFormatted select 0],
        ["Airport", _texttFormatted select 1],
        ["Church", _texttFormatted select 2],
        ["Federal Reserve", _texttFormatted select 3],
        ["APD", _texttFormatted select 4],
        ["Laboratory", _texttFormatted select 5],
        ["Mushroom", _texttFormatted select 6]
    ];
};

Aquaman_TeleportHandler =
{
    _display = (findDisplay 2000) displayCtrl (1);
    _id = lbCurSel _display;
    switch (_id) do
    {
        case 0: { [] execVM "scripts\TP\ogTP.sqf"; };
        case 1: { [] execVM "scripts\TP\AirportTP.sqf"; };
        case 2: { [] execVM "scripts\TP\ChurchTP.sqf"; };
        case 3: { [] execVM "scripts\TP\FedTP.sqf"; };
        case 4: { [] execVM "scripts\TP\ApdTP.sqf"; };
        case 5: { [] execVM "scripts\TP\LabTP.sqf"; };
        case 6: { [] execVM "scripts\TP\MushroomTP.sqf"; };
    };
};

