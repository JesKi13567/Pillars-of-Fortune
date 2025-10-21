scoreboard players remove #ctrl_ground_radius jkpof.int 2
execute if score #ctrl_ground_radius jkpof.int matches ..10 run scoreboard players set #ctrl_ground_radius jkpof.int 24

function jkpof:state/0/interaction/ctrl/ground/radius/show
