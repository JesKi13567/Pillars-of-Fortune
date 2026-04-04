# 地图
function jkpof:state/0/interaction/ctrl/ground/map/set

execute if score #ctrl_map_real jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "barrier"
execute if score #ctrl_map_real jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "yellow"}]
execute if score #ctrl_map_real jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "cobweb"
execute if score #ctrl_map_real jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "honey_block"
execute if score #ctrl_map_real jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "snow_block"
execute if score #ctrl_map_real jkpof.int matches 4 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "gold_block"
execute if score #ctrl_map_real jkpof.int matches 5 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "decorated_pot"
execute if score #ctrl_map_real jkpof.int matches 6 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "tnt"
execute if score #ctrl_map_real jkpof.int matches 7 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "end_stone"
execute if score #ctrl_map_real jkpof.int matches 8 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "big_dripleaf"
execute if score #ctrl_map_real jkpof.int matches 9 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "ladder"
execute if score #ctrl_map_real jkpof.int matches 10 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "oak_log"

execute if score #ctrl_map_real jkpof.int matches 11..12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "glass"
execute unless score #ctrl_map jkpof.int matches 11..12 run kill @e[type=interaction, tag=jkpof_ctrl_map_custom]
execute unless score #ctrl_map jkpof.int matches 11..12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map_block1, limit=1] view_range set value 0
execute unless score #ctrl_map jkpof.int matches 11..12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map_block2, limit=1] view_range set value 0
execute if score #ctrl_map jkpof.int matches 11..12 unless entity @e[type=interaction, tag=jkpof_display_ctrl_map_block1] run summon interaction -1 64.25 -113 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_map_custom", "jkpof_display_ctrl_map_block1"], response: true, width: .5, height: .5}
execute if score #ctrl_map jkpof.int matches 11..12 unless entity @e[type=interaction, tag=jkpof_display_ctrl_map_block2] run summon interaction 1 64.25 -113 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_map_custom", "jkpof_display_ctrl_map_block2"], response: true, width: .5, height: .5}
execute if score #ctrl_map jkpof.int matches 11..12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map_block1, limit=1] view_range set value 1
execute if score #ctrl_map jkpof.int matches 11..12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map_block2, limit=1] view_range set value 1
execute if score #ctrl_map jkpof.int matches 11..12 as @s[tag=jkpof_ctrl_map] on attacker run tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom", color: "green"}]
execute if score #ctrl_map jkpof.int matches 11..12 as @s[tag=jkpof_ctrl_map] on target run tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom", color: "green"}]
execute if score #ctrl_map jkpof.int matches 11 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.block", color: "aqua"}, "1"]
execute if score #ctrl_map jkpof.int matches 11 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map_block1, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 11 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.block", color: "aqua"}, "2"]
execute if score #ctrl_map jkpof.int matches 11 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map_block2, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 12 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.ground.name", color: "aqua"}]
execute if score #ctrl_map jkpof.int matches 12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map_block1, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 12 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.pillar.name", color: "aqua"}]
execute if score #ctrl_map jkpof.int matches 12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map_block2, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

execute if score #ctrl_map_real jkpof.int matches 1.. run function jkpof:state/0/interaction/ctrl/ground/map/name with storage jk:pof data.map
execute if score #ctrl_map jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] item.id set value "map"
execute if score #ctrl_map jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.random", color: "yellow"}]
data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

# 是否各层随机
execute if score #ctrl_ground_floor_random jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "yellow"}
execute if score #ctrl_ground_floor_random jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.enabled.common", color: "yellow"}

# 层数
data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {score: {name: "#ctrl_ground_floor", objective: "jkpof.int"}, color: "yellow"}

# 半径
data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_radius, limit=1] text set value {score: {name: "#ctrl_ground_radius", objective: "jkpof.int"}, color: "yellow"}
execute store result storage jk:pof data.ground_radius.r int 1 run scoreboard players get #ctrl_ground_radius jkpof.int
data modify storage jk:pof data.map.r set from storage jk:pof data.ground_radius.r

# 地面种类
execute if score #ctrl_ground_type jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] item.id set value "chiseled_stone_bricks"
execute if score #ctrl_ground_type jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.random", color: "yellow"}]
execute if score #ctrl_ground_type jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] item.id set value "bedrock"
execute if score #ctrl_ground_type jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.bedrock", color: "white"}]
execute if score #ctrl_ground_type jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] item.id set value "bucket"
execute if score #ctrl_ground_type jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.air", color: "white"}]
execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] item.id set value "barrier"
execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}]

data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

# 柱子种类
execute if score #ctrl_pillar_type jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "purpur_pillar"
execute if score #ctrl_pillar_type jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.diff", color: "aqua"}, " ", {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.random", color: "yellow"}]
execute if score #ctrl_pillar_type jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "quartz_pillar"
execute if score #ctrl_pillar_type jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.same", color: "white"}, " ", {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.random", color: "yellow"}]
execute if score #ctrl_pillar_type jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "bedrock"
execute if score #ctrl_pillar_type jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.bedrock", color: "white"}]
execute if score #ctrl_pillar_type jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "bucket"
execute if score #ctrl_pillar_type jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.air", color: "white"}]
execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] item.id set value "barrier"
execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}]

data modify entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

# 无效
execute if score #ctrl_ground_floor jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}
execute unless score #ctrl_ground_type jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}

execute if score #ctrl_ground_type jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}
execute if score #ctrl_ground_type jkpof.int matches 2 if score #ctrl_map_real jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}
execute if score #ctrl_ground_type jkpof.int matches 2 if score #ctrl_map_real jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_radius, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}

execute if score #ctrl_map_real jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}
execute unless score #ctrl_map jkpof.int matches -1 unless score #ctrl_map_real jkpof.int matches ..5 unless score #ctrl_map_real jkpof.int matches 7 unless score #ctrl_map_real jkpof.int matches 9.. run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}
