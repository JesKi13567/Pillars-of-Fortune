scoreboard players remove #ctrl_pillar_count_order jkpof.int 1
execute if score #ctrl_pillar_count_order jkpof.int matches ..0 run scoreboard players set #ctrl_pillar_count_order jkpof.int 12

function jkpof:state/0/interaction/ctrl/pillar/show
