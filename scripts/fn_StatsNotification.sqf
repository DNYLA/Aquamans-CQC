/*
 File: fn_StatsNotification.sqf
 Author: Aquaman
 Description: Stats Notification Bar

 I should of made this script parameter based so you can enter anything you wanted unsure why i didn't, will update it to include paramters when i have time.
 I also need to remake the deleting part because its a bit buggy right now. (Deleting Section is inside Keybinds (I know its bad)).
*/

if (isDedicated || !hasInterface) exitWith {};
disableSerialization;
_display = findDisplay 46;

_background = _display displayCtrl 20; //Background Control Value Set Below
_statsText = _display displayCtrl 21; //Text Control Value set below

//Deleting Old Controls if script is spammed
ctrlDelete _background;
ctrlDelete _statsText;

playSound "HintExpand";

//Setting Players Current Stats
_currentKills = profileNamespace getVariable "Aquaman_CQC_Kills";
_currentDeaths = profileNamespace getVariable "Aquaman_CQC_Deaths";
_currentKD = _currentKills / _currentDeaths;
_currentKD = [_currentKD, 2] call BIS_fnc_cutDecimals;
_playersName = profileName;

//Text To display With Formatting
_currentStats = format ["<t size='1.25' font = 'PuristaBold' color = '#000000' align = 'center' >Welcome %1, Your Current Stats Are: </t> <br/> <br/> <t font = 'PuristaLight'> Kills: %2 </t> <t font = 'PuristaLight' align = 'center'> Deaths: %3 </t> <t font = 'PuristaLight' align = 'right'> K/D Ratio: %4 </t>", _playersName, _currentKills, _currentDeaths, _currentKD];

//Setting Background Colour as a variable so you can easily change it if you don't like the colour i chose
_backgroundColour = [1, 0.757, 0.027, 0.9];

//Creating Background Control
_background = _display ctrlCreate["RscText", 20];
_background ctrlSetBackgroundColor _backgroundColour;
//_background ctrlSetPosition [safeZoneX + safeZoneW * 0.27, safeZoneY + safeZoneH * 0.06, safeZoneW * 0.5, safeZoneH * 0.05];
//_background ctrlCommit 0.5;
_background ctrlSetPosition [safeZoneX + safeZoneW * 0.27, safeZoneY + safeZoneH * 0.06, safeZoneW * 0.5, safeZoneH * 0.1];
_background ctrlCommit 0.5;

_statsText = _display ctrlCreate["RscStructuredText", 21];
_statsText ctrlSetStructuredText parseText _currentStats;
_statsText ctrlSetPosition [safeZoneX + safeZoneW * 0.285, safeZoneY + safeZoneH * 0.077, safeZoneW * 0.47, safeZoneH * 0.07];
_statsText ctrlCommit 0.5;



