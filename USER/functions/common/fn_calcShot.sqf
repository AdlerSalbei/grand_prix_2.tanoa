params ["_pos"];

private _distance = [9976.15,12074.2,0] distance2D _pos;
private _dir = [9976.15,12074.2,0] getDir _pos;
private _heading = "";

switch (true) do {
        case (_dir < 22.5 || _dir > 337.5)  :   {_heading = "Nord";};
        case (_dir < 67.5)                  :   {_heading = "Nord-Ost";};
        case (_dir < 112.5)                 :   {_heading = "Ost";};
        case (_dir < 157.5)                 :   {_heading = "Süd-Ost";};
        case (_dir < 202.5)                 :   {_heading = "Süd";};
        case (_dir < 247.5)                 :   {_heading = "Süd-West";};
        case (_dir < 292.5)                 :   {_heading = "West";};
        case (_dir < 337.5)                 :   {_heading = "Nord-West";};
};
private _text = "";
switch (true) do {
        case (_distance < 20)   : {_text = "Volltreffer";};
        case (_distance < 50)   : {_text = "Guter Effekt im Ziel";};
        case (_distance < 150)   : {_text = "Knapp verfehlt";};
        case (_distance >= 150)  : {_text = "Kein Effekt im Ziel";};
};
_distance = ((round(_distance/10))*10);
private _message = format ["%1, %2m %3 vom Zielpunkt.", _text, _distance, _heading];

(format ["GRPX2: Group: %1 Result: %2", (group player), _message]) remoteExec ["diag_log", 2];
_message remoteExec ["hint", (group player)];
