_obj = _this select 0;
_target = (_this select 3) select 0;

_objArray = player getVariable ["CHSA_objArray", []];
_index = [_objArray, {_x select 0 isEqualTo _obj && _x select 1 isEqualTo _target}] call CHSA_fnc_conditionalIndex;
_specIndex = (_objArray select _index) select 2;

_slotsArray = _obj getVariable ["CHSA_currentSlots", []];
_index = [_slotsArray, {_x select 0 isEqualTo _target}] call CHSA_fnc_conditionalIndex;
_currentSlots = (_slotsArray select _index) select 1;

_specNames = _obj getVariable ["CHSA_specNames", []];
uiNamespace setVariable ["CHSA_obj", _obj];
uiNamespace setVariable ["CHSA_target", _target];

_unlimText = if (isLocalized "STR_chsa_unlimited") then {localize "STR_chsa_unlimited"} else {"Unlimited"};
lnbClear 1500;
for "_i" from 0 to (count _currentSlots - 1) do {
	_slotCount = _currentSlots select _i;
	if (_slotCount > 0 && {_i != _specIndex}) then {
		_indexName = _specNames select _i;
		_indexSlot = if (finite _slotCount) then {str _slotCount} else {_unlimText};
		
		_rowIndex = lnbAddRow [1500,[_indexName,_indexSlot]];
		lnbSetData [1500,[_rowIndex,0],str _i];
	};
};
_classText = if (isLocalized "STR_chsa_currClass") then {localize "STR_chsa_currClass"} else {"目前職位"};
_text = format ["%1: <t color='%3'>%2</t>", _classText, (_specNames select _specIndex), "#00CC00"];
//(["GUI", "BCG_RGB"] call BIS_fnc_displayColorGet) call BIS_fnc_colorRGBtoHTML
((finddisplay 2900) displayCtrl 1007) ctrlSetStructuredText (parseText _text);

_handle = [_this, _currentSlots] spawn {
	_pass = _this select 0;
	_obj = _pass select 0;
	_target = (_pass select 3) select 0;
	_previousSlots = _this select 1;
	
	for "_i" from 0 to 1 step 0 do {
		_slotsArray = _obj getVariable ["CHSA_currentSlots", []];
		_index = [_slotsArray, {_x select 0 isEqualTo _target}] call CHSA_fnc_conditionalIndex;
		_currentSlots = (_slotsArray select _index) select 1;
		
		if !(_previousSlots isEqualTo _currentSlots) exitWith {
			_pass call CHSA_fnc_updateDialog;
		};
		sleep 0.1;
	};
};

uiNamespace setVariable ["CHSA_handle", _handle];