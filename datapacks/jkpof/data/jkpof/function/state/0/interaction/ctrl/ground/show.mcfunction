# 地图
function jkpof:state/0/interaction/ctrl/ground/map/set

execute if score #ctrl_map_real jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "barrier"
execute if score #ctrl_map_real jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.bool.disabled.common", color: "yellow"}]
execute if score #ctrl_map_real jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "cobweb"
execute if score #ctrl_map_real jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "honey_block"
execute if score #ctrl_map_real jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "snow_block"
execute if score #ctrl_map_real jkpof.int matches 4 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "gold_block"
execute if score #ctrl_map_real jkpof.int matches 5 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "tnt"
execute if score #ctrl_map_real jkpof.int matches 6 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "decorated_pot"
execute if score #ctrl_map_real jkpof.int matches 7 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "end_stone"
execute if score #ctrl_map_real jkpof.int matches 8 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "big_dripleaf"
execute if score #ctrl_map_real jkpof.int matches 1.. run function jkpof:state/0/interaction/ctrl/ground/map/name with storage jk:pof data.map
execute if score #ctrl_map jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "map"
execute if score #ctrl_map jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.random", color: "yellow"}]

data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

# 是否各层随机
execute if score #ctrl_ground_floor_random jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.bool.disabled.common", color: "yellow"}
execute if score #ctrl_ground_floor_random jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.bool.enabled.common", color: "yellow"}

# 层数
data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {score: {name: "#ctrl_ground_floor", objective: "jkpof.int"}, color: "yellow"}

# 半径
data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_radius, limit=1] text set value {score: {name: "#ctrl_ground_radius", objective: "jkpof.int"}, color: "yellow"}
execute store result storage jk:pof data.ground_radius.r int 1 run scoreboard players get #ctrl_ground_radius jkpof.int
data modify storage jk:pof data.map.r set from storage jk:pof data.ground_radius.r

# 地面种类
execute if score #ctrl_ground_type jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] item.id set value "chiseled_stone_bricks"
execute if score #ctrl_ground_type jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.random", color: "yellow"}]
execute if score #ctrl_ground_type jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] item.id set value "bedrock"
execute if score #ctrl_ground_type jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.bedrock", color: "white"}]
execute if score #ctrl_ground_type jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] item.id set value "bucket"
execute if score #ctrl_ground_type jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.air", color: "white"}]
execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] item.id set value "barrier"
execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}]

data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

# 柱子种类
execute if score #ctrl_pillar_type jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "purpur_pillar"
execute if score #ctrl_pillar_type jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.bool.diff", color: "aqua"}, " ", {storage: "jk:pof", nbt: "txt.lobby.global.random", color: "yellow"}]
execute if score #ctrl_pillar_type jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "quartz_pillar"
execute if score #ctrl_pillar_type jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.bool.same", color: "white"}, " ", {storage: "jk:pof", nbt: "txt.lobby.global.random", color: "yellow"}]
execute if score #ctrl_pillar_type jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "bedrock"
execute if score #ctrl_pillar_type jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.bedrock", color: "white"}]
execute if score #ctrl_pillar_type jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "bucket"
execute if score #ctrl_pillar_type jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.air", color: "white"}]
execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "barrier"
execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}]

data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

# 无效
execute if score #ctrl_ground_floor jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}
execute unless score #ctrl_ground_type jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}

execute if score #ctrl_ground_type jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}
execute if score #ctrl_ground_type jkpof.int matches 2 if score #ctrl_map_real jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}
execute if score #ctrl_ground_type jkpof.int matches 2 if score #ctrl_map_real jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_radius, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}

execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}
execute unless score #ctrl_map jkpof.int matches -1 if score #ctrl_map_real jkpof.int matches 5 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}
