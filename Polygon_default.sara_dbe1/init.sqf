nopop=true;

//don't shoot on base
player addEventHandler ["FiredMan", {
    _shooter = _this select 0;
    _projectile = _this select 6;
    if ((_shooter distance2D tp0) < 75) then {
        deleteVehicle _projectile;
        titleText ["<t color='#ff0000' size='10'>НЕ СТРЕЛЯТЬ НА БАЗЕ</t>", "PLAIN", -1, true, true];
        _script = [_shooter] execVM "functions\disable_user_input.sqf";
    };
}];



// snipers excercise 
sniper_wall1 hideObjectGlobal true;
sniper_wall1_1 hideObjectGlobal true;
sniper_wall1_2 hideObjectGlobal true;
sniper_wall2 hideObjectGlobal true;
sniper_wall2_1 hideObjectGlobal true;
sniper_wall2_2 hideObjectGlobal true;

sniper_floor1 hideObjectGlobal true;
sniper_floor1_1 hideObjectGlobal true;
sniper_floor1_2 hideObjectGlobal true;
sniper_floor2 hideObjectGlobal true;
sniper_floor2_1 hideObjectGlobal true;
sniper_floor2_2 hideObjectGlobal true;

target1 hideObjectGlobal true;
target1_1 hideObjectGlobal true;
target1_2 hideObjectGlobal true;
target2 hideObjectGlobal true;
target2_1 hideObjectGlobal true;
target2_2 hideObjectGlobal true;
