execute unless score #ctrl_map jkpof.int matches -1 run scoreboard players operation #ctrl_map_real jkpof.int = #ctrl_map jkpof.int
execute if score #ctrl_map jkpof.int matches -1 store result score #ctrl_map_real jkpof.int run random value 1..14

data merge storage jk:pof {data: {map: {b1: "air", b2: "air", b3: "air", b4: "air"}}}

# 混合
execute if score #ctrl_map_real jkpof.int matches 1 run data merge storage jk:pof {data: {map: {b1: "diorite", b2: "cobweb"}}}
execute if score #ctrl_map_real jkpof.int matches 2 run data merge storage jk:pof {data: {map: {b1: "slime_block", b2: "honey_block"}}}
execute if score #ctrl_map_real jkpof.int matches 3 run data merge storage jk:pof {data: {map: {b1: "packed_ice", b2: "powder_snow"}}}
execute if score #ctrl_map_real jkpof.int matches 4 run data merge storage jk:pof {data: {map: {b1: "gold_block", b2: "emerald_block"}}}
execute if score #ctrl_map_real jkpof.int matches 5 run data merge storage jk:pof {data: {map: {b1: "decorated_pot", b2: "flower_pot"}}}

# 组合
execute if score #ctrl_map_real jkpof.int matches 6 run data merge storage jk:pof {data: {map: {b1: "obsidian", b2: "end_stone"}}}
execute if score #ctrl_map_real jkpof.int matches 7 run data merge storage jk:pof {data: {map: {b1: "ladder", b2: "spruce_trapdoor"}}}
execute if score #ctrl_map_real jkpof.int matches 8 run data merge storage jk:pof {data: {map: {b1: "clay", b2: "big_dripleaf"}}}
execute if score #ctrl_map_real jkpof.int matches 9 run data merge storage jk:pof {data: {map: {b1: "iron_chain", b2: "lava_cauldron"}}}

# 三层
execute if score #ctrl_map_real jkpof.int matches 10 run data merge storage jk:pof {data: {map: {b1: "smooth_sandstone", b2: "oak_pressure_plate", b3: "sand", b4: "tnt"}}}
execute if score #ctrl_map_real jkpof.int matches 11 run data merge storage jk:pof {data: {map: {b1: "bubble_column[drag=false]", b2: "bubble_column[drag=false]", b3: "bubble_column[drag=false]", b4: "soul_sand"}}}
execute if score #ctrl_map_real jkpof.int matches 12 run data merge storage jk:pof {data: {map: {b1: "oak_fence", b2: "wheat[age=7]", b3: "farmland[moisture=7]", b4: "hay_block"}}}

# 特殊
#execute if score #ctrl_map_real jkpof.int matches 13
#execute if score #ctrl_map_real jkpof.int matches 14

# 自定义
execute if score #ctrl_map_real jkpof.int matches 15..17 run function jkpof:state/0/interaction/ctrl/ground/map/custom/block {x: 'b1'}
execute if score #ctrl_map_real jkpof.int matches 15..17 run function jkpof:state/0/interaction/ctrl/ground/map/custom/block {x: 'b2'}
execute if score #ctrl_map_real jkpof.int matches 17 run function jkpof:state/0/interaction/ctrl/ground/map/custom/block {x: 'b3'}
execute if score #ctrl_map_real jkpof.int matches 17 run function jkpof:state/0/interaction/ctrl/ground/map/custom/block {x: 'b4'}

execute store result storage jk:pof data.map.id int 1 run scoreboard players get #ctrl_map_real jkpof.int
