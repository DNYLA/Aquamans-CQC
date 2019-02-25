//player SetPos (PlayerSpawnPoint);

if (LastSpawn == "None") then
{
    player setPos PlayerSpawnPoint;
};

if (LastSpawn == "OG") then
{
    execVM "scripts\TP\ogTP.sqf";
};

if (LastSpawn == "Airport") then
{
    execVM "scripts\TP\AirportTP.sqf";
};

if (LastSpawn == "Church") then
{
    execVM "scripts\TP\ChurchTP.sqf";
};

if (LastSpawn == "Fed") then
{
    execVM "scripts\TP\FedTP.sqf";
};

if (LastSpawn == "Apd") then
{
    execVM "scripts\TP\ApdTP.sqf";
};

if (LastSpawn == "Lab") then
{
    execVM "scripts\TP\LabTP.sqf";
};

if (LastSpawn == "Mushroom") then
{
    execVM "scripts\TP\MushroomTP.sqf";
};

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

player setCustomAimCoef 0.35;