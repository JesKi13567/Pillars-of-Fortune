scoreboard players add #ctrl_pillar_distance jkpof.int 1
execute if score #ctrl_pillar_distance jkpof.int matches 3.. run scoreboard players set #ctrl_pillar_distance jkpof.int 0

function jkpof:state/0/interaction/ctrl/pillar/show
