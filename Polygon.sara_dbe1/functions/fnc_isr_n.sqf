params ["_pl"];
hint format ["Ваше имя: %1",_pl];
ish_stage1_trg1_hit=0;
ish_stage1_trg1 addeventhandler ["HIT",{ish_stage1_trg1_hit=1;}];
sleep 3;

//first stage

hint "Ляжьте на коврик и поразите мишень";
waitUntil {ish_stage1_trg1_hit==1};
hint "Продолжайте выполнение упражнения";
waitUntil {triggerActivated ish_stage1_trigger1};
{_x hideObjectGlobal true} foreach [isr_stage2_1,isr_stage2_2,isr_stage2_3,isr_stage2_4,isr_stage2_5,isr_stage2_6,isr_stage2_7,isr_stage2_8,isr_stage2_9,isr_stage2_10,isr_stage2_11,isr_stage2_12,isr_stage2_13,isr_stage2_14,isr_stage2_15];
hint "Подойдите к огневому рубежу";

//second stage

ish_stage2_trg1_hit=0;
ish_stage2_trg2_hit=0;
ish_stage2_trg1 addeventhandler ["HIT",{ish_stage2_trg1_hit=1;}];
ish_stage2_trg2 addeventhandler ["HIT",{ish_stage2_trg2_hit=1;}];
waitUntil {triggerActivated ish_stage2_trigger1};
Hint "Откройте огонь по мишеням";
waitUntil {(ish_stage2_trg2_hit==1)&&(ish_stage2_trg1_hit==1)};
hint "Подойдите к следующему огневому рубежу";

//third stage

ish_stage3_trg1_hit=0;
ish_stage3_trg1 addEventHandler ["Explosion", {ish_stage3_trg1_hit=1}];
ish_stage3_trg2_hit=0;
ish_stage3_trg2 addEventHandler ["Explosion", {ish_stage3_trg2_hit=1}];
waitUntil {triggerActivated ish_stage3_trigger1};
hint "Забросьте гранату в указанное окно";
waitUntil {(ish_stage3_trg1_hit==1)||(ish_stage3_trg2_hit==1)};
Hint "Продолжайте выполнение упражнения";
waitUntil {triggerActivated ish_stage3_trigger2};
{_x hideObjectGlobal true} foreach [isr_stage4_1,isr_stage4_2,isr_stage4_3,isr_stage4_4,isr_stage4_5,isr_stage4_6,isr_stage4_7,isr_stage4_8,isr_stage4_9,isr_stage4_10,isr_stage4_11,isr_stage4_12,isr_stage4_13,isr_stage4_14,isr_stage4_15];
