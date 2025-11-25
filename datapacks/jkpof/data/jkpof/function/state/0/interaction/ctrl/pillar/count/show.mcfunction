# 显示
execute unless score #ctrl_pillar_count_order jkpof.int matches -1 run scoreboard players operation #ctrl_pillar_count_order_real jkpof.int = #ctrl_pillar_count_order jkpof.int
execute if score #ctrl_pillar_count_order_real jkpof.int matches 0 run scoreboard players set #ctrl_pillar_count_num jkpof.int 9
execute if score #ctrl_pillar_count_order_real jkpof.int matches 1 run scoreboard players set #ctrl_pillar_count_num jkpof.int 8
execute if score #ctrl_pillar_count_order_real jkpof.int matches 2 run scoreboard players set #ctrl_pillar_count_num jkpof.int 5
execute if score #ctrl_pillar_count_order_real jkpof.int matches 3 run scoreboard players set #ctrl_pillar_count_num jkpof.int 4
execute if score #ctrl_pillar_count_order_real jkpof.int matches 4 run scoreboard players set #ctrl_pillar_count_num jkpof.int 2

data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {score: {name: "#ctrl_pillar_count_num", objective: "jkpof.int"}, color: "yellow"}
execute if score #ctrl_team jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.play_tip.p1", color: "yellow"}, {text: "2~", color: "gold"}, {score: {name: "#ctrl_pillar_count_num", objective: "jkpof.int"}, color: "gold"}, {storage: "jk:pof", nbt: "txt.lobby.play_tip.p2.players"}]
execute if score #ctrl_team jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.play_tip.p1", color: "yellow"}, {text: "2~", color: "gold"}, {score: {name: "#ctrl_pillar_count_num", objective: "jkpof.int"}, color: "gold"}, {storage: "jk:pof", nbt: "txt.lobby.play_tip.p2.teams"}]
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.auto", color: "yellow"}
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.play_tip.auto", color: "yellow"}

# 队伍
execute if score #ctrl_team jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_team, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.bool.disabled.common", color: "yellow"}
execute if score #ctrl_team jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_team, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.bool.enabled.common", color: "yellow"}
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run scoreboard players set #ctrl_team jkpof.int 0
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_team, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}

fill -11 63 -95 11 67 -83 lime_concrete replace #wool
execute if score #ctrl_team jkpof.int matches 1 positioned 10 63 -95 run fill ~ ~ ~ ~1 ~4 ~11 red_wool replace lime_concrete
execute if score #ctrl_team jkpof.int matches 1 positioned 7 63 -95 run fill ~ ~ ~ ~1 ~4 ~11 blue_wool replace lime_concrete
execute if score #ctrl_team jkpof.int matches 1 if score #ctrl_pillar_count_order_real jkpof.int matches 0..3 positioned 1 63 -95 run fill ~ ~ ~ ~1 ~4 ~12 yellow_wool replace lime_concrete
execute if score #ctrl_team jkpof.int matches 1 if score #ctrl_pillar_count_order_real jkpof.int matches 0..2 positioned -2 63 -95 run fill ~ ~ ~ ~1 ~4 ~12 cyan_wool replace lime_concrete
execute if score #ctrl_team jkpof.int matches 1 if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 positioned -5 63 -95 run fill ~ ~ ~ ~1 ~4 ~12 white_wool replace lime_concrete
execute if score #ctrl_team jkpof.int matches 1 if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 positioned -8 63 -95 run fill ~ ~ ~ ~1 ~4 ~12 pink_wool replace lime_concrete
execute if score #ctrl_team jkpof.int matches 1 if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 positioned -11 63 -95 run fill ~ ~ ~ ~1 ~4 ~12 gray_wool replace lime_concrete
execute if score #ctrl_team jkpof.int matches 1 if score #ctrl_pillar_count_order_real jkpof.int matches 0 positioned 4 63 -95 run fill ~ ~ ~ ~1 ~4 ~12 orange_wool replace lime_concrete

function jkpof:state/0/interaction/ctrl/pillar/distance/show
