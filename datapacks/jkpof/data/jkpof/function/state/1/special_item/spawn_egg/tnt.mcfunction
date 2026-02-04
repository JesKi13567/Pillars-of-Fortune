# 分数
scoreboard players reset @s jkpof.spawn_egg.bat
# 找到
tag @e[type=tnt, tag=!jkpof_spawn_ed, limit=1, sort=nearest] add jkpof_spawn
scoreboard players operation @e[type=tnt, tag=jkpof_spawn] jkpof.id = @s jkpof.id
data modify entity @e[type=tnt, tag=jkpof_spawn, limit=1] owner set from entity @s UUID
# 清理标签
tag @e[type=tnt, tag=!jkpof_spawn_ed] add jkpof_spawn_ed
tag @e[type=tnt, tag=jkpof_spawn] remove jkpof_spawn
