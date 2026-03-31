execute unless score #ctrl_map jkpof.int matches -1 run scoreboard players operation #ctrl_map_real jkpof.int = #ctrl_map jkpof.int
execute if score #ctrl_map jkpof.int matches -1 store result score #ctrl_map_real jkpof.int run random value 1..10

data merge storage jk:pof {data: {map: {block1: "air", block2: "air"}}}

execute if score #ctrl_map_real jkpof.int matches 1 run data merge storage jk:pof {data: {map: {block1: "diorite", block2: "cobweb"}}}
execute if score #ctrl_map_real jkpof.int matches 2 run data merge storage jk:pof {data: {map: {block1: "slime_block", block2: "honey_block"}}}
execute if score #ctrl_map_real jkpof.int matches 3 run data merge storage jk:pof {data: {map: {block1: "packed_ice", block2: "powder_snow"}}}
execute if score #ctrl_map_real jkpof.int matches 4 run data merge storage jk:pof {data: {map: {block1: "gold_block", block2: "emerald_block"}}}
execute if score #ctrl_map_real jkpof.int matches 5 run data merge storage jk:pof {data: {map: {block1: "decorated_pot", block2: "flower_pot"}}}
execute if score #ctrl_map_real jkpof.int matches 7 run data merge storage jk:pof {data: {map: {block1: "end_stone", block2: "obsidian"}}}
execute if score #ctrl_map_real jkpof.int matches 8 run data merge storage jk:pof {data: {map: {block1: "big_dripleaf", block2: "clay"}}}
execute if score #ctrl_map_real jkpof.int matches 9 run data merge storage jk:pof {data: {map: {block1: "spruce_trapdoor", block2: "ladder"}}}
execute if score #ctrl_map_real jkpof.int matches 10 run function jkpof:state/0/interaction/ctrl/ground/map/type/10
execute if score #ctrl_map_real jkpof.int matches 11..12 run function jkpof:state/0/interaction/ctrl/ground/map/type/custom {x: 'block1'}
execute if score #ctrl_map_real jkpof.int matches 11..12 run function jkpof:state/0/interaction/ctrl/ground/map/type/custom {x: 'block2'}

execute store result storage jk:pof data.map.id int 1 run scoreboard players get #ctrl_map_real jkpof.int
