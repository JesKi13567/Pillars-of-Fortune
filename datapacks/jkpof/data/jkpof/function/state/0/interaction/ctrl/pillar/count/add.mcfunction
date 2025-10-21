scoreboard players add #ctrl_pillar_count_order jkpof.int 1
execute if score #ctrl_pillar_count_order jkpof.int matches 4.. run scoreboard players set #ctrl_pillar_count_order jkpof.int 0

function jkpof:state/0/interaction/ctrl/pillar/count/show
