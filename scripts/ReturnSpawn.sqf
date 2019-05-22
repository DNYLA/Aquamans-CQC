/*
 File: ReturnSpawn.sqf
 Author: Aquaman
 Description: Returns player to spawn when they next die.
*/
LastSpawn = "None";
["You will return to spawn when you next die", "info"] call Aquaman_fnc_notification_system;
closeDialog 2;