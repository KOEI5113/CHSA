_type = _this select 0;
_display = (_this select 1) select 0;

switch _type do {
	case "warn": {
		if (isLocalized "STR_chsa_warning") then {
			(_display displayCtrl 1000) ctrlSetText (localize "STR_chsa_warning");
		};
		if (isLocalized "STR_chsa_inventory") then {
			(_display displayCtrl 1001) ctrlSetText (localize "STR_chsa_inventory");
		};
	};
	case "center": {
		if (isLocalized "STR_chsa_warning") then {
			(_display displayCtrl 1030) ctrlSetText (localize "STR_chsa_warning");
		};
		if (isLocalized "STR_chsa_inventory") then {
			(_display displayCtrl 1031) ctrlSetText (localize "STR_chsa_open");
		};
		if (isLocalized "STR_chsa_gear") then {
			(_display displayCtrl 1032) ctrlSetText (localize "STR_chsa_gear");
		};	
	};
	default {
		if (isLocalized "STR_chsa_title") then {
			(_display displayCtrl 1002) ctrlSetText (localize "STR_chsa_title");
		};
		if (isLocalized "STR_chsa_class") then {
			(_display displayCtrl 1000) ctrlSetText (localize "STR_chsa_class");
		};
		if (isLocalized "STR_chsa_slots") then {
			(_display displayCtrl 1001) ctrlSetText (localize "STR_chsa_slots");
		};
		if (isLocalized "STR_chsa_apply") then {
			(_display displayCtrl 1600) ctrlSetText (localize "STR_chsa_apply");
		};
		if (isLocalized "STR_chsa_cancel") then {
			(_display displayCtrl 1601) ctrlSetText (localize "STR_chsa_cancel");
		};
	};
};