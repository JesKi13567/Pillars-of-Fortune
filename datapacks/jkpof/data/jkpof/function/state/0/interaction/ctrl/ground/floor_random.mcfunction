scoreboard players add #ctrl_ground_floor_random jkpof.int 1
execute if score #ctrl_ground_floor_random jkpof.int matches 2.. run scoreboard players set #ctrl_ground_floor_random jkpof.int 0

execute if score #ctrl_ground_floor_random jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {text: "否", color: "yellow"}
execute if score #ctrl_ground_floor_random jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor_random, limit=1] text set value {text: "是", color: "yellow"}
