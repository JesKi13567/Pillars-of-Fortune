scoreboard players remove #ctrl_ground_type jkpof.int 1
execute if score #ctrl_ground_type jkpof.int matches ..-1 run scoreboard players set #ctrl_ground_type jkpof.int 2

function jkpof:state/0/interaction/ctrl/ground/type/show
