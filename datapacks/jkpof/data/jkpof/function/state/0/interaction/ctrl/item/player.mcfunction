scoreboard players add #ctrl_item_player jkpof.int 1
execute if score #ctrl_item_player jkpof.int matches 2.. run scoreboard players set #ctrl_item_player jkpof.int 0

execute if score #ctrl_item_player jkpof.int matches 0 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_item_player, limit=1] {CustomName: {text: "不同", color: "yellow"}, item: {id: "raw_gold"}}
execute if score #ctrl_item_player jkpof.int matches 1 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_item_player, limit=1] {CustomName: {text: "相同", color: "aqua"}, item: {id: "diamond"}}
