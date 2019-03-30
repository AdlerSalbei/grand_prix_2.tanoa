if (didJIP) then {
    [player] remoteExec ["grad_common_fnc_addJipToZeus",2,false];
};

["InitializePlayer", [player,true]] call BIS_fnc_dynamicGroups;
grad_template_ratingEH = player addEventHandler ["HandleRating",{0}];

["grad_user_triggerCountdown", {
    playSound "raceCountdown";
    ["<img size= '6' style='vertical-align:middle' shadow='false' image='data\3.paa'/>",0,0,1,0] spawn BIS_fnc_dynamicText;

    [{

        ["<img size= '6' style='vertical-align:middle' shadow='false' image='data\2.paa'/>",0,0,1,0] spawn BIS_fnc_dynamicText;

        [{

            ["<img size= '6' style='vertical-align:middle' shadow='false' image='data\1.paa'/>",0,0,1,0] spawn BIS_fnc_dynamicText;

            [{
                ["<img size= '6' style='vertical-align:middle' shadow='false' image='data\go.paa'/>",0,0,1,0] spawn BIS_fnc_dynamicText;
            },[],1] call CBA_fnc_waitAndExecute;
        },[],1] call CBA_fnc_waitAndExecute;
    },[],1] call CBA_fnc_waitAndExecute;
}] call CBA_fnc_addEventHandler;

private _root = parsingNamespace getVariable "MISSION_ROOT";

[{
    params ["_root", "_handle"];
    
    playSound3D [format ["%1data\morse.ogg", _root], morse_player, false, getPosASL morse_player, 5, 1, 50];
},110,_root] call CBA_fnc_addPerFrameHandler;
