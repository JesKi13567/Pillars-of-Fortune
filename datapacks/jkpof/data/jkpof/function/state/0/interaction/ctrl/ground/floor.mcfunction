scoreboard players add #ctrl_ground_floor jkpof.int 1
execute if score #ctrl_ground_floor jkpof.int matches 6.. run scoreboard players set #ctrl_ground_floor jkpof.int 1

data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_ground_floor, limit=1] text set value {score: {name: "#ctrl_ground_floor", objective: "jkpof.int"}, color: "yellow"}
