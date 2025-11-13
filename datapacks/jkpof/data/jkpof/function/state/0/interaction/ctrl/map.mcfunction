scoreboard players add #ctrl_map jkpof.int 1
execute if score #ctrl_map jkpof.int matches 5.. run scoreboard players set #ctrl_map jkpof.int 0

data remove storage jk:pof data.map
execute if score #ctrl_map jkpof.int matches 1 run data modify storage jk:pof data.map.block1 set value "diorite"
execute if score #ctrl_map jkpof.int matches 1 run data modify storage jk:pof data.map.block2 set value "cobweb"
execute if score #ctrl_map jkpof.int matches 2 run data modify storage jk:pof data.map.block1 set value "slime_block"
execute if score #ctrl_map jkpof.int matches 2 run data modify storage jk:pof data.map.block2 set value "honey_block"
execute if score #ctrl_map jkpof.int matches 3 run data modify storage jk:pof data.map.block1 set value "packed_ice"
execute if score #ctrl_map jkpof.int matches 3 run data modify storage jk:pof data.map.block2 set value "powder_snow"
execute if score #ctrl_map jkpof.int matches 4 run data modify storage jk:pof data.map.block1 set value "gold_block"
execute if score #ctrl_map jkpof.int matches 4 run data modify storage jk:pof data.map.block2 set value "emerald_block"

function jkpof:state/0/interaction/ctrl/ground/show
