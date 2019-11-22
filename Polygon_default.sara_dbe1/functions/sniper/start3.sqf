sniper3 addAction ["Начать упражнение (300м)", {
    removeAllActions sniper3;

    sniper_floor1_2 hideObjectGlobal false;
    sniper_wall1_2 hideObjectGlobal false;
    sleep 3;
    target1_2 animate["Target_Bottom_Rotate",1];
    target1_2 hideObjectGlobal false;

    target1_2 animate["Target_Bottom_Rotate",0];
    sleep 5;
    target1_2 animate["Target_Bottom_Rotate",1];
    _time = [1,900] call BIS_fnc_randomInt;
    sleep _time;
    target1_2 animate["Target_Bottom_Rotate",0];
    target1_2 addEventHandler["hit", {
        target1_2 animate["Target_Bottom_Rotate",1];
        target1_2 removeAllEventHandlers "hit";
        }
    ];
    sleep 5;
    target1_2 animate["Target_Bottom_Rotate",1];
    sleep 1;
    sniper_wall1_2 hideObjectGlobal true;
    sniper_floor1_2 hideObjectGlobal true;
    target1_2 hideObjectGlobal true;
    execVM "functions\sniper\start3.sqf";
    }
];
sniper3 addAction ["Начать упражнение (500м)", {
    removeAllActions sniper3;

    sniper_floor2_2 hideObjectGlobal false;
    sniper_wall2_2 hideObjectGlobal false;
    sleep 3;
    target2_2 animate["Target_Bottom_Rotate",1];
    target2_2 hideObjectGlobal false;

    target2_2 animate["Target_Bottom_Rotate",0];
    sleep 5;
    target2_2 animate["Target_Bottom_Rotate",1];
    _time = [1,900] call BIS_fnc_randomInt;
    sleep _time;
    target2_2 animate["Target_Bottom_Rotate",0];
    target2_2 addEventHandler["hit", {
        target2_2 animate["Target_Bottom_Rotate",1];
        target2_2 removeAllEventHandlers "hit";
        }
    ];
    sleep 5;
    target2_2 animate["Target_Bottom_Rotate",1];
    sleep 1;
    sniper_wall2_2 hideObjectGlobal true;
    sniper_floor2_2 hideObjectGlobal true;
    target2_2 hideObjectGlobal true;
    execVM "functions\sniper\start3.sqf";
    }
];
