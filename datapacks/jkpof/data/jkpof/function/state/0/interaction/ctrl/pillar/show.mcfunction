# 柱子数
execute unless score #ctrl_pillar_count_order jkpof.int matches -1 run scoreboard players operation #ctrl_pillar_count_order_real jkpof.int = #ctrl_pillar_count_order jkpof.int
execute if score #ctrl_pillar_count_order_real jkpof.int matches 0 run scoreboard players set #ctrl_pillar_count_num jkpof.int 2
execute if score #ctrl_pillar_count_order_real jkpof.int matches 1 run scoreboard players set #ctrl_pillar_count_num jkpof.int 4
execute if score #ctrl_pillar_count_order_real jkpof.int matches 2 run scoreboard players set #ctrl_pillar_count_num jkpof.int 5
execute if score #ctrl_pillar_count_order_real jkpof.int matches 3 run scoreboard players set #ctrl_pillar_count_num jkpof.int 8
execute if score #ctrl_pillar_count_order_real jkpof.int matches 4 run scoreboard players set #ctrl_pillar_count_num jkpof.int 9
execute if score #ctrl_pillar_count_order_real jkpof.int matches 5 run scoreboard players set #ctrl_pillar_count_num jkpof.int 12

data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {score: {name: "#ctrl_pillar_count_num", objective: "jkpof.int"}, color: "yellow"}
execute if score #ctrl_team jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.play_tip.p1", color: "yellow"}, {text: "2~", color: "gold"}, {score: {name: "#ctrl_pillar_count_num", objective: "jkpof.int"}, color: "gold"}, {storage: "jk:pof", nbt: "txt.lobby.play_tip.p2.players"}]
execute if score #ctrl_team jkpof.int matches 1..2 run data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.play_tip.p2.teams", color: "yellow"}]
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_count, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.auto", color: "yellow"}
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_players, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.play_tip.auto", color: "yellow"}

# 队伍
execute if score #ctrl_team jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_team, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.bool.disabled.common", color: "yellow"}]
execute if score #ctrl_team jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_team, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.manual", color: "yellow"}, {storage: "jk:pof", nbt: "txt.lobby.const.settings.team.p3"}]
execute if score #ctrl_team jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_team, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.random", color: "yellow"}, {storage: "jk:pof", nbt: "txt.lobby.const.settings.team.p3"}]
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run scoreboard players set #ctrl_team jkpof.int 0
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_team, limit=1] text set value {storage: "jk:pof", nbt: "txt.lobby.global.invalid", color: "yellow"}

execute unless score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_ctrl_team, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.team.p1", color: "green"}]
execute if score #ctrl_pillar_count_order jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_ctrl_team, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.team.p1", color: "green"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.const.settings.team.p2"}]

function jkpof:state/0/interaction/lobby/structure

# 间距
execute if score #ctrl_pillar_distance jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_distance, limit=1] text set value {text: "<->", color: "yellow"}
execute if score #ctrl_pillar_distance jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_distance, limit=1] text set value {text: "<-->", color: "yellow"}
execute if score #ctrl_pillar_distance jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_distance, limit=1] text set value {text: "<--->", color: "yellow"}

# 高度
data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_height, limit=1] text set value {score: {name: "#ctrl_pillar_height", objective: "jkpof.int"}, color: "yellow"}
