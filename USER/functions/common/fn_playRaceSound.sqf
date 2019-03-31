#include "script_component.hpp"

params ["_boolean"];

if (_boolean) then {
    playMusic "bennyHill";

}else{
    3 fadeMusic 0;
    [{playMusic ""; 0 fadeMusic 1;},[],3] call CBA_fnc_waitAndExecute;
};
