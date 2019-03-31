#include "script_component.hpp"

params ["_arty"];

_arty addEventHandler ["Fired", {
	params ["", "", "", "", "_", "", "_projectile"];
    [_projectile] call grad_user_fnc_shotTracker;
}];
