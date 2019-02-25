/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-07-15 18:26:33
* @Last Modified by:   DnA
* @Last Modified time: 2014-07-15 18:26:33
*/

private "_mode";
_mode = [ _this, 0, "", [""] ] call BIS_fnc_param;

switch _mode do {

	case "preInit": {
	
		//--- Preload BIS Arsenal
		[ "Preload" ] call BIS_fnc_arsenal;
	
	};
	
	case "postInit": {
	
	};
	
};