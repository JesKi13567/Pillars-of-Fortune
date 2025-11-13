execute if score #ctrl_pillar_distance jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_distance, limit=1] text set value {text: "<->", color: "yellow"}
execute if score #ctrl_pillar_distance jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_distance, limit=1] text set value {text: "<-->", color: "yellow"}
execute if score #ctrl_pillar_distance jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_pillar_distance, limit=1] text set value {text: "<--->", color: "yellow"}

kill @e[type=marker, tag=jkpof_player_spawn]
execute unless score #ctrl_pillar_count_order_real jkpof.int matches 1 unless score #ctrl_pillar_count_order_real jkpof.int matches 3..4 run summon marker 0 30 0 {Tags: ["jkpof", "jkpof_player_spawn", "C"], data: {name: "C"}}

execute if score #ctrl_pillar_distance jkpof.int matches 0 run function jkpof:state/0/interaction/ctrl/pillar/distance/0 {n1: 7, n2: 5}
execute if score #ctrl_pillar_distance jkpof.int matches 1 run function jkpof:state/0/interaction/ctrl/pillar/distance/0 {n1: 12, n2: 8}
execute if score #ctrl_pillar_distance jkpof.int matches 2 run function jkpof:state/0/interaction/ctrl/pillar/distance/0 {n1: 17, n2: 12}

execute as @e[type=marker, tag=jkpof_player_spawn, tag=!C] at @s run rotate @s facing 0 ~ 0

function jkpof:state/0/interaction/ctrl/pillar/height/show
