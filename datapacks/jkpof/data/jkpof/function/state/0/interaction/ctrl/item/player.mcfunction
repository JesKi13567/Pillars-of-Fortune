scoreboard players add #ctrl_item_player jkpof.int 1
execute if score #ctrl_item_player jkpof.int matches 2.. run scoreboard players set #ctrl_item_player jkpof.int 0

execute if score #ctrl_item_player jkpof.int matches 0 run data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_item_player] {CustomName: {text: "不同", color: "yellow"}, item: {count: 1, id: "raw_gold"}}
execute if score #ctrl_item_player jkpof.int matches 1 run data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_item_player] {CustomName: {text: "相同", color: "aqua"}, item: {count: 1, id: "diamond"}}
