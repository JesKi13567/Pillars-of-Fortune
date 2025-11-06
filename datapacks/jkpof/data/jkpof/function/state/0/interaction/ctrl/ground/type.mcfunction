scoreboard players add #ctrl_ground_type jkpof.int 1
execute if score #ctrl_ground_type jkpof.int matches 3.. run scoreboard players set #ctrl_ground_type jkpof.int 0

execute if score #ctrl_ground_type jkpof.int matches 0 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] {CustomName: {text: "随机", color: "yellow"}, item: {id: "chiseled_stone_bricks"}}
execute if score #ctrl_ground_type jkpof.int matches 1 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] {CustomName: [{translate: "block.minecraft.bedrock", color: "white"}], item: {id: "bedrock"}}
execute if score #ctrl_ground_type jkpof.int matches 2 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_ground_type, limit=1] {CustomName: [{translate: "block.minecraft.air", color: "white"}], item: {id: "bucket"}}
