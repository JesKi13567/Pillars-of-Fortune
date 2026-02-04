scoreboard players remove #ctrl_map jkpof.int 1
execute if score #ctrl_map jkpof.int matches ..-2 run scoreboard players set #ctrl_map jkpof.int 10

function jkpof:state/0/interaction/ctrl/ground/show
