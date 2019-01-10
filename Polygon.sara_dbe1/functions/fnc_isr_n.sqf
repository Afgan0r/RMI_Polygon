ish_stage1_trg1_hit=0;
ish_stage1_trg1 addeventhandler ["HIT",{ish_stage1_trg1_hit=1;}];


//first stage

sleep 3;
hint "Ляжь на коврик и порази мишень";
waitUntil {ish_stage1_trg1_hit==1};
ish_stage1_trg1 removeEventHandler ["HIT", 0];
hint "Продолжай выполнение упражнения";
waitUntil {triggerActivated ish_stage1_trigger1};
{_x hideObjectGlobal true} foreach [isr_stage2_1,isr_stage2_2,isr_stage2_3,isr_stage2_4,isr_stage2_5,isr_stage2_6,isr_stage2_7,isr_stage2_8,isr_stage2_9,isr_stage2_10,isr_stage2_11,isr_stage2_12,isr_stage2_13,isr_stage2_14,isr_stage2_15];
hint "Подойди к огневому рубежу";

//second stage

ish_stage2_trg1_hit=0;
ish_stage2_trg2_hit=0;
ish_stage2_trg1 addeventhandler ["HIT",
{
    ish_stage2_trg1_hit=ish_stage2_trg1_hit+1;
    hint format ["ish_stage2_trg1_hit=%1",ish_stage2_trg1_hit];
    if (ish_stage2_trg1_hit<2) then
    {
        [ish_stage2_trg1,2] execVM "functions\fnc_isr_popup.sqf";
    };
}];
ish_stage2_trg2 addeventhandler ["HIT",
{
    ish_stage2_trg2_hit=ish_stage2_trg2_hit+1;
    hint format ["ish_stage2_trg2_hit=%1",ish_stage2_trg2_hit];
    if (ish_stage2_trg2_hit<2) then
    {
        [ish_stage2_trg2,2] execVM "functions\fnc_isr_popup.sqf";
    };
}];
waitUntil {triggerActivated ish_stage2_trigger1};
Hint "Порази мишени по 2 раза каждую";
waitUntil {(ish_stage2_trg2_hit==2) and (ish_stage2_trg1_hit==2)};
ish_stage2_trg1 removeEventHandler ["HIT",0];
ish_stage2_trg2 removeEventHandler ["HIT",0];
hint "Подойди к следующему огневому рубежу";

//third stage

ish_stage3_trg1_hit=0;
ish_stage3_trg1 addEventHandler ["Explosion", {ish_stage3_trg1_hit=1}];
ish_stage3_trg2_hit=0;
ish_stage3_trg2 addEventHandler ["Explosion", {ish_stage3_trg2_hit=1}];
waitUntil {triggerActivated ish_stage3_trigger1};
hint "Забрось гранату в указанное окно";
waitUntil {(ish_stage3_trg1_hit==1)||(ish_stage3_trg2_hit==1)};
ish_stage3_trg1 removeEventHandler ["Explosion",0];
ish_stage3_trg2 removeEventHandler ["Explosion",0];
Hint "Продолжай выполнение упражнения";
waitUntil {triggerActivated ish_stage3_trigger2};
{_x hideObjectGlobal true} foreach [isr_stage4_1,isr_stage4_2,isr_stage4_3,isr_stage4_4,isr_stage4_5,isr_stage4_6,isr_stage4_7,isr_stage4_8,isr_stage4_9,isr_stage4_10,isr_stage4_11,isr_stage4_12,isr_stage4_13,isr_stage4_14,isr_stage4_15];

//fourth stage

hint "Порази на ходу каждую мишень 1 раз, останавливаться нельзя";
ish_stage5_hits=0;
{
    _x addEventHandler ["HIT",
    {
        ish_stage5_hits=ish_stage5_hits+1;
    }];
} foreach [ish_stage4_trg1,ish_stage4_trg2,ish_stage4_trg3,ish_stage4_trg4,ish_stage4_trg5];
waitUntil {ish_stage5_hits==5};
{
    _x removeEventHandler ["HIT",0];
} foreach [ish_stage4_trg1,ish_stage4_trg2,ish_stage4_trg3,ish_stage4_trg4,ish_stage4_trg5];
hint "Отличная работа, на этом все. Подойди к ноутбуку чтобы прибраться за собой.";
exit;
