_obj = _this select 0;
_restrictionDistance = _this select 1;

if (_restrictionDistance > 0) then {
	for "_i" from 0 to 1 step 0 do {
		waitUntil {(getPos _obj) distance player < _restrictionDistance};
		
		_handle = [] spawn {
			for "_i" from 0 to 1 step 0 do {
				waitUntil {(animationState player) find "putdown" > -1};
				_lastInv = [player, [player, "CHSA_lastInv"]] call BIS_fnc_saveInventory;
				waitUntil {(animationState player) find "putdown" == -1};
				_newInv = [player, [player, "CHSA_newInv"]] call BIS_fnc_saveInventory;
				
				for "_i" from 0 to (count _newInv - 1) do {
					scopeName "compareLoop";
					_newElement = _newInv select _i;
					_oldElement = _lastInv select _i;
					if (toLower typeName _newElement == "array") then {
						for "_i" from 0 to (count _newElement - 1) do {
							_newSubElement = _newElement select _i;
							_oldSubElement = _oldElement select _i;
							
							if (toLower typeName _newSubElement == "array") then {
								if (count (_newSubElement - _oldSubElement) > 0) exitWith {
									[player, [player, "CHSA_lastInv"]] call BIS_fnc_loadInventory;
									breakOut "compareLoop";
								};
							} else {
								if !(_oldSubElement isEqualTo _newSubElement) exitWith {
									[player, [player, "CHSA_lastInv"]] call BIS_fnc_loadInventory;
									breakOut "compareLoop";
								};							
							};
						};
					} else {
						if !(_oldElement isEqualTo _newElement) exitWith {
							[player, [player, "CHSA_lastInv"]] call BIS_fnc_loadInventory;
							breakOut "compareLoop";
						};
					};
				};
			};
		};
			
		_id1 = player addEventHandler ["InventoryOpened", {
			_unit = _this select 0;
			_container = _this select 1;
			
			switch (true) do {
				case (vehicle _unit != _unit): {
					true
				};
				case !(_container getVariable ["CHSA_tempHolder",false]): {	
					if (isNull cursorTarget || {cursorTarget distance player < 10 && {cursorTarget isKindOf _x}} count ["ReammoBox","ReammoBox_F","AllVehicles"] == 0) then {
						if (_container isKindOf "WeaponHolder" && {count (weaponCargo _container + magazineCargo _container + itemCargo _container + backpackCargo _container) == 0}) then {
							deleteVehicle _container;
						};
						_holder = "GroundWeaponHolder" createVehicleLocal [0,0,0];
						_holder setVariable ["CHSA_tempHolder",true];
						_holder setPosASL (getPosASL player);
						player action ["Gear", _holder];
					} else {
						cutRsc ["CHSA_warningCenter", "PLAIN"];
					};
					true
				};
				default {
					if (isNull cursorTarget || {cursorTarget distance player < 10 && {cursorTarget isKindOf _x}} count ["ReammoBox","ReammoBox_F","AllVehicles"] == 0) then {
						[] spawn {
							waitUntil {!isNull findDisplay 602};
							cutRsc ["CHSA_warning", "PLAIN"];
						};
					} else {
						cutRsc ["CHSA_warningCenter", "PLAIN"];
						true
					};
				};
			};
		}];
		
		_id2 = player addEventHandler ["InventoryClosed", {
			_unit = _this select 0;
			_container = _this select 1;
			
			if (_container getVariable ["CHSA_tempHolder",false]) then {
				deleteVehicle _container;
				[] spawn {
					waitUntil {isNull findDisplay 602};
					cutText ["", "PLAIN"];
				};
			};
		}];
		
		waitUntil {(getPos _obj) distance player > _restrictionDistance};
		player removeEventHandler ["InventoryOpened", _id1];
		player removeEventHandler ["InventoryClosed", _id2];
		terminate _handle;
	};
};