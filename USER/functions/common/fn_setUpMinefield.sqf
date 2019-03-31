#include "script_component.hpp"
params ["_number"];

private _marker = format ["mineMarker_%1", _number];
{
    deleteVehicle _x;
}forEach (allMines inAreaArray _marker);

for "_i" from 1 to 40 do {
    private _position = [_marker] call CBA_fnc_randPosArea;
    createMine ["APERSMine", _position, [], 0];
};
