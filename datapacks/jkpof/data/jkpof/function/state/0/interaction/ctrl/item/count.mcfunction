scoreboard players add #ctrl_item_count_order jkpof.int 1
execute if score #ctrl_item_count_order jkpof.int matches 5.. run scoreboard players set #ctrl_item_count_order jkpof.int 0

execute if score #ctrl_item_count_order jkpof.int matches 0 run scoreboard players set #ctrl_item_count_num jkpof.int 1
execute if score #ctrl_item_count_order jkpof.int matches 1 run scoreboard players set #ctrl_item_count_num jkpof.int 4
execute if score #ctrl_item_count_order jkpof.int matches 2 run scoreboard players set #ctrl_item_count_num jkpof.int 8

execute if score #ctrl_item_count_order jkpof.int matches 0..2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_count, limit=1] text set value {score: {name: "#ctrl_item_count_num", objective: "jkpof.int"}, color: "yellow"}

execute if score #ctrl_item_count_order jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_count, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.random", color: "yellow"}, " 1~4"]
execute if score #ctrl_item_count_order jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_count, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.random", color: "yellow"}, " 1~8"]
