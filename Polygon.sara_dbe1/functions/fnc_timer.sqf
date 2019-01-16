params ["_name"];
_timer=0;
waitUntil {timer_on};
while {timer_on} do
{
    _timer=_timer+1;
    sleep 1;
};
sleep 5;
hint format ["Игрок %1 прошел полосу за %2 секунд",_name,_timer];
