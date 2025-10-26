scoreboard players add #ctrl_vote jkpof.int 1
execute if score #ctrl_vote jkpof.int matches 2.. run scoreboard players set #ctrl_vote jkpof.int 0

execute if score #ctrl_vote jkpof.int matches 0 run data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_vote] {CustomName: {text: "关闭", color: "yellow"}, item: {id: "barrier"}}
execute if score #ctrl_vote jkpof.int matches 1 run data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_vote] {CustomName: {text: "开启", color: "yellow"}, item: {id: "target"}}
