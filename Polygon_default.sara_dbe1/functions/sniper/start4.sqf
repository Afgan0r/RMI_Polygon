sniper4 addAction ["Начать упражнение", {
    removeAllActions sniper4;

    sleep 3;
    sniper_target4 animate["Target_Bottom_Rotate",0];
    sleep 5;

    sniper_target4 animate["Target_Bottom_Rotate",1];
    _time = [1,900] call BIS_fnc_randomInt;
    sleep _time;

    sniper_target4 animate["Target_Bottom_Rotate",0];
    sniper_target4 addEventHandler["hit", {
        target2_2 animate["Target_Bottom_Rotate",1];
        target1 removeAllEventHandlers "hit";
        }
    ];

    sleep 5;
    sniper_target4 animate["Target_Bottom_Rotate",1];
    sleep 1;
    execVM "functions\sniper\start1.sqf";
    }
];
