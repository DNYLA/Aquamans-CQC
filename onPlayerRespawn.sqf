//player SetPos (PlayerSpawnPoint);

if (AutoSpawn isEqualTo true) then
{
    //sleep 0.5;
    switch (LastSpawn) do
    {
        case "OG": { execVM "scripts\TP\ogTP.sqf"; };
        case "Airport": { execVM "scripts\TP\AirportTP.sqf"; };
        case "Church": { execVM "scripts\TP\ChurchTP.sqf"; };
        case "Fed": { execVM "scripts\TP\FedTP.sqf"; };
        case "Apd": { execVM "scripts\TP\ApdTP.sqf"; };
        case "Lab": { execVM "scripts\TP\LabTP.sqf"; };
        case "Mushroom": { execVM "scripts\TP\MushroomTP.sqf"; };
        case "None": { player setPos PlayerSpawnPoint; };
        default { player setPos PlayerSpawnPoint; };
    };
};
if (AutoSpawn isEqualTo false) then
{
    LastSpawn = false;
    [] call Aquaman_PopulateListBox;
};


//[] call Aquaman_PopulateListBox;

removeAllWeapons player;
removeGoggles player;
removeHeadgear player;
removeVest player;
removeUniform player;
removeAllAssignedItems player;
clearAllItemsFromBackpack player;
removeBackpack player;

player setUnitLoadout(player getVariable["Saved_Loadout",[]]);

player enableFatigue false;

player setCustomAimCoef 0.0;

player switchCamera "EXTERNAL";
player forceWeaponFire [currentWeapon player, "FullAuto"];
player setAmmo [currentWeapon player, 300];