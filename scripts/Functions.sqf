/*
 File: ReturnSpawn.sqf
 Author: Aquaman
 Description: Single Used functions.
*/

Aquaman_ReloadWeaponOnDeath = {
    _currentMagazine = currentMagazine player;
    systemChat(str(_currentMagazine));
    _currentMagazineInfo = magazinesAmmoFull player;
    _amountOfMags = count _currentMagazineInfo;
    systemChat(str(_amountOfMags));

    player removeMagazines _currentMagazine;

    player addMagazines  [_currentMagazine, _amountOfMags];


    player removeMagazine _currentMagazine;
    player addMagazine _currentMagazine;
};

Aquaman_ShowKDMessage = {
    sleep 120;
    call Aquaman_fnc_Statsnotification;
    sleep 7.5;
    execVM "scripts\Aquaman_RemoveStatsNotification.sqf"; //Should of made two functions inside of Auqaman_fnc_StatsNotification. Will do it later if i have time to make it look cleaner.
    sleep 90;
    call Aquaman_ShowKDMessage;
};