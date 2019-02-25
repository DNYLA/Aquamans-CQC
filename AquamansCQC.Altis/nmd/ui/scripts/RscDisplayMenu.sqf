/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-26 19:12:37
*/
 
#include "define.inc"

private [ "_mode", "_params" ];
_mode = _this select 0;
_params = _this select 1;

switch _mode do {

	case "onLoad": {

		//--- Hide chat
		showChat false;

		//--- PP Effect
		_ppChromAberration = ppEffectCreate [ "chromAberration", 5000 ]; 
		_ppChromAberration ppEffectEnable true;
		_ppChromAberration ppEffectAdjust [ 0.02 , 0 , true ];
		_ppChromAberration ppEffectCommit 0;

		NMD_RscDisplayMenu_ppChromAberration = _ppChromAberration;

		//--- Controls
		_display = ( _params select 0 );
		_display displayAddEventHandler [ "ChildDestroyed", { [ "onChildDestroyed", _this ] call NMD_RscDisplayMenu } ];

		//--- Control ButtonGarage
		_ctrlButtonGarage = _display displayCtrl IDC_RSCDISPLAYMENU_BUTTONGARAGE;
		_ctrlButtonGarage ctrlAddEventHandler [ "ButtonClick",  { [ "createDisplay", [ ctrlParent ( _this select 0 ), "NMD_RscDisplayGarage" ] ] call NMD_RscDisplayMenu } ];

		//--- Control ButtonMap
		_ctrlButtonMap = _display displayCtrl IDC_RSCDISPLAYMENU_BUTTONMAP;
		_ctrlButtonMap ctrlAddEventHandler [ "ButtonClick",  { [ "createDisplay", [ ctrlParent ( _this select 0 ), "NMD_RscDisplayMap" ] ] call NMD_RscDisplayMenu } ];

		//--- Control ButtonService
		_ctrlButtonService = _display displayCtrl IDC_RSCDISPLAYMENU_BUTTONSERVICE;
		_ctrlButtonService ctrlAddEventHandler [ "ButtonClick",  { [ "createDisplay", [ ctrlParent ( _this select 0 ), "NMD_RscDisplayService" ] ] call NMD_RscDisplayMenu } ];

		//--- Control ButtonArsenal
		_ctrlButtonArsenal = _display displayCtrl IDC_RSCDISPLAYMENU_BUTTONARSENAL;
		_ctrlButtonArsenal ctrlAddEventHandler [ "ButtonClick",  { closeDialog 1; [ "Open", true ] call BIS_fnc_arsenal } ];

		//--- Control ButtonAdmin
		_ctrlButtonAdmin = _display displayCtrl IDC_RSCDISPLAYMENU_BUTTONADMIN;
		_ctrlButtonAdmin ctrlAddEventHandler [ "ButtonClick",  { [ "createDisplay", [ ctrlParent ( _this select 0 ), "NMD_RscDisplayAdmin" ] ] call NMD_RscDisplayMenu } ];

		//--- Set default control focus
		ctrlSetFocus ( _display displayCtrl 1 );

		//--- Enable / disable buttons
		if ( ( vehicle player ) == player || { effectiveCommander ( vehicle player ) != player  } ) then {

			_ctrlButtonService ctrlEnable false;
			
		} else {

			_ctrlButtonGarage ctrlEnable false;

		};
		
		_ctrlButtonAdmin ctrlEnable ( player call NMD_fnc_isAdmin );

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onUnload": {

		//--- Show chat only if SteamFriendlyUI is disabled
		if( !isStreamFriendlyUIEnabled ) then { showChat true };

		//--- Disable PP Effect
		NMD_RscDisplayMenu_ppChromAberration ppEffectEnable false;
		NMD_RscDisplayMenu_ppChromAberration = nil;
	
	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onChildDestroyed": {
		
		_display = _params select 0;
		_child = _params select 1;
		_code = _params select 2;

		_display displayAddEventHandler [ "Destroy", { hint "WAT" } ];
		
		//--- Check exit code
		if ( _code < 2 ) then {
			
			//--- Create scheduled thread
			ctrlIDD _child spawn {
				 
				//--- Wait for child to completely close
				waitUntil { isNull findDisplay _this };

				//--- Close the menu
				closeDialog 1;

			};

		};

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "createDisplay": {
		
		createDialog ( _params select 1 );
	
	};
	
};
