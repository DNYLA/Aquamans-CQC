/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-25 08:54:26
*/
 
#include "define.inc"

private [ "_mode", "_params" ];
_mode = _this select 0;
_params = _this select 1;

switch _mode do {

	case "onLoad": {
		
		//--- Display cooldown
		NMD_RscDisplayService_timer = [] spawn {

			disableSerialization;

			_vehicle = vehicle player;
			_timeout = _vehicle getVariable [ "NMD_ModuleVehicles_serviceTimeout", 0 ];

			//--- Display
			_display = findDisplay IDD_RSCDISPLAYSERVICE;

			//--- Controls
			_ctrlButtonService = _display displayCtrl IDC_RSCDISPLAYSERVICE_BUTTONSERVICE;
			_ctrlTextCooldown = _display displayCtrl IDC_RSCDISPLAYSERVICE_TEXTCOOLDOWN;

			//--- Disable service
			_ctrlButtonService ctrlEnable false;

			//--- While cooldown
			while { time < _timeout } do {

				_ctrlTextCooldown ctrlSetText ( [ _timeout - time, "MM:SS" ] call BIS_fnc_secondsToString );

				sleep 0.5;
			};

			//--- Make service available
			_ctrlTextCooldown ctrlShow false;
			_ctrlButtonService ctrlEnable true;

		};

		_vehicle = vehicle player;
		_vehicleCfg = configFile >> "CfgVehicles" >> typeOf _vehicle;

		//--- Display
		_display = ( _params select 0 );

		//--- Control Title
		_ctrlTitle = _display displayCtrl IDC_RSCDISPLAYSERVICE_TITLE;

		//--- Control IconVehicle
		_ctrlIconVehicle = _display displayCtrl IDC_RSCDISPLAYSERVICE_ICONVEHICLE;
		_icon = getText ( configFile >> "CfgVehicles" >> typeOf _vehicle >> "icon" ) call BIS_fnc_textureVehicleIcon;
		_ctrlIconVehicle ctrlSetText _icon;

		//--- Control ProgressHealth
		_ctrlProgressHealth = _display displayCtrl IDC_RSCDISPLAYSERVICE_PROGRESSHEALTH;
		_ctrlProgressHealth progressSetPosition 1 - ( damage _vehicle );

		//--- Control ProgressFuel
		_ctrlProgressFuel = _display displayCtrl IDC_RSCDISPLAYSERVICE_PROGRESSFUEL;
		_ctrlProgressFuel progressSetPosition fuel _vehicle;

		//--- Control ComboSkin
		_ctrlComboSkin = _display displayCtrl IDC_RSCDISPLAYSERVICE_COMBOSKIN;

		//--- Add skins to combo
		_ctrlComboSkin lbAdd "<None>";
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
		
		//--- Control ButtonService
		_ctrlButtonService = _display displayCtrl IDC_RSCDISPLAYSERVICE_BUTTONSERVICE;
		_ctrlButtonService ctrlAddEventHandler [ "ButtonClick",  { [ "onClickService", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayService } ];

		//--- Set default control focus
		ctrlSetFocus ( _display displayCtrl 1 );
		
	};

	case "onUnload": {

		terminate NMD_RscDisplayService_timer;
		NMD_RscDisplayService_timer = nil;

	};

	/////////////////////////////////////////////////////////////////////////////////
	
	case "onClickService": {

		_display = _params select 0;
		_ctrlComboSkin = _display displayCtrl IDC_RSCDISPLAYSERVICE_COMBOSKIN;
		_curSelSkin = lbCurSel _ctrlComboSkin;
		_vehicle = vehicle player;
		_cooldown = NMD_ModuleVehicles_serviceCooldown;

		//--- Set timeout
		_vehicle setVariable [ "NMD_ModuleVehicles_serviceTimeout", time + _cooldown, true ];

		//--- Repair vehicle
		_vehicle setDamage 0;

		//-- Refuel vehicle
		_vehicle setFuel 1;

		//--- Rearm vehicle
		_vehicle call NMD_fnc_vehicleRearm;

		//--- Apply vehicle skin
		if ( ctrlEnabled _ctrlComboSkin && { _curSelSkin > 0 } ) then {
			
			//--- Texture data
			_texture = call compile( _ctrlComboSkin lbData _curSelSkin );

			//--- Set vehicle texture
			{ _vehicle setObjectTextureGlobal [ _forEachIndex, _x ] } forEach _texture;

		};

		//--- Close display
		closeDialog 1;

	};
	
};