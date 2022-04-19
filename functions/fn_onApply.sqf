private ["_currentSlots"];
_selRowIndex = lnbCurSelRow 1500;

if (_selRowIndex != -1) then {
	_specIndex = call compile (lnbData [1500,[_selRowIndex,0]]);
	
	_obj = uiNamespace getVariable ["CHSA_obj", objNull];
	_target = uiNamespace getVariable ["CHSA_target", objNull];
	
	_objArray = player getVariable ["CHSA_objArray", []];
	_objIndex = [_objArray, {_x select 0 isEqualTo _obj && _x select 1 isEqualTo _target}] call CHSA_fnc_conditionalIndex;
	_currentIndex = (_objArray select _objIndex) select 2;
	
	_slotsArray = _obj getVariable ["CHSA_currentSlots", []];
	_slotIndex = [_slotsArray, {_x select 0 isEqualTo _target}] call CHSA_fnc_conditionalIndex;
	_currentSlots = (_slotsArray select _slotIndex) select 1;

	// // 追加程式碼開始 -------------------------------------------
	// 取得玩家當前職務名稱
	_specNames = _obj getVariable ["CHSA_specNames", []];
	_specName = (_specNames select _specIndex);

	// 設定玩家的專精 - 如果玩家的選擇的職務名稱滿足特定條件，就設定該專精
	player setUnitTrait ["Medic", (["醫護兵"] find _specName >= 0)];
	player setUnitTrait ["Engineer", (["工程兵", "火砲操作人員", "直升機組員", "機組員", "飛行員"] find _specName >= 0)];
	player setUnitTrait ["ExplosiveSpecialist", (["工程兵"] find _specName >= 0)];
	player setUnitTrait ["UavHacker", (["前線火炮觀察員"] find _specName >= 0)];
	// // 追加程式碼結束 -------------------------------------------
	
	if (_currentSlots select _currentIndex > -1) then {
		_currentSlots set [_currentIndex, (_currentSlots select _currentIndex) + 1];
	};
	if (_currentSlots select _specIndex > -1) then {
		_currentSlots set [_specIndex, (_currentSlots select _specIndex) - 1 max 0];
	};
	
	_slotsArray set [_slotIndex, [_target, _currentSlots]];
	_obj setVariable ["CHSA_currentSlots", _slotsArray, true];
	
	_objArray set [_objIndex, [_obj, _target, _specIndex]];
	player setVariable ["CHSA_objArray", _objArray, true];
	
	[_specIndex, _obj] call CHSA_fnc_updateLocalArsenal;
};

terminate (uiNamespace getVariable ["CHSA_handle", scriptNull]);
closeDialog 2900;