scoreboard players add #ctrl_ground_type jkpof.int 1
execute if score #ctrl_ground_type jkpof.int matches 3.. run scoreboard players set #ctrl_ground_type jkpof.int 0

function jkpof:state/0/interaction/ctrl/ground/show
