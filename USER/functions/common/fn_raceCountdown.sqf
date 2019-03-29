#include "script_component.hpp"

private _racers = allUnits inAreaArray "race_marker_1";

["grad_user_triggerCountdown", [], _racers] call CBA_fnc_targetEvent;
