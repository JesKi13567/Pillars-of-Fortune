# 分数
scoreboard players reset @s jkpof.spawn_egg.parrot
# 找到
execute as @e[type=parrot] unless data entity @s Owner run tag @s add jkpof_tame
tag @e[type=parrot, tag=jkpof_tame, limit=1, sort=nearest] add jkpof_tame_real
# 认主
data modify entity @e[type=parrot, tag=jkpof_tame_real, limit=1] Owner set from entity @s UUID
# 清理标签
tag @e[type=parrot, tag=jkpof_tame] remove jkpof_tame
tag @e[type=parrot, tag=jkpof_tame_real] remove jkpof_tame_real
