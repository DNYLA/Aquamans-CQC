/*
    File: Aquaman_RemoveStatsNotification.sqf
    Author: Aquaman
    Description: Deletes Stats Controls.
*/

_display = findDisplay 46;
_background = _display displayCtrl 20; //Background Control Value Set Below
_statsText = _display displayCtrl 21; //Text Control Value set below

_background ctrlSetPosition [safeZoneX + safeZoneW * 0.27, safeZoneY + safeZoneH * 0.06, safeZoneW * 0.5, safeZoneH * 0.05];
_background ctrlCommit 0.5;
_background ctrlSetPosition [safeZoneX + safeZoneW * 0.27, safeZoneY + safeZoneH * 0.06, safeZoneW * 0, safeZoneH * 0];
_background ctrlCommit 0.5;
_statsText ctrlSetPosition [safeZoneX + safeZoneW * 0.285, safeZoneY + safeZoneH * 0.077, safeZoneW * 0, safeZoneH * 0];
_statsText ctrlCommit 0.5;
sleep 1;
//Deleting Old Controls if script is spammed
ctrlDelete _background;
ctrlDelete _statsText;