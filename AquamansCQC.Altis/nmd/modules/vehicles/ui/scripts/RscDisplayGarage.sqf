/*
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-25 09:10:39
*/

#include "define.inc"

private [ "_mode", "_params" ];

_mode = _this select 0;
_params = _this select 1;

switch _mode do {

	case "onLoad": {

		//--- Controls
		_display = ( _params select 0 );

		//--- Control Filters
		{

			_ctrl = _display displayCtrl _x;
			_ctrl ctrlAddEventHandler [ "ButtonClick",  format [ " [ 'onFilterChanged', [ ctrlParent ( _this select 0 ), %1 ] ] call NMD_RscDisplayGarage ", _forEachIndex ] ];

		} forEach [
			IDC_RSCDISPLAYGARAGE_FILTER2,
			IDC_RSCDISPLAYGARAGE_FILTER1,
			IDC_RSCDISPLAYGARAGE_FILTER3,
			IDC_RSCDISPLAYGARAGE_FILTER4,
			IDC_RSCDISPLAYGARAGE_FILTER0
		];

		//--- Call filter EH
		NMD_RscDisplayGarage_filter = missionNamespace getVariable [ "NMD_RscDisplayGarage_filter", 4 ];
		[ "onFilterChanged", [ _display ] ] call NMD_RscDisplayGarage;

		//--- Control ListVehicles
		_ctrlTreeVehicles = _display displayCtrl IDC_RSCDISPLAYGARAGE_TREEVEHICLES;

		//--- Control ListVehicles
		_ctrlIconVehicle = _display displayCtrl IDC_RSCDISPLAYGARAGE_ICONVEHICLE;
		[ _ctrlIconVehicle, 0.8, 0 ] call BIS_fnc_ctrlSetScale; //--- Scale down

		//--- Control ButtonSpawn
		_ctrlButtonSpawn = _display displayCtrl IDC_RSCDISPLAYGARAGE_BUTTONSPAWN;
		_ctrlButtonSpawn ctrlAddEventHandler [ "ButtonClick",  { [ "spawnVehicle", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayGarage } ];

		//--- Set default control focus
		ctrlSetFocus _ctrlTreeVehicles;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onUnload": {



	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onFilterChanged": {

		//--- Controls
		_display = _params select 0;
		_ctrlTreeVehicles = _display displayCtrl IDC_RSCDISPLAYGARAGE_TREEVEHICLES;
		_ctrlBackgroundFilter = _display displayCtrl IDC_RSCDISPLAYGARAGE_BACKGROUNDFILTER;
		_list = NMD_ModuleVehicles_list;
		_curSel = if ( count _params > 1 ) then { _params select 1 } else { NMD_RscDisplayGarage_filter };

		_list = if ( _curSel == 4 ) then {

			_return = [];

			{

				_return = _return + _x

			} forEach _list;

			_return

		} else {

			_list select _curSel

		};

		//--- Remove treeview EH
		_ctrlTreeVehicles ctrlRemoveAllEventHandlers "TreeSelChanged";

		//--- Clear treeview
		tvClear _ctrlTreeVehicles;

		//--- Populate treeview
		{

			//--- Add faction
			_displayName = _x select 0;
			_icon = _x select 1;
			_vehicleClasses = _x select 2;

			_tvFaction = _ctrlTreeVehicles tvAdd [ [], _displayName ];
			_ctrlTreeVehicles tvSetPicture [ [ _tvFaction ], _icon ];

			{

				//--- Add vehicle classes
				private [ "_displayName", "_vehicles" ];
				_displayName = _x select 0;
				_vehicles = _x select 1;

				_tvVehicleClass = _ctrlTreeVehicles tvAdd [ [ _tvFaction ], _displayName ];

				{

					//--- Add vehicles
					private [ "_displayName", "_icon", "_className" ];
					_displayName = _x select 0;
					_icon = _x select 1;
					_className = _x select 2;

					_tvVehicle = _ctrlTreeVehicles tvAdd [ [ _tvFaction, _tvVehicleClass ], _displayName ];
					_tvVehicle = [ _tvFaction, _tvVehicleClass, _tvVehicle ];

					_ctrlTreeVehicles tvSetPicture [ _tvVehicle, _icon ];
					_ctrlTreeVehicles tvSetData [ _tvVehicle, _className ];

				} forEach _vehicles;

				_ctrlTreeVehicles tvSort [ [ _tvFaction, _tvVehicleClass ], false ];

			} forEach _vehicleClasses;

			_ctrlTreeVehicles tvSort [ [ _tvFaction ], false ];
			_ctrlTreeVehicles tvExpand [ _tvFaction ];

		} forEach _list;

		//--- Update filters visual
		_delay = if ( NMD_RscDisplayGarage_init ) then { 0.1 } else { 0 };

		{

			_ctrl = _display displayCtrl _x;
			_color = _forEachIndex call BIS_fnc_sideColor;
			_alpha = 0.5;
			_scale = 0.75;

			if ( _forEachIndex == _curSel ) then {

				_alpha = 1;
				_scale = 1;
				NMD_RscDisplayGarage_filter = _forEachIndex;

			};

			_ctrl ctrlSetActiveColor _color;
			_color set [ 3, _alpha ];
			_ctrl ctrlSetTextColor _color;
			_pos = [ _ctrl, _scale, _delay ] call BIS_fnc_ctrlSetScale;

			if ( _forEachIndex == _curSel ) then {

				_ctrlBackgroundFilter ctrlSetPosition _pos;
				_ctrlBackgroundFilter ctrlCommit _delay;

			};

		} forEach [
			IDC_RSCDISPLAYGARAGE_FILTER2,
			IDC_RSCDISPLAYGARAGE_FILTER1,
			IDC_RSCDISPLAYGARAGE_FILTER3,
			IDC_RSCDISPLAYGARAGE_FILTER4,
			IDC_RSCDISPLAYGARAGE_FILTER0
		];

		//--- Call treeview select EH
		[ "onVehicleSelChanged", [ _display ] ] call NMD_RscDisplayGarage;

		//--- Add treeview select EH
		_ctrlTreeVehicles ctrlAddEventHandler [ "TreeSelChanged",  { [ "onVehicleSelChanged", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayGarage } ];

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onVehicleSelChanged": {

		_display = _params select 0;
		_ctrlTreeVehicles = _display displayCtrl IDC_RSCDISPLAYGARAGE_TREEVEHICLES;
		_ctrlComboSkin = _display displayCtrl IDC_RSCDISPLAYGARAGE_COMBOSKIN;
		_ctrlIconVehicle = _display displayCtrl IDC_RSCDISPLAYGARAGE_ICONVEHICLE;
		_ctrlButtonSpawn = _display displayCtrl IDC_RSCDISPLAYGARAGE_BUTTONSPAWN;
		_curSel = tvCurSel _ctrlTreeVehicles;
		_className = _ctrlTreeVehicles tvData _curSel;

		if ( count _curSel == 3 ) then {

			//--- Update options
			[ "updateOptions", [ _display, _className ] ] call NMD_RscDisplayGarage;

			//--- Enable spawn
			_ctrlButtonSpawn ctrlEnable true;

		} else {

			//--- Disable options
			_ctrlComboSkin ctrlEnable false;
			lbClear _ctrlComboSkin;
			_ctrlButtonSpawn ctrlEnable false;
			_ctrlIconVehicle ctrlSetText "";

		};

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "updateOptions": {

		_display = _params select 0;
		_ctrlIconVehicle = _display displayCtrl IDC_RSCDISPLAYGARAGE_ICONVEHICLE;
		_ctrlComboSkin = _display displayCtrl IDC_RSCDISPLAYGARAGE_COMBOSKIN;
		_className = _params select 1;
		_cfg = configFile >> "CfgVehicles" >> _className;

		//--- Update vehicle icon
		_icon = ( getText ( _cfg >> "picture" ) ) call BIS_fnc_textureVehicleIcon;
		_ctrlIconVehicle ctrlSetText _icon;

		//--- Add skins to combo
		lbClear _ctrlComboSkin;
		_ctrlComboSkin lbAdd "<Default>";
		_ctrlComboSkin lbSetValue [ 0, -1 ];
		_ctrlComboSkin lbSetCurSel 0;

		//--- Check for skins from NMD_CfgVehicleSkins
		{

			private "_cfgSkin";
			_cfgSkin = missionConfigFile >> "NMD_CfgVehicleSkins" >> _x;

			{

				//--- Add skins to array
				if ( isClass _cfg ) then {

					{

						_skin = _x;
						_displayName = getText ( _skin >> "displayName" );
						_textures = getArray ( _skin >> "textures" );

						_lbSkin = _ctrlComboSkin lbAdd _displayName;
						_ctrlComboSkin lbSetData [ _lbSkin, str _textures ];

					} forEach ( "true" configClasses _x );

				};

			} forEach ( _cfgSkin call BIS_fnc_returnParents );

		} forEach ( [ _cfg, true ] call BIS_fnc_returnParents );

		//--- Sort skins
		//lbSortByValue _ctrlComboSkin;

		//--- Enable/disable skins combo
		_ctrlComboSkin ctrlEnable ( lbSize _ctrlComboSkin > 1 );

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "spawnVehicle": {

		_display = _params select 0;
		_ctrlTreeVehicles = _display displayCtrl IDC_RSCDISPLAYGARAGE_TREEVEHICLES;
		_ctrlComboSkin = _display displayCtrl IDC_RSCDISPLAYGARAGE_COMBOSKIN;
		_curSel = tvCurSel _ctrlTreeVehicles;
		_curSelSkin = lbCurSel _ctrlComboSkin;
		_className = _ctrlTreeVehicles tvData _curSel;

		//--- Calculate spawn position
		_pos = ( [ player, 15, getDir player ] call BIS_fnc_relPos );

		//--- Check for nearby entities
		if ( count nearestObjects [ _pos, [ "Car", "Tank", "Air", "Ship" ], 10 ] > 0 ) exitWith {

			["", "Unable to spawn vehicle near other vehicles" ] call NMD_fnc_titleHint;

		};

		//--- Create vehicle
		_vehicle = createVehicle [ _className, _pos, [], 0, "CAN_COLLIDE" ];
		_vehicle setPosASL AGLtoASL _pos;
		_vehicle setDir getDir player;
		_vehicle setVehicleAmmo 0;
		_vehicle setVehicleAmmoDef 0;
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;

		//--- Apply vehicle skin
		if ( ctrlEnabled _ctrlComboSkin && { _curSelSkin > 0 } ) then {

			//--- Texture data
			_texture = call compile( _ctrlComboSkin lbData _curSelSkin );

			//--- Disable texture randomisation
			_vehicle setVariable [ "BIS_enableRandomization", false ];

			//--- Set vehicle texture
			{ _vehicle setObjectTextureGlobal [_forEachIndex, _x ] } forEach _texture;

            _vehicle setVehicleAmmo 0;
            _vehicle setVehicleAmmoDef 0;
            clearWeaponCargoGlobal _vehicle;
            clearMagazineCargoGlobal _vehicle;
            clearItemCargoGlobal _vehicle;
            clearBackpackCargoGlobal _vehicle;
		};

		//--- Create UAV AI
		if ( getText ( configFile >> "CfgVehicles" >> _className >> "vehicleClass" ) == "Autonomous" ) then {

			createVehicleCrew _vehicle;

		};

		player moveInAny _vehicle;

		//--- Cleanup when killed
		if ( NMD_ModuleVehicles_garageGC > -1 ) then {

			_vehicle addEventHandler [ "killed", {

				//--- Remove vehicle from spawned array
				NMD_ModuleVehicles_spawned = NMD_ModuleVehicles_spawned - [ _this select 0 ];

				//--- Cleanup unit with delay preference
				[ _this select 0, NMD_ModuleVehicles_garageGC ] call NMD_fnc_cleanupUnit;

			} ];

		};

		//--- Add vehicle to spawned array
		NMD_ModuleVehicles_spawned pushBack _vehicle;

		//--- Enforce spawn limit
		if ( NMD_ModuleVehicles_garageLimit > 0 && { count NMD_ModuleVehicles_spawned > NMD_ModuleVehicles_garageLimit } ) then {

			//--- Delete first spawned vehicle
			deleteVehicle ( NMD_ModuleVehicles_spawned select 0 );
			[ NMD_ModuleVehicles_spawned ] call BIS_fnc_arrayShift;

		};

		//--- Close display
		closeDialog 1;

	};

};
