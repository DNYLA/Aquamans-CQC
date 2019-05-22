_mags = currentMagazine player;

for "_i" from 1 to 20 do
{
    player addItem _mags;
};

["20 of your current magazines were added to your backpack"] call Aquaman_fnc_notification_system;
closeDialog 105;