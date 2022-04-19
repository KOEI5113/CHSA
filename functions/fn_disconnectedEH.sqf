if (!isServer) exitWith {};
[] spawn {
	addMissionEventHandler ["HandleDisconnect",{
		private ["_specSlots"];
		_unit = _this select 0;
		_objArray = _unit getVariable ["CHSA_objArray", []];
		
		{
			_obj = _x select 0;
			_target = _x select 1;
			_specIndex = _x select 2;
			
			_slotsArray = _obj getVariable ["CHSA_currentSlots", []];
			_index = [_slotsArray, {_x select 0 isEqualTo _target}] call CHSA_fnc_conditionalIndex;
			if !(_index isEqualTo -1) then {
				_specSlots = (_slotsArray select _index) select 1;
			
				if (_specSlots select _specIndex > -1) then {
					_specSlots set [_specIndex, (_specSlots select _specIndex) + 1];					
					_slotsArray set [_index, [_target, _specSlots]];
					_obj setVariable ["CHSA_currentSlots", _slotsArray, true];
				};				
			};
		} forEach _objArray;
	}];
};