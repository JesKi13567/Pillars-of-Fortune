execute unless score #ctrl_map jkpof.int matches -1 run scoreboard players operation #ctrl_map_real jkpof.int = #ctrl_map jkpof.int
execute if score #ctrl_map jkpof.int matches -1 store result score #ctrl_map_real jkpof.int run random value 1..10

data modify storage jk:pof data.map.block1 set value "air"
data modify storage jk:pof data.map.block2 set value "air"

execute if score #ctrl_map_real jkpof.int matches 1 run data modify storage jk:pof data.map.block1 set value "diorite"
execute if score #ctrl_map_real jkpof.int matches 1 run data modify storage jk:pof data.map.block2 set value "cobweb"
execute if score #ctrl_map_real jkpof.int matches 2 run data modify storage jk:pof data.map.block1 set value "slime_block"
execute if score #ctrl_map_real jkpof.int matches 2 run data modify storage jk:pof data.map.block2 set value "honey_block"
execute if score #ctrl_map_real jkpof.int matches 3 run data modify storage jk:pof data.map.block1 set value "packed_ice"
execute if score #ctrl_map_real jkpof.int matches 3 run data modify storage jk:pof data.map.block2 set value "powder_snow"
execute if score #ctrl_map_real jkpof.int matches 4 run data modify storage jk:pof data.map.block1 set value "gold_block"
execute if score #ctrl_map_real jkpof.int matches 4 run data modify storage jk:pof data.map.block2 set value "emerald_block"
execute if score #ctrl_map_real jkpof.int matches 5 run data modify storage jk:pof data.map.block1 set value "decorated_pot"
execute if score #ctrl_map_real jkpof.int matches 5 run data modify storage jk:pof data.map.block2 set value "flower_pot"

execute if score #ctrl_map_real jkpof.int matches 7 run data modify storage jk:pof data.map.block1 set value "end_stone"
execute if score #ctrl_map_real jkpof.int matches 7 run data modify storage jk:pof data.map.block2 set value "obsidian"
execute if score #ctrl_map_real jkpof.int matches 8 run data modify storage jk:pof data.map.block1 set value "big_dripleaf"
execute if score #ctrl_map_real jkpof.int matches 8 run data modify storage jk:pof data.map.block2 set value "clay"
execute if score #ctrl_map_real jkpof.int matches 9 run data modify storage jk:pof data.map.block1 set value "spruce_trapdoor"
execute if score #ctrl_map_real jkpof.int matches 9 run data modify storage jk:pof data.map.block2 set value "ladder"

execute if score #ctrl_map_real jkpof.int matches 10 run function jkpof:state/0/interaction/ctrl/ground/map/type/10

execute store result storage jk:pof data.map.id int 1 run scoreboard players get #ctrl_map_real jkpof.int
