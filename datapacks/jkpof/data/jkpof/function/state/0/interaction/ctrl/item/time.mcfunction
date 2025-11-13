scoreboard players add #ctrl_item_time jkpof.int 1
execute if score #ctrl_item_time jkpof.int matches 11.. run scoreboard players set #ctrl_item_time jkpof.int 1

data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_time, limit=1] text set value {score: {name: "#ctrl_item_time", objective: "jkpof.int"}, color: "yellow"}
