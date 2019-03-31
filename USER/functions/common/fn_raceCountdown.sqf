#include "script_component.hpp"

params ["_marker"];
private _racers = allUnits inAreaArray _marker;

["grad_user_triggerCountdown", [], _racers] call CBA_fnc_targetEvent;
