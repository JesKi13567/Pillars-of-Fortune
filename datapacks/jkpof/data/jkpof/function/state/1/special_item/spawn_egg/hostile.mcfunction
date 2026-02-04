# 分数
$scoreboard players reset @s jkpof.spawn_egg.$(entity)
# 找到
$tag @e[type=$(entity), tag=!jkpof_hostile_ed] add jkpof_hostile
$scoreboard players operation @e[type=$(entity), tag=jkpof_hostile] jkpof.id = @s jkpof.id
# 清理标签
$tag @e[type=$(entity), tag=!jkpof_hostile_ed] add jkpof_hostile_ed
$tag @e[type=$(entity), tag=jkpof_hostile] remove jkpof_hostile
