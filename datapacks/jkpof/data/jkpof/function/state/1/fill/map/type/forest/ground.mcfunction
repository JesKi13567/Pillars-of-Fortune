# 地面
execute store result score #style_temp jkpof.int run random value 0..17
execute if score #style_temp jkpof.int matches 0 run data modify storage jk:pof data.map.b1 set value "acacia_leaves"
execute if score #style_temp jkpof.int matches 1 run data modify storage jk:pof data.map.b1 set value "azalea_leaves"
execute if score #style_temp jkpof.int matches 2 run data modify storage jk:pof data.map.b1 set value "birch_leaves"
execute if score #style_temp jkpof.int matches 3 run data modify storage jk:pof data.map.b1 set value "cherry_leaves"
execute if score #style_temp jkpof.int matches 4 run data modify storage jk:pof data.map.b1 set value "dark_oak_leaves"
execute if score #style_temp jkpof.int matches 5 run data modify storage jk:pof data.map.b1 set value "flowering_azalea_leaves"
execute if score #style_temp jkpof.int matches 6 run data modify storage jk:pof data.map.b1 set value "jungle_leaves"
execute if score #style_temp jkpof.int matches 7 run data modify storage jk:pof data.map.b1 set value "mangrove_leaves"
execute if score #style_temp jkpof.int matches 8 run data modify storage jk:pof data.map.b1 set value "oak_leaves"
execute if score #style_temp jkpof.int matches 9 run data modify storage jk:pof data.map.b1 set value "pale_oak_leaves"
execute if score #style_temp jkpof.int matches 10 run data modify storage jk:pof data.map.b1 set value "spruce_leaves"
execute if score #style_temp jkpof.int matches 11 run data modify storage jk:pof data.map.b1 set value "brown_mushroom_block"
execute if score #style_temp jkpof.int matches 12 run data modify storage jk:pof data.map.b1 set value "red_mushroom_block"
execute if score #style_temp jkpof.int matches 13 run data modify storage jk:pof data.map.b1 set value "nether_wart_block"
execute if score #style_temp jkpof.int matches 14 run data modify storage jk:pof data.map.b1 set value "warped_wart_block"
execute if score #style_temp jkpof.int matches 15 run data modify storage jk:pof data.map.b1 set value "red_poplar_leaves"
execute if score #style_temp jkpof.int matches 16 run data modify storage jk:pof data.map.b1 set value "orange_poplar_leaves"
execute if score #style_temp jkpof.int matches 17 run data modify storage jk:pof data.map.b1 set value "yellow_poplar_leaves"

execute store result score #style_temp jkpof.int run random value 0..17
execute if score #style_temp jkpof.int matches 0 run data modify storage jk:pof data.map.b2 set value "acacia_leaves"
execute if score #style_temp jkpof.int matches 1 run data modify storage jk:pof data.map.b2 set value "azalea_leaves"
execute if score #style_temp jkpof.int matches 2 run data modify storage jk:pof data.map.b2 set value "birch_leaves"
execute if score #style_temp jkpof.int matches 3 run data modify storage jk:pof data.map.b2 set value "cherry_leaves"
execute if score #style_temp jkpof.int matches 4 run data modify storage jk:pof data.map.b2 set value "dark_oak_leaves"
execute if score #style_temp jkpof.int matches 5 run data modify storage jk:pof data.map.b2 set value "flowering_azalea_leaves"
execute if score #style_temp jkpof.int matches 6 run data modify storage jk:pof data.map.b2 set value "jungle_leaves"
execute if score #style_temp jkpof.int matches 7 run data modify storage jk:pof data.map.b2 set value "mangrove_leaves"
execute if score #style_temp jkpof.int matches 8 run data modify storage jk:pof data.map.b2 set value "oak_leaves"
execute if score #style_temp jkpof.int matches 9 run data modify storage jk:pof data.map.b2 set value "pale_oak_leaves"
execute if score #style_temp jkpof.int matches 10 run data modify storage jk:pof data.map.b2 set value "spruce_leaves"
execute if score #style_temp jkpof.int matches 11 run data modify storage jk:pof data.map.b2 set value "brown_mushroom_block"
execute if score #style_temp jkpof.int matches 12 run data modify storage jk:pof data.map.b2 set value "red_mushroom_block"
execute if score #style_temp jkpof.int matches 13 run data modify storage jk:pof data.map.b2 set value "nether_wart_block"
execute if score #style_temp jkpof.int matches 14 run data modify storage jk:pof data.map.b2 set value "warped_wart_block"
execute if score #style_temp jkpof.int matches 15 run data modify storage jk:pof data.map.b2 set value "red_poplar_leaves"
execute if score #style_temp jkpof.int matches 16 run data modify storage jk:pof data.map.b2 set value "orange_poplar_leaves"
execute if score #style_temp jkpof.int matches 17 run data modify storage jk:pof data.map.b2 set value "yellow_poplar_leaves"

function jkpof:state/1/fill/map/type/mix/floor with storage jk:pof data.map

# 柱子
execute if score #ctrl_upside_down jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/forest/pillar {y1: '-2', y2: '1'}
execute if score #ctrl_upside_down jkpof.int matches 1 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/forest/pillar {y1: '3', y2: '49'}
