scoreboard players add #ctrl_pillar_type jkpof.int 1
execute if score #ctrl_pillar_type jkpof.int matches 4.. run scoreboard players set #ctrl_pillar_type jkpof.int 0

function jkpof:state/0/interaction/ctrl/ground/show
