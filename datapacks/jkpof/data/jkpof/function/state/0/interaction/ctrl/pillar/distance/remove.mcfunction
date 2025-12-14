scoreboard players remove #ctrl_pillar_distance jkpof.int 1
execute if score #ctrl_pillar_distance jkpof.int matches ..-1 run scoreboard players set #ctrl_pillar_distance jkpof.int 2

function jkpof:state/0/interaction/ctrl/pillar/show
