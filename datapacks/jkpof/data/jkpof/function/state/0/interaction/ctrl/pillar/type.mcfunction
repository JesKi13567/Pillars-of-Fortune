scoreboard players add #ctrl_pillar_type jkpof.int 1
execute if score #ctrl_pillar_type jkpof.int matches 4.. run scoreboard players set #ctrl_pillar_type jkpof.int 0

execute if score #ctrl_pillar_type jkpof.int matches 0 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{text: "不同", color: "aqua"}, {text: "随机", color: "yellow"}], item: {id: "purpur_pillar"}}
execute if score #ctrl_pillar_type jkpof.int matches 1 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{text: "相同", color: "white"}, {text: "随机", color: "yellow"}], item: {id: "quartz_pillar"}}
execute if score #ctrl_pillar_type jkpof.int matches 2 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{translate: "block.minecraft.bedrock", color: "white"}], item: {id: "bedrock"}}
execute if score #ctrl_pillar_type jkpof.int matches 3 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_pillar_type, limit=1] {CustomName: [{translate: "block.minecraft.air", color: "white"}], item: {id: "bucket"}}
