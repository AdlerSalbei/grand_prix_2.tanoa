#include "script_component.hpp"

[
    {
        params ["_projectile", "_handle"];
        _args params [];
        if (isNull _projectile) exitWith {
            [_handle] call CBA_fnc_removePerFrameHandler;
            [GRAND_PRIX_ARTY_SHOT_LASTPOS, player] call grad_user_fnc_calcShot;
        };

        GRAND_PRIX_ARTY_SHOT_LASTPOS = getPos _projectile;
    },
    0,
    (_this select 0)
] call CBA_fnc_addPerFrameHandler;
