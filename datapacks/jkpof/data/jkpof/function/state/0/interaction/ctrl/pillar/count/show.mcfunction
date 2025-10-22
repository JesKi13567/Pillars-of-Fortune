execute if score #ctrl_pillar_count_order jkpof.int matches 0 run scoreboard players set #ctrl_pillar_count_num jkpof.int 9
execute if score #ctrl_pillar_count_order jkpof.int matches 1 run scoreboard players set #ctrl_pillar_count_num jkpof.int 8
execute if score #ctrl_pillar_count_order jkpof.int matches 2 run scoreboard players set #ctrl_pillar_count_num jkpof.int 5
execute if score #ctrl_pillar_count_order jkpof.int matches 3 run scoreboard players set #ctrl_pillar_count_num jkpof.int 4

execute if score #ctrl_pillar_count_order jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "9", color: "yellow"}
execute if score #ctrl_pillar_count_order jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "8", color: "yellow"}
execute if score #ctrl_pillar_count_order jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "5", color: "yellow"}
execute if score #ctrl_pillar_count_order jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {text: "4", color: "yellow"}

data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value [{text: "需要 ", color: "yellow"}, {text: "2~", color: "gold"}, {score: {name: "#ctrl_pillar_count_num", objective: "jkpof.int"}, color: "gold"}, " 人。"]

function jkpof:state/0/interaction/ctrl/pillar/distance/show
