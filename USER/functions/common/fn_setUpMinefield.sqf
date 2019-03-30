{
    deleteVehicle _x;
}forEach allMines;

{
    private _marker = _x;

    for "_i" from 1 to 10 do {
        private _position = [_marker] call CBA_fnc_randPosArea;
        createMine ["APERSMine", _position, [], 0];
    };

}forEach ["mineMarker_1", "mineMarker_2", "mineMarker_3", "mineMarker_4"];
