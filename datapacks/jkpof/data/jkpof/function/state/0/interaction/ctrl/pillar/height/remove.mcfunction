scoreboard players remove #ctrl_pillar_height jkpof.int 10
execute if score #ctrl_pillar_height jkpof.int matches ..0 run scoreboard players set #ctrl_pillar_height jkpof.int 100

function jkpof:state/0/interaction/ctrl/pillar/show
