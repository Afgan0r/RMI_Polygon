kh1_refresh addAction ["Обновить цели",
{
    _targets = nearestObjects [position center1, ["TargetBase"], 50];
    {
        _x setVariable ["BIS_poppingEnabled", true];
        _x animate ["Terc",0];
    } forEach _targets;
}
];
