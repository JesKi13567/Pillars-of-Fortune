# 分数
scoreboard players reset @s jkpof.spawn_egg.parrot
# 找到
tag @n[type=parrot, tag=!jkpof_tame_ed] add jkpof_tame
# 认主
data modify entity @e[type=parrot, tag=jkpof_tame, limit=1] Owner set from entity @s UUID
# 清理标签
tag @e[type=parrot, tag=!jkpof_tame_ed] add jkpof_tame_ed
tag @e[type=parrot, tag=jkpof_tame] remove jkpof_tame
