_spawnPointsAvailable = [];
_spawnPoints = [];
_ogSpawns = [];
_TotalMarkers = 9; //-1 since arrays start at 0
_TPFileName = "scripts\TP\MushroomTP.sqf";
_hasSpawned = false;

_randomSpawn = ceil(random 6);
hint format [str _randomSpawn];

for "_i" from 0 to _TotalMarkers do
{
    _ogSpawns Set [_i, format["MushroomSpawn_%1", _i]];
};

for "_i" from 0 to _TotalMarkers do
{
    _spawnPointsAvailable set [_i, (getMarkerPos (_ogSpawns select _i)) nearEntities [["man"], 20] ];
};

for "_i" from 0 to _TotalMarkers do
{
    _spawnPoints set [_i, getMarkerPos (_ogSpawns select _i)];
};



for "_i" from 0 to _TotalMarkers do
{
    if ((_randomSpawn isEqualTo _i) && (_spawnPointsAvailable Select _i isEqualTo [])) then
    {
        player setPos (_spawnPoints select _i);
        _hasSpawned = true;

        systemChat(str(_spawnPointsAvailable select _i));
        systemChat(str(_spawnPoints select _i));
        systemChat(str(_ogSpawns select _i));
    }
};

if (_hasSpawned isEqualTo false) then
{
    execVM _TPFileName;
};

closeDialog 2000;