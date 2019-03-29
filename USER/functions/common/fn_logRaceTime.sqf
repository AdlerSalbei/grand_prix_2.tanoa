params ["_unit"];

private _endTime = time;
private _startTime = _unit getVariable ["grand_prix_2_raceTime", 0];
private _time = _endTime - _startTime;
private _seconds = floor (_time);
private _min = floor (_time / 60);

if (_time > 60) then {
    _seconds = floor (_time - (60*_min));
};

private _infoTime = format ["%1min %2sec", _min, _seconds];

hint _infoTime;
(format ["GRPX2: RACE TIME, Player: %1, Time: %2", _unit, _infoTime]) remoteExec ["diag_log", 2];
