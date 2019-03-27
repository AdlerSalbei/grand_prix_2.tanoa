#include "script_component.hpp"

params ["_pos"];

private _racers = inAreaArray select {};

["grad_user_triggerCountdown", [], _racers] call CBA_fnc_targetEvent;
