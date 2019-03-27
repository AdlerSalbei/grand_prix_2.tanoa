params ["_unit"];

private _endTime = time;
private _startTime = _unit getVariable ["grand_prix_2_raceTime", 0];
private _time = _endTime - _startTime;

hint str(_time);
[format ["RACE TIME, Player: %1, Time: %2", _unit, _time]] remoteExec ["diag_log", 2];
