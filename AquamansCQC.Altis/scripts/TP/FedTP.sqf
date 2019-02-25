_spawnPointsAvailable = []; //Array of Available Spawn Points. If Item in array is Null then spawn point is available.
_spawnPoints = []; //Array of Marker Positions
_MarkerNames = []; //Marker Names
_TotalMarkers = 9; //-1 total amount of markers since arrays start at 0
_TPFileName = "scripts\TP\FedTP.sqf"; //File Location of script
_hasSpawned = false;

_randomSpawn = ceil(random _TotalMarkers);

for "_i" from 0 to _TotalMarkers do
{
    _MarkerNames Set [_i, format["FedSpawn_%1", _i]]; //Initializing Marker Names
};

for "_i" from 0 to _TotalMarkers do
{
    _spawnPointsAvailable set [_i, (getMarkerPos (_MarkerNames select _i)) nearEntities [["man"], 20] ]; //Checking if Spawn Points have anyone in a 20M radius.
};

for "_i" from 0 to _TotalMarkers do
{
    _spawnPoints set [_i, getMarkerPos (_MarkerNames select _i)]; //Initializing Marker Positions
};

for "_i" from 0 to _TotalMarkers do
{
    if ((_randomSpawn isEqualTo _i) && (_spawnPointsAvailable Select _i isEqualTo [])) then
    {
        player setPos (_spawnPoints select _i); //Sets players Position
        LastSpawn = "Fed";
        _hasSpawned = true;
    }
};

if (_hasSpawned isEqualTo false) then
{
    execVM _TPFileName; //Check incase all Spawn points are Blocked.
};

closeDialog 2000;