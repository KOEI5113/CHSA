_specIndex = _this select 0;
_obj = _this select 1;
_specItems = _obj getVariable ["CHSA_specItems", []];

_itemsArray = _specItems select _specIndex;

// ACE 軍火庫相關，如果不需要使用 ACE 軍火庫再移除此兩條程式碼
[player, true] call ace_arsenal_fnc_removeVirtualItems; // 移除 ACE 軍火庫 - 當要更新軍火庫前，先強制移除既有 ACE 軍火庫以防萬一
_obj setVariable ["marshall_ace_arsenal_items", _itemsArray];

// 仍然維持原廠軍火庫邏輯，藉此達成同時共用原廠軍火庫與 ACE 軍火庫的方式
[_obj, [_obj] call BIS_fnc_getVirtualBackpackCargo] call BIS_fnc_removeVirtualBackpackCargo;
[_obj, [_obj] call BIS_fnc_getVirtualItemCargo] call BIS_fnc_removeVirtualItemCargo;
[_obj, [_obj] call BIS_fnc_getVirtualMagazineCargo] call BIS_fnc_removeVirtualMagazineCargo;
[_obj, [_obj] call BIS_fnc_getVirtualWeaponCargo] call BIS_fnc_removeVirtualWeaponCargo;

[_obj, _itemsArray] call BIS_fnc_addVirtualBackpackCargo; 
[_obj, _itemsArray] call BIS_fnc_addVirtualItemCargo; 
[_obj, _itemsArray] call BIS_fnc_addVirtualMagazineCargo; 
[_obj, _itemsArray] call BIS_fnc_addVirtualWeaponCargo;

_obj removeAction (_obj getVariable ["marshall_ace_arsenal_action", 0]);
_obj removeAction (_obj getVariable ["bis_fnc_arsenal_action", 0]);

_allItems = [];
{
	_arraySelected = _x;
	{
		_allItems pushBack _x;
	} forEach _arraySelected;
} forEach (_specItems - _itemsArray);
_restrictedItems = _allItems - _itemsArray;

{
	_item = _x;
	switch (true) do {
		case (_item in weapons player): {
			player removeWeapon _item;		
		};
		case (_item in items player): {
			player removeItems _item;	
		};
		case (headgear player == _item): {
			removeHeadgear player;		
		};
		case (goggles player == _item): {
			removeGoggles player;		
		};
		case (vest player == _item): {
			removeVest player;		
		};
		case (backpack player == _item): {
			removeBackpack player;		
		};
		case (uniform player == _item): {
			removeUniform player;		
		};
		case ({_x select 0 == _item} count (magazinesAmmoFull player) > 0): {
			player removeMagazines _item;
			if (_item in (primaryWeaponMagazine player + secondaryWeaponMagazine player + handgunMagazine player)) then {
				player removePrimaryWeaponItem _item;
				player removeSecondaryWeaponItem _item;
				player removeHandgunItem _item;
			};
		};
		case default {
			player removePrimaryWeaponItem _item;
			player removeSecondaryWeaponItem _item;
			player removeHandgunItem _item;
			player unlinkItem _item;
			player unassignItem _item;
		};
	};
} forEach _restrictedItems;

// 對箱子添增 ACE 滾輪
_action = _obj addaction [
	("<img image='\A3\Ui_f\data\Logos\a_64_ca.paa' width='64' height='64' /> ACE 軍火庫"),
	{
		_box = _this select 0;
		_unit = _this select 1;

		[_box, true] call ace_arsenal_fnc_removeVirtualItems; // 移除 ACE 軍火庫 - 當要更新軍火庫前，先強制移除既有 ACE 軍火庫以防萬一
		[_box, _box getVariable ["marshall_ace_arsenal_items", []]] call ace_arsenal_fnc_addVirtualItems; // 以指定白名單添增 ACE 軍火庫
		[_box, _unit] call ace_arsenal_fnc_openBox; 
	},
	[],
	6,
	true,
	false,
	"",
	"
		alive _target && {_target distance _this < 8}
	"
];
_obj setVariable ["marshall_ace_arsenal_action", _action];

// 仍然維持原廠軍火庫邏輯，藉此達成同時共用原廠軍火庫與 ACE 軍火庫的方式
_action = _obj addaction [
	("<img image='\A3\Ui_f\data\Logos\a_64_ca.paa' width='64' height='64' /> " + localize "STR_A3_Arsenal"),
	{
		_box = _this select 0;
		_unit = _this select 1;
		["Open",[nil,_box]] call bis_fnc_arsenal;
	},
	[],
	6,
	true,
	false,
	"",
	"
		_cargo = _target getvariable ['bis_addVirtualWeaponCargo_cargo',[[],[],[],[]]];
		if ({count _x > 0} count _cargo == 0) then {
			_target removeaction (_target getvariable ['bis_fnc_arsenal_action',-1]);
			_target setvariable ['bis_fnc_arsenal_action',nil];
		};
		_condition = _target getvariable ['bis_fnc_arsenal_condition',{true}];
		alive _target && {_target distance _this < 8} && {call _condition}
	"
];
_obj setVariable ["bis_fnc_arsenal_action", _action];