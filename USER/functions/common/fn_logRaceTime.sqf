params ["_unit", "_typ", "_gvar"];

private _endTime = time;
private _startTime = _unit getVariable [_gvar, 0];
private _time = _endTime - _startTime;
private _seconds = floor (_time);
private _min = floor (_time / 60);

if (_time > 60) then {
    _seconds = floor (_time - (60*_min));
};

private _infoTime = format ["%1min %2sec", _min, _seconds];

hint _infoTime;
(format ["GRPX2: %1, Player: %2, Time: %3", _typ, _unit, _infoTime]) remoteExec ["diag_log", 2];
