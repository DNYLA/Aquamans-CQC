/*
    File: LabTP.sqf
    Author: Aquaman
    Description: Intializes spawn points and spawns player at a suitable place for the location
*/

_spawnPointsAvailable = []; //Array of Available Spawn Points. If Item in array is Null then spawn point is available.
_spawnPoints = []; //Array of Marker Positions
_MarkerNames = []; //Marker Names
_TotalMarkers = 9; //-1 total amount of markers since arrays start at 0
_TPFileName = "scripts\TP\LabTP.sqf"; //File Location of script
_hasSpawned = false;

_randomSpawn = ceil(random _TotalMarkers);

for "_i" from 0 to _TotalMarkers do
{
    _MarkerNames Set [_i, format["LabSpawn_%1", _i]]; //Initializing Marker Names
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
    LastSpawn = "Lab";
    _hasSpawned = true;
};

if (_hasSpawned isEqualTo false) then
{
    execVM _TPFileName; //Check incase all Spawn points are Blocked.
};

closeDialog 2000;
