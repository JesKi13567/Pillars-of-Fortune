# 自动人数（#ctrl_pillar_count_order = -1 & 队伍必定不启用 & 游戏开始前）
execute if score #players jkpof.int matches 9.. run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 0
execute if score #players jkpof.int matches 6..8 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 1
execute if score #players jkpof.int matches 5 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 2
execute if score #players jkpof.int matches 3..4 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 3
execute if score #players jkpof.int matches 2 run scoreboard players set #ctrl_pillar_count_order_real jkpof.int 4

function jkpof:state/0/interaction/ctrl/pillar/distance/show
