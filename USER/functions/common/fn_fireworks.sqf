if !(isServer) exitWith {};

private _pos1 = getPos firework_launcher_01;
private _pos2 = getPos firework_launcher_02;

[
    _pos1,
    "rain",
    "random"
] remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];

[
    _pos1,
    "normal",
    "random"
] remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];

[
    _pos2,
    "rain",
    "random"
] remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];

[
    _pos2,
    "normal",
    "random"
] remoteExec ["GRAD_fireworks_fnc_prepareFireworks", 2];
