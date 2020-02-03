player addEventHandler ["FiredMan", {
    _shooter = _this select 0;
    _projectile = _this select 6;
    if ((_shooter distance2D tp0) < 75) then {
        deleteVehicle _projectile;
        titleText ["<t color='#ff0000' size='10'>НЕ СТРЕЛЯТЬ НА БАЗЕ</t>", "PLAIN", -1, true, true];
        _script = [_shooter] execVM "functions\disable_user_input.sqf";
    };
}];
