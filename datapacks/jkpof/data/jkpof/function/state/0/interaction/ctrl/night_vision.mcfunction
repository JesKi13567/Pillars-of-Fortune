scoreboard players add #ctrl_night_vision jkpof.int 1
execute if score #ctrl_night_vision jkpof.int matches 2.. run scoreboard players set #ctrl_night_vision jkpof.int 0

execute if score #ctrl_night_vision jkpof.int matches 0 run data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_night_vision] {CustomName: {text: "关闭", color: "yellow"}, Glowing: false}
execute if score #ctrl_night_vision jkpof.int matches 1 run data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_night_vision] {CustomName: {text: "开启", color: "yellow"}, Glowing: true}
