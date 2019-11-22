sniper1 addAction ["Начать упражнение (300м)", {
    removeAllActions sniper1;

    sniper_floor1 hideObjectGlobal false;
    sniper_wall1 hideObjectGlobal false;
    sleep 3;
    target1 animate["Target_Bottom_Rotate",1];
    target1 hideObjectGlobal false;

    target1 animate["Target_Bottom_Rotate",0];
    sleep 5;
    target1 animate["Target_Bottom_Rotate",1];
    _time = [1,900] call BIS_fnc_randomInt;
    sleep _time;
    target1 animate["Target_Bottom_Rotate",0];
    target1 addEventHandler["hit", {
        target1 animate["Target_Bottom_Rotate",1];
        target1 removeAllEventHandlers "hit";
        }
    ];
    sleep 5;
    target1 animate["Target_Bottom_Rotate",1];
    sleep 1;
    sniper_wall1 hideObjectGlobal true;
    sniper_floor1 hideObjectGlobal true;
    target1 hideObjectGlobal true;
    execVM "functions\sniper\start1.sqf";
    }
];
sniper1 addAction ["Начать упражнение (500м)", {
    removeAllActions sniper1;

    sniper_floor2 hideObjectGlobal false;
    sniper_wall2 hideObjectGlobal false;
    sleep 3;
    target2 animate["Target_Bottom_Rotate",1];
    target2 hideObjectGlobal false;

    target2 animate["Target_Bottom_Rotate",0];
    sleep 5;
    target2 animate["Target_Bottom_Rotate",1];
    _time = [1,900] call BIS_fnc_randomInt;
    sleep _time;
    target2 animate["Target_Bottom_Rotate",0];
    target2 addEventHandler["hit", {
        target2 animate["Target_Bottom_Rotate",1];
        target2 removeAllEventHandlers "hit";
        }
    ];
    sleep 5;
    target2 animate["Target_Bottom_Rotate",1];
    sleep 1;
    sniper_wall2 hideObjectGlobal true;
    sniper_floor2 hideObjectGlobal true;
    target2 hideObjectGlobal true;
    execVM "functions\sniper\start1.sqf";
    }
];
