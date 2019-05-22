/*
    File: TemplateTP.sqf
    Author: Aquaman
    Description: Template File so you can copy it and then edit it.
*/

_spawnPointsAvailable = []; //Array of Available Spawn Points. If Item in array is Null then spawn point is available.
_spawnPoints = []; //Array of Marker Positions
_MarkerNames = []; //Marker Names
_TotalMarkers = 6; //Change this to the amount of total Markers -1. E.g you have 6 markers at Kavala called kavalaSpawn_0 to kavalaSpawn_5 you would put 5 in the variable. Make sure the first marker name starts at 0 not 1.
_TPFileName = "scripts\TP\<CurrentFileName>.sqf"; //Change <CurrentFileName> to current File
_hasSpawned = false;

_randomSpawn = ceil(random _TotalMarkers);

for "_i" from 0 to _TotalMarkers do
{
    _MarkerNames Set [_i, format["ogSpawn_%1", _i]]; //change og_Spawn to whatever you called you marker.
};

for "_i" from 0 to _TotalMarkers do
{
    _spawnPointsAvailable set [_i, (getMarkerPos (_MarkerNames select _i)) nearEntities [["man"], 20] ]; //Checking if Spawn Points have anyone in a 20M radius.
};

for "_i" from 0 to _TotalMarkers do
{
    _spawnPoints set [_i, getMarkerPos (_MarkerNames select _i)]; //Initializing Marker Positions
};

if (_spawnPointsAvailable Select _randomSpawn isEqualTo []) then
{
    player setPos (_spawnPoints select _randomSpawn); //Sets players Position
    LastSpawn = "OG"; //change this to the location name. Doesnt matter what you call it. (Then go into onPlayerRespawn and add a check to see if the player sapwns there)
    _hasSpawned = true;
};

if (_hasSpawned isEqualTo false) then
{
    execVM _TPFileName; //Check incase all Spawn points are Blocked.
};

//player setPos (getPos selectRandom _arrayOfMarkers) - WIll rewrite script to utilize this so its quicker/easier to read.

closeDialog 2000;