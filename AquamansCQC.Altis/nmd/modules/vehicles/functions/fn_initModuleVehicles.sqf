/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-15 07:22:33
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-25 07:31:02
*/

private "_mode";
_mode = [ _this, 0, "", [""] ] call BIS_fnc_param;

switch _mode do {

	case "preInit": {

		//--- Spawn vehicle array
		NMD_ModuleVehicles_spawned = [];

		//--- Process CfgPatches units
		_list = [ [], [], [], [] ];
		_factions = [ [], [], [], [] ];
		_vehicleClasses = [ [], [], [], [] ];
		_blacklist = [];

		{

			{

				_className = toLower _x;
				_types = [ "O_MRAP_02_F", "B_MRAP_01_F", "C_SUV_01_F", "C_Hatchback_01_sport_F", "I_MRAP_03_F", "O_T_LSV_02_unarmed_F", "B_T_LSV_01_unarmed_F", "C_Van_01_box_F", "B_Truck_01_Repair_F", "B_Truck_01_ammo_F", "O_Truck_03_covered_F", "O_Truck_03_ammo_F2"];
				_isVehicle = false;

				//--- Check if vehicle is correct type
				{ if ( _className isKindOf _x ) exitwith { _isVehicle = true } } foreach _types;

				//--- Proceed if vehicle is correct type
				if ( _isVehicle && { !( _className in _blacklist ) } ) then {

					//--- Add className to blacklist
					_blacklist pushBack _className;

					_cfg = configfile >> "CfgVehicles" >> _className;
					_side = getNumber ( _cfg >> "side" );
					_public = getNumber ( _cfg >> "scope" ) == 2;

					//--- Proceed if scope is public and side not empty
					if ( _public && _side <= 3 ) then {

						_displayName = getText ( _cfg >> "displayName" );
						_icon = ( getText ( _cfg >> "icon" ) ) call BIS_fnc_textureVehicleIcon;
						_faction = toLower ( getText ( _cfg >> "faction" ) );
						_vehicleClass = toLower ( getText ( _cfg >> "vehicleClass" ) );

						//--- Add faction to factions array
						if ( !( _faction in ( _factions select _side ) ) ) then {

							private [ "_cfg", "_displayName", "_icon" ];
							_cfg = configfile >> "CfgFactionClasses" >> _faction;
							_displayName = getText ( _cfg >> "displayName" );
							_icon = getText ( _cfg >> "icon" );

							//--- Add faction to factions -> side array
							_factions select _side pushBack _faction;

							//--- Add empty array to vehicle clases -> side array
							_vehicleClasses select _side pushBack [];

							//--- Add faction array to _list -> side array
							_list select _side pushBack [ _displayName, _icon, [] ];

						};

						//--- Add vehicle class to vehicle classes array
						_factionIndex = ( _factions select _side find _faction );

						if ( !( _vehicleClass in ( ( _vehicleClasses select _side ) select _factionIndex ) ) ) then {

							private [ "_cfg", "_displayName" ];
							_cfg = configfile >> "CfgVehicleClasses" >> _vehicleClass;
							_displayName = getText ( _cfg >> "displayName" );

							//--- Add vehicle class to vehicle classes -> side -> faction array
							( _vehicleClasses select _side ) select _factionIndex pushBack _vehicleClass;

							//--- Add vehicle class array to list -> side -> faction array
							( ( _list select _side ) select _factionIndex ) select 2 pushBack [ _displayName, [] ];

						};

						//--- Add vehicle to list -> side -> faction -> vehicle class array
						_vehicleClassIndex = ( ( ( _vehicleClasses select _side ) select _factionIndex ) find _vehicleClass );

						[ ( ( ( ( _list select _side ) select _factionIndex ) select 2 ) select _vehicleClassIndex ) select 1 pushBack [ _displayName, _icon, _className ] ];

					};

				};

			} forEach getArray ( _x >> "units" );

		} forEach ( "true" configClasses (configFile >> "CfgPatches" ) );

		//--- Update global list
		NMD_ModuleVehicles_list = _list;

	};

	case "postInit": {

		//--- Params
		NMD_ModuleVehicles_garageLimit = ( [ "NMD_ModuleVehicles_GarageLimit", 4 ] call BIS_fnc_getParamValue );

	};

};