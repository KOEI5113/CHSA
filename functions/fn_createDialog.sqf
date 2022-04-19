_dialog = createDialog "CHSA_dialog";
if (!_dialog) exitWith {systemChat "Error: Can't open 'CH Specialized Arsenal' dialog."};
disableSerialization;
_this call CHSA_fnc_updateDialog;