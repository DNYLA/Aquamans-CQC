
/*
    author: sbondo1234
    description: sg_og.sqf
*/
 
_sg_og = ceil(random 5);
 
if (_sg_og == 1) then{
    sg_ogCheck = getMarkerPos "sg_og_1" nearEntities [["man"], 20];
    if (sg_ogCheck isEqualTo []) then{
        player setPos getMarkerPos "sg_og_1";
        player setDir (markerDir "sg_og_1");
} else {
    _sg_og = 2;
};};
if (_sg_og == 2) then{
    sg_ogCheck = getMarkerPos "sg_og_2" nearEntities [["man"], 20];
    if (sg_ogCheck isEqualTo []) then{
        player setPos getMarkerPos "sg_og_2";
        player setDir (markerDir "sg_og_2");
} else {
    _sg_og = 3;
};};
if (_sg_og == 3) then{
    sg_ogCheck = getMarkerPos "sg_og_3" nearEntities [["man"], 20];
    if (sg_ogCheck isEqualTo []) then{
        player setPos getMarkerPos "sg_og_3";
        player setDir (markerDir "sg_og_3");
} else {
    _sg_og = 4;
};};
if (_sg_og == 4) then{
    sg_ogCheck = getMarkerPos "sg_og_4" nearEntities [["man"], 20];
    if (sg_ogCheck isEqualTo []) then{
        player setPos getMarkerPos "sg_og_4";
        player setDir (markerDir "sg_og_4");
} else {
     _sg_og = 5;
 };};
if (_sg_og == 5) then{
    sg_ogCheck = getMarkerPos "sg_og_5" nearEntities [["man"], 20];
    if (sg_ogCheck isEqualTo []) then{
        player setPos getMarkerPos "sg_og_5";
        player setDir (markerDir "sg_og_5");
};};
 
closeDialog 2;