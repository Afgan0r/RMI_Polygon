sniper2 addAction ["Начать упражнение (300м)", {
    removeAllActions sniper2;

    sniper_floor1_1 hideObjectGlobal false;
    sniper_wall1_1 hideObjectGlobal false;
    sleep 3;
    target1_1 animate["Target_Bottom_Rotate",1];
    target1_1 hideObjectGlobal false;

    target1_1 animate["Target_Bottom_Rotate",0];
    sleep 5;
    target1_1 animate["Target_Bottom_Rotate",1];
    _time = [1,900] call BIS_fnc_randomInt;
    sleep _time;
    target1_1 animate["Target_Bottom_Rotate",0];
    target1_1 addEventHandler["hit", {
        target1_1 animate["Target_Bottom_Rotate",1];
        target1_1 removeAllEventHandlers "hit";
        }
    ];
    sleep 5;
    target1_1 animate["Target_Bottom_Rotate",1];
    sleep 1;
    sniper_wall1_1 hideObjectGlobal true;
    sniper_floor1_1 hideObjectGlobal true;
    target1_1 hideObjectGlobal true;
    execVM "functions\sniper\start2.sqf";
    }
];
sniper2 addAction ["Начать упражнение (500м)", {
    removeAllActions sniper2;

    sniper_floor2_1 hideObjectGlobal false;
    sniper_wall2_1 hideObjectGlobal false;
    sleep 3;
    target2_1 animate["Target_Bottom_Rotate",1];
    target2_1 hideObjectGlobal false;

    target2_1 animate["Target_Bottom_Rotate",0];
    sleep 5;
    target2_1 animate["Target_Bottom_Rotate",1];
    _time = [1,900] call BIS_fnc_randomInt;
    sleep _time;
    target2_1 animate["Target_Bottom_Rotate",0];
    target2_1 addEventHandler["hit", {
        target2_1 animate["Target_Bottom_Rotate",1];
        target2_1 removeAllEventHandlers "hit";
        }
    ];
    sleep 5;
    target2_1 animate["Target_Bottom_Rotate",1];
    sleep 1;
    sniper_wall2_1 hideObjectGlobal true;
    sniper_floor2_1 hideObjectGlobal true;
    target2_1 hideObjectGlobal true;
    execVM "functions\sniper\start2.sqf";
    }
];
