_specItems = _this select 0;

// 過濾已經不存在的 class name
for [{_i = 0}, {_i < count _specItems}, { _i = _i + 1}] do {
	_specItems set [_i, (_specItems select _i) select { 
		isClass(configfile >> "CfgWeapons" >> _x) || {isClass(configfile >> "CfgVehicles" >> _x)}; 
	}];
};

_specItems;