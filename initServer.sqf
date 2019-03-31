["Initialize"] call BIS_fnc_dynamicGroups;

[
    {GRAND_PRIX_TRIGGER_Vulcano},
    {
        [[9931.01,12083,1],100,20] call GRAD_Vulcano_fnc_vulcanoInit;
    },
    []
] call CBA_fnc_waitUntilAndExecute;

private _root = parsingNamespace getVariable "MISSION_ROOT";

[{
    params ["_root", "_handle"];

    playSound3D [format ["%1data\morse.ogg", _root], morse_player, false, getPosASL morse_player, 5, 1, 50];
},110,_root] call CBA_fnc_addPerFrameHandler;
