sniper1 addAction ["Начать упражнение", {
    removeAllActions sniper1;

    sleep 3;
    sniper_target1 animate["Target_Bottom_Rotate",0];
    sleep 5;

    sniper_target1 animate["Target_Bottom_Rotate",1];
    _time = [1,900] call BIS_fnc_randomInt;
    sleep _time;

    sniper_target1 animate["Target_Bottom_Rotate",0];
    sniper_target1 addEventHandler["hit", {
        sniper_target1 animate["Target_Bottom_Rotate",1];
        sniper_target1 removeAllEventHandlers "hit";
        }
    ];
    
    sleep 5;
    sniper_target1 animate["Target_Bottom_Rotate",1];
    sleep 1;
    execVM "functions\sniper\start1.sqf";
    }
];
