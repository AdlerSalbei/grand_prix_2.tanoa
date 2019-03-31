#include "script_component.hpp"
//[[10031.5,11788.9,0], 150] execVM "USER\functions\fn_nockDownBuildings.sqf";

params ["_pos", "_distance"];

private _objects = nearestTerrainObjects [
    _pos,
    [
        "TREE",
        "SMALL TREE",
        "BUSH",
        "BUILDING",
        "HOUSE",
        "FOREST BORDER",
        "FOREST TRIANGLE",
        "FOREST SQUARE",
        "CHURCH",
        "CHAPEL",
        "CROSS",
        "BUNKER",
        "FORTRESS",
        "FOUNTAIN",
        "VIEW-TOWER",
        "LIGHTHOUSE",
        "QUAY",
        "FUELSTATION",
        "HOSPITAL",
        "FENCE",
        "WALL",
        "HIDE",
        "BUSSTOP",
        "ROAD",
        "FOREST",
        "TRANSMITTER",
        "STACK",
        "RUIN",
        "TOURISM",
        "WATERTOWER",
        "TRACK",
        "MAIN ROAD",
        "ROCK",
        "ROCKS",
        "POWER LINES",
        "RAILWAY",
        "POWERSOLAR",
        "POWERWAVE",
        "POWERWIND",
        "SHIPWRECK",
        "TRAIL"
    ],
    _distance
];

{
    _x setDamage 1;
}forEach _objects;
