# 是否各层随机
execute if score #ctrl_ground_floor_random jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {text: "否", color: "yellow"}
execute if score #ctrl_ground_floor_random jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {text: "是", color: "yellow"}

# 层数
data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {score: {name: "#ctrl_ground_floor", objective: "jkpof.int"}, color: "yellow"}

# 半径
data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_radius, limit=1] text set value {score: {name: "#ctrl_ground_radius", objective: "jkpof.int"}, color: "yellow"}
execute store result storage jk:pof data.ground_radius.r int 1 run scoreboard players get #ctrl_ground_radius jkpof.int
data modify storage jk:pof data.map.r set from storage jk:pof data.ground_radius.r

# 地面种类
execute if score #ctrl_ground_type jkpof.int matches 0 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] {CustomName: [{text: "随机", color: "yellow"}], item: {id: "chiseled_stone_bricks"}}
execute if score #ctrl_ground_type jkpof.int matches 1 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] {CustomName: [{translate: "block.minecraft.bedrock", color: "white"}], item: {id: "bedrock"}}
execute if score #ctrl_ground_type jkpof.int matches 2 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] {CustomName: [{translate: "block.minecraft.air", color: "white"}], item: {id: "bucket"}}
execute if score #ctrl_map jkpof.int matches 1.. run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] {CustomName: [{text: "按地图", color: "yellow"}], item: {id: "map"}}

# 柱子种类
execute if score #ctrl_pillar_type jkpof.int matches 0 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{text: "不同", color: "aqua"}, {text: "随机", color: "yellow"}], item: {id: "purpur_pillar"}}
execute if score #ctrl_pillar_type jkpof.int matches 1 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{text: "相同", color: "white"}, {text: "随机", color: "yellow"}], item: {id: "quartz_pillar"}}
execute if score #ctrl_pillar_type jkpof.int matches 2 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{translate: "block.minecraft.bedrock", color: "white"}], item: {id: "bedrock"}}
execute if score #ctrl_pillar_type jkpof.int matches 3 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{translate: "block.minecraft.air", color: "white"}], item: {id: "bucket"}}
execute if score #ctrl_map jkpof.int matches 1.. run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{text: "按地图", color: "yellow"}], item: {id: "map"}}

# 地图
execute if score #ctrl_map jkpof.int matches 0 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] {CustomName: [{text: "禁用", color: "yellow"}], item: {id: "barrier"}}
execute if score #ctrl_map jkpof.int matches 1 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] {CustomName: [{text: "盘丝洞", color: "yellow"}], item: {id: "cobweb"}}
execute if score #ctrl_map jkpof.int matches 2 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] {CustomName: [{text: "黏糊糊", color: "yellow"}], item: {id: "honey_block"}}
execute if score #ctrl_map jkpof.int matches 3 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] {CustomName: [{text: "冷飕飕", color: "yellow"}], item: {id: "snow_block"}}
execute if score #ctrl_map jkpof.int matches 4 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_map, limit=1] {CustomName: [{text: "财富", color: "yellow"}], item: {id: "gold_block"}}

# 无效
execute if score #ctrl_ground_floor jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {text: "无效", color: "yellow"}
execute unless score #ctrl_ground_type jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {text: "无效", color: "yellow"}

execute if score #ctrl_ground_type jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {text: "无效", color: "yellow"}
execute if score #ctrl_ground_type jkpof.int matches 2 if score #ctrl_map jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {text: "无效", color: "yellow"}
execute if score #ctrl_ground_type jkpof.int matches 2 if score #ctrl_map jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_radius, limit=1] text set value {text: "无效", color: "yellow"}

execute if score #ctrl_map jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {text: "无效", color: "yellow"}
