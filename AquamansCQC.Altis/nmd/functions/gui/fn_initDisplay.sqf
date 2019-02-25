/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-24 16:51:07
*/
 
with missionNamespace do {
	
	private [ "_params", "_class", "_module" ];
	_params = [ _this, 0, [] ] call BIS_fnc_param;
	_class = [ _this, 1, "", [""] ] call BIS_fnc_param;
	_module = [ _this, 2, "", [""] ] call BIS_fnc_param;

	//--- Module directory
	_module = if ( _module != "" ) then { format [ "\modules\%1", _module ] } else { "" };

	//--- Register script for the first time
	private "_fncName";
	_fncName = _class;

	if ( isNil _fncName ) then {

		private [ "_scriptPath", "_fncFile" ];

		//--- Set script path
		_scriptPath = format[ "nmd%1\ui\scripts\%2.sqf", _module, ( [ _class, 4 ] call BIS_fnc_trimString ) ];

		//--- Execute
		_fncFile = preprocessFileLineNumbers _scriptPath;
		_fncFile = format [ "scriptname '%1_%2'; _fnc_scriptName = '%1';", _fncName ] + _fncFile;
		missionNamespace setVariable [ _fncName, compileFinal _fncFile ];

	};

	//--- Init variable name
	private "_initVar";
	_initVar = _class + "_init";

	//--- Add unload event handler
	private "_display";
	_display = _params select 0;
	_display displayAddEventHandler [ "Unload", format [ " [ 'onUnload', _this ] call %1; missionNamespace setVariable [ '%2', nil ];", _fncName, _initVar ] ];

	//--- Declare init var
	missionNamespace setVariable [ _initVar, false ];

	//--- Effects
	[ _display, _class ] call bis_fnc_guiEffectTiles;

	//--- Call
	[ "onLoad", _params ] call ( missionNamespace getVariable _fncName );

	//--- Initialized
	missionNamespace setVariable [ _initVar, true ];
	
};