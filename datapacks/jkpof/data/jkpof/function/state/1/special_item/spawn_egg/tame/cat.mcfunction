# 分数
scoreboard players reset @s jkpof.spawn_egg.cat
# 找到
tag @e[type=cat, tag=!jkpof_tame_ed, limit=1, sort=nearest] add jkpof_tame
# 认主
data modify entity @e[type=cat, tag=jkpof_tame, limit=1] Owner set from entity @s UUID
# 项圈颜色
execute store result score #collar_color jkpof.int run random value 0..15
execute as @e[type=cat, tag=jkpof_tame, limit=1] store result entity @s CollarColor byte 1 run scoreboard players get #collar_color jkpof.int
# 清理标签
tag @e[type=cat, tag=!jkpof_tame_ed] add jkpof_tame_ed
tag @e[type=cat, tag=jkpof_tame] remove jkpof_tame
