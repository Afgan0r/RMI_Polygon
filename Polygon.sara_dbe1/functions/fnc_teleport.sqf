{
    _x addaction ["Телепорт на гору Зевса",
    {
        player setpos (getPos tp0);
        _d = direction Tp_0 + 180;
        player setdir _d;
    }];

    _x addaction ["Телепорт к киллхаусам",
    {
        player setpos (getPos tp1);
        _d = direction Tp_1 + 180;
        player setdir _d;
    }];

    _x addaction ["Телепорт на танкодром",
    {
        player setpos (getPos tp2);
        _d = direction Tp_2 + 180;
        player setdir _d;
    }];

    _x addaction ["Телепорт к пехотному и танковому полигону",
    {
        player setpos (getPos tp3);
        _d = direction Tp_3 + 180;
        player setdir _d;
    }];

    _x addaction ["Телепорт к лесному пехотному полигону (Не завершен)",
    {
        player setpos (getPos tp4);
        _d = direction Tp_4 + 180;
        player setdir _d;
    }];

    _x addaction ["Телепорт к ПВП городу",
    {
        player setpos (getPos tp5);
        _d = direction Tp_5 + 180;
        player setdir _d;
    }];
} forEach [Tp_0,Tp_1,Tp_2,Tp_3,Tp_4,Tp_5];
