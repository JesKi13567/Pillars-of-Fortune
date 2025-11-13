scoreboard players add #ctrl_ground_floor_random jkpof.int 1
execute if score #ctrl_ground_floor_random jkpof.int matches 2.. run scoreboard players set #ctrl_ground_floor_random jkpof.int 0

function jkpof:state/0/interaction/ctrl/ground/show
