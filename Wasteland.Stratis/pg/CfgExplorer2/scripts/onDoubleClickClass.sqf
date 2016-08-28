#include "macros.hpp"
disableSerialization;
private["_0bs","_0e","_selectedEntryName", "_Entry","_ConfName","_nix"];

// ***
// *** get parameter
// ***  

_0bs = _this select 0;
_0e = _this select 1;

_selectedEntryName = lbText [110,_0e];

// ***
// *** get the new configObject
// ***
_Entry = (CurrentConfig >> _selectedEntryName);

CurrentConfig = _Entry;
ConfigPath = ConfigPath + [_Entry];

[ConfigRoot, ConfigPath] call GFNC(showConfig);
