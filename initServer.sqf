["Initialize"] call BIS_fnc_dynamicGroups;

[
    {GRAND_PRIX_TRIGGER_Vulcano},
    {
        [] call grad_vulcano_fnc_vulcanoInit;
    },
    []
] call CBA_fnc_waitUntilAndExecute;
