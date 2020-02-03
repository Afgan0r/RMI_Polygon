params ["_trgname","_time"];
sleep _time;
_trgname setVariable ["BIS_poppingEnabled", true];
_trgname animate ["Terc",0];
_trgname setVehicleArmor 1;
