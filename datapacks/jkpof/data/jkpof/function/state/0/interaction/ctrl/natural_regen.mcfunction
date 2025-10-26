scoreboard players add #ctrl_natural_regen jkpof.int 1
execute if score #ctrl_natural_regen jkpof.int matches 2.. run scoreboard players set #ctrl_natural_regen jkpof.int 0

execute if score #ctrl_natural_regen jkpof.int matches 0 run data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_natural_regen] {CustomName: {text: "关闭", color: "yellow"}, item: {id: "barrier"}}
execute if score #ctrl_natural_regen jkpof.int matches 1 run data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_natural_regen] {CustomName: {text: "开启", color: "yellow"}, item: {id: "golden_apple"}}
