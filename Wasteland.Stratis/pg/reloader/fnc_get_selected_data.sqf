#include "defs.hpp"
_0yk = _this select 0;

_selection = (lbSelection GET_CTRL(_0yk) select 0);
if (isNil {_selection}) then {_selection = 0};
(GET_CTRL(_0yk) lbData _selection)