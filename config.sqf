/**
 * 傳入要設定成軍火庫的物件與要設定的裝備陣營，動態載入對應陣營裝備並建立軍火庫(預設原廠裝備)
 */
params [
	"_arsenal",
	["_equipmentKey", "BLU_F"]
];

// 根據傳入的陣營變數，動態載入對應陣營裝備
private _factionDataset = call compile preprocessFileLineNumbers (format ["CHSA\equipments\%1.sqf", _equipmentKey]);
private _equipmentDataset = _factionDataset get "equipmentDataset";
private _soltDataset = _factionDataset get "soltDataset";

private _specTypes = [],
private _specSlots = [],
private _specNames = [],
private _specItems = [];

{
	_specNames pushBack (_x select 0);
	_specSlots pushBack (_x select 1);
	_specTypes pushBack (_x select 2);

	// 根據每個職位設定每個人的裝備，並將裝備推入 _specItems
	private _equipments = (
		(_equipmentDataset getOrDefault ["general", []]) + 
		(_equipmentDataset getOrDefault ["uniform", []]) +
		(_equipmentDataset getOrDefault ["weapon", []])
	);
	switch (_x select 0) do {
		case "前線火炮觀察員": {
			_equipments append (_equipmentDataset getOrDefault ["binocular"]);
			_equipments append (_equipmentDataset getOrDefault ["grenadeLauncher"]);
			_equipments append (_equipmentDataset getOrDefault ["uav"]);
		};
		case "醫護兵": {
			_equipments append (_equipmentDataset getOrDefault ["medic"]);
		};
		case "排長"; case "班長";  case "伍長":
		{
			_equipments append (_equipmentDataset getOrDefault ["binocular"]);
			_equipments append (_equipmentDataset getOrDefault ["grenadeLauncher"]);
		};
		
		case "自動步槍兵": {
			_equipments append (_equipmentDataset getOrDefault ["LMG_G"]);
			_equipments append (_equipmentDataset getOrDefault ["LMG_A"]);
		};
		case "輔助助手": {
			_equipments append (_equipmentDataset getOrDefault ["LMG_A"]);
			_equipments append (_equipmentDataset getOrDefault ["HMG_A"]);
		};
		case "工程兵": {
			_equipments append (_equipmentDataset getOrDefault ["engineer"]);
		};
		case "精準射手": {
			_equipments append (_equipmentDataset getOrDefault ["sniper"]);
		};
		case "排用機槍兵": {
			_equipments append (_equipmentDataset getOrDefault ["HMG_G"]);
			_equipments append (_equipmentDataset getOrDefault ["HMG_A"]);
		};
		case "發射器專精兵": {
			_equipments append (_equipmentDataset getOrDefault ["launchers"]);
		};
		case "火砲操作人員": {
			_equipments append (_equipmentDataset getOrDefault ["artillery"]);
		};
		case "直升機組員": {
			_equipments append (_equipmentDataset getOrDefault ["heli"]);
		};
		case "機組員": {
			_equipments append (_equipmentDataset getOrDefault ["crew"]);
		};
		case "飛行員": {
			_equipments append (_equipmentDataset getOrDefault ["jet"]);
		};
	};
	_specItems pushBack _equipments;
} forEach _soltDataset;

[
	sideUnknown, 
	[
		_arsenal, 
		15, 
		_specNames,
		_specSlots,
		_specTypes,
		_specItems
	]
] spawn CHSA_fnc_executeLocalArsenal;