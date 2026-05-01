# 自动人数（若有，则队伍必定不启用）
execute if score #ctrl_pillar_count_order jkpof.int matches 1 run scoreboard players operation #ctrl_pillar_count_order_real jkpof.int = #players jkpof.int
execute unless score #ctrl_pillar_count_order_real jkpof.int matches 2..12 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 2

# 随机队伍
execute if score #ctrl_team jkpof.int matches 2 run function jkpof:state/1/random_team/global

# 柱子位置
kill @e[type=marker, tag=jkpof_player_spawn]
#summon marker 0 40 0 {Tags: ["jkpof", "jkpof_player_spawn", "C"]}

execute if score #ctrl_pillar_count_order_real jkpof.int matches 2..8 if score #ctrl_pillar_distance jkpof.int matches 0 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/2a4a8 {n1: 7, n2: 5}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 2..8 if score #ctrl_pillar_distance jkpof.int matches 1 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/2a4a8 {n1: 12, n2: 8}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 2..8 if score #ctrl_pillar_distance jkpof.int matches 2 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/2a4a8 {n1: 17, n2: 12}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 12 if score #ctrl_pillar_distance jkpof.int matches 0 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/12 {n1: 10, n2: 3, n3: 8}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 12 if score #ctrl_pillar_distance jkpof.int matches 1 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/12 {n1: 12, n2: 4, n3: 9}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 12 if score #ctrl_pillar_distance jkpof.int matches 2 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/12 {n1: 17, n2: 6, n3: 12}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 3 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/3
execute if score #ctrl_pillar_count_order_real jkpof.int matches 5 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/5
execute if score #ctrl_pillar_count_order_real jkpof.int matches 6 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/6
execute if score #ctrl_pillar_count_order_real jkpof.int matches 7 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/7
execute if score #ctrl_pillar_count_order_real jkpof.int matches 9 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/9
execute if score #ctrl_pillar_count_order_real jkpof.int matches 10 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/10
execute if score #ctrl_pillar_count_order_real jkpof.int matches 11 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/11

execute as @e[type=marker, tag=jkpof_player_spawn, tag=!C] at @s run rotate @s facing 0 ~ 0

execute if score #ctrl_upside_down jkpof.int matches 0 run scoreboard players operation #height_temp jkpof.int = #ctrl_pillar_height jkpof.int
execute if score #ctrl_upside_down jkpof.int matches 1 run scoreboard players set #height_temp jkpof.int 50
execute if score #ctrl_upside_down jkpof.int matches 1 run scoreboard players operation #height_temp jkpof.int -= #ctrl_pillar_height jkpof.int

execute store result storage jk:pof data.pillar.h int 1 run scoreboard players get #height_temp jkpof.int
function jkpof:state/0/interaction/ctrl/pillar/height/real with storage jk:pof data.pillar
