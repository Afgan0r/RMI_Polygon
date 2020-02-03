params ["_center","_dist"];
_targets = nearestObjects [position _center, ["TargetBase"], _dist];
{
    _x setVariable ["BIS_poppingEnabled", true];
    _x animate ["Terc",0];
} forEach _targets;
