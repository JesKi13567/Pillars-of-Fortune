execute unless score #ctrl_pillar_count_order jkpof.int matches -1 run scoreboard players operation #ctrl_pillar_count_order_real jkpof.int = #ctrl_pillar_count_order jkpof.int
execute if score #ctrl_pillar_count_order_real jkpof.int matches 0 run scoreboard players set #ctrl_pillar_count_num jkpof.int 9
execute if score #ctrl_pillar_count_order_real jkpof.int matches 1 run scoreboard players set #ctrl_pillar_count_num jkpof.int 8
execute if score #ctrl_pillar_count_order_real jkpof.int matches 2 run scoreboard players set #ctrl_pillar_count_num jkpof.int 5
execute if score #ctrl_pillar_count_order_real jkpof.int matches 3 run scoreboard players set #ctrl_pillar_count_num jkpof.int 4
execute if score #ctrl_pillar_count_order_real jkpof.int matches 4 run scoreboard players set #ctrl_pillar_count_num jkpof.int 2

execute if score #ctrl_pillar_count_order_real jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "9", color: "yellow"}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "8", color: "yellow"}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "5", color: "yellow"}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "4", color: "yellow"}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "2", color: "yellow"}
execute unless score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value [{text: "需要 ", color: "yellow"}, {text: "2~", color: "gold"}, {score: {name: "#ctrl_pillar_count_num", objective: "jkpof.int"}, color: "gold"}, " 人。"]

execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 9.. run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 0
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 6..8 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 1
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 5 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 2
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 3..4 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 3
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 2 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 4

execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "自动", color: "yellow"}
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value {text: "自动分配人数。", color: "yellow"}

function jkpof:state/0/interaction/ctrl/pillar/distance/show
