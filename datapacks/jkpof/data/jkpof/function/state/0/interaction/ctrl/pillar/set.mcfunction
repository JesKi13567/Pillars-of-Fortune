# 自动人数（若有，则队伍必定不启用）
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 2 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 0
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 3..4 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 1
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 5 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 2
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 6..8 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 3
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 9 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 4
execute if score #ctrl_pillar_count_order jkpof.int matches -1 if score #players jkpof.int matches 10.. run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 5

# 随机队伍
execute if score #ctrl_team jkpof.int matches 2 run function jkpof:state/1/random_team/global

# 柱子位置
kill @e[type=marker, tag=jkpof_player_spawn]
execute unless score #ctrl_pillar_count_order_real jkpof.int matches 0..1 unless score #ctrl_pillar_count_order_real jkpof.int matches 3 unless score #ctrl_pillar_count_order_real jkpof.int matches 5 run summon marker 0 40 0 {Tags: ["jkpof", "jkpof_player_spawn", "C"]}

execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..4 if score #ctrl_pillar_distance jkpof.int matches 0 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/0_4 {n1: 7, n2: 5}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..4 if score #ctrl_pillar_distance jkpof.int matches 1 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/0_4 {n1: 12, n2: 8}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..4 if score #ctrl_pillar_distance jkpof.int matches 2 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/0_4 {n1: 17, n2: 12}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 5 if score #ctrl_pillar_distance jkpof.int matches 0 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/5 {n1: 10, n2: 3, n3: 8}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 5 if score #ctrl_pillar_distance jkpof.int matches 1 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/5 {n1: 12, n2: 4, n3: 9}
execute if score #ctrl_pillar_count_order_real jkpof.int matches 5 if score #ctrl_pillar_distance jkpof.int matches 2 run function jkpof:state/0/interaction/ctrl/pillar/distance/real/5 {n1: 17, n2: 6, n3: 12}

execute as @e[type=marker, tag=jkpof_player_spawn, tag=!C] at @s run rotate @s facing 0 ~ 0

execute store result storage jk:pof data.pillar_height.h int 1 run scoreboard players get #ctrl_pillar_height jkpof.int
function jkpof:state/0/interaction/ctrl/pillar/height/real with storage jk:pof data.pillar_height
