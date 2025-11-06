scoreboard players add #ctrl_locator_bar jkpof.int 1
execute if score #ctrl_locator_bar jkpof.int matches 2.. run scoreboard players set #ctrl_locator_bar jkpof.int 0

execute if score #ctrl_locator_bar jkpof.int matches 0 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_locator_bar, limit=1] {CustomName: {text: "关闭", color: "yellow"}, item: {id: "barrier"}}
execute if score #ctrl_locator_bar jkpof.int matches 1 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_locator_bar, limit=1] {CustomName: {text: "开启", color: "yellow"}, item: {id: "compass"}}
