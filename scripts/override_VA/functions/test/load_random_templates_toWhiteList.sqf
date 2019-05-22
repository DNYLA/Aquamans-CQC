h = this spawn {
	_inventoryItems = [ [], [], [], [] ];
	_fnc_sortItem = {
		params[ "_item", "_allowed" ];
		
		switch ( toUpper (( _item call BIS_fnc_itemType ) select 0 ) ) do {
			case "EQUIPMENT" : {
				switch ( toUpper (( _item call BIS_fnc_itemType ) select 1 ) ) do {
					case "BACKPACK" : {
						if ( _allowed ) then {
							_inventoryItems select 3 set [ count ( _inventoryItems select 3 ), _item ];
						}else{
							_invItems = ( _inventoryItems select 3 ) - [ _item ];
							_inventoryItems set [ 3, _invItems ];
						};
					};
					default {
						if ( _allowed ) then {
							_inventoryItems select 0 set [ count ( _inventoryItems select 0 ), _item ];
						}else{
							_invItems = ( _inventoryItems select 0 ) - [ _item ];
							_inventoryItems set [ 0, _invItems ];
						};
					};
				};
			};
			case "ITEM" : {
				if ( _allowed ) then {
					_inventoryItems select 0 set [ count ( _inventoryItems select 0 ), _item ];
				}else{
					_invItems = ( _inventoryItems select 0 ) - [ _item ];
					_inventoryItems set [ 0, _invItems ];
				};
			};
			case "WEAPON" : {
				if ( _allowed ) then {
					_inventoryItems select 1 set [ count ( _inventoryItems select 1 ), _item ];
				}else{
					_invItems = ( _inventoryItems select 1 ) - [ _item ];
					_inventoryItems set [ 1, _invItems ];
				};
			};
			case "MINE";
			case "MAGAZINE" : {
				if ( _allowed ) then {
					_inventoryItems select 2 set [ count ( _inventoryItems select 2 ), _item ];
				}else{
					_invItems = ( _inventoryItems select 2 ) - [ _item ];
					_inventoryItems set [ 2, _invItems ];
				};
			};
		};
	};
	_fnc_recurseInv = {
		params[ "_itemData", "_allowed" ];
		
		switch ( typeName _itemData ) do {
			case ( typeName "" ) : {
				if !( _itemData == "" ) then {
					[ _itemData, _allowed ] call _fnc_sortItem;
				};
			};
			case ( typeName [] ) : {
				if ( count _itemData > 0 ) then {
					{
						if !( isNil "_x" ) then {
							[ _x, _allowed ] call _fnc_recurseInv;
						};
					}forEach _itemData;
				};
			};
		};
	};
	_invData = profileNamespace getVariable "bis_fnc_saveInventory_data";
	for "_index" from 0 to ( count _invData ) - 1 step 2 do {
		_name = _invData select _index;
		_data = _invData select ( _index + 1 );
		if ( random 1 < 0.5 ) then {
			diag_log format[ "allowed: %1", _name ];
			[ _data, true ] call _fnc_recurseInv;
		}else{
			diag_log format[ "not allowed: %1", _name ];
			[ _data, false ] call _fnc_recurseInv;
		};
	};
	_this setVariable ["bis_addvirtualweaponcargo_cargo",_inventoryItems];
	diag_log str _inventoryItems;
};