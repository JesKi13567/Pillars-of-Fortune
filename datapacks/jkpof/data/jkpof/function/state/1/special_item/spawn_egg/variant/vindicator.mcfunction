# 分数
scoreboard players reset @s jkpof.spawn_egg.vindicator
# 找到
tag @e[type=vindicator, tag=!jkpof_variant_ed, limit=1, sort=nearest] add jkpof_variant
scoreboard players operation @e[type=vindicator, tag=jkpof_variant] jkpof.id = @s jkpof.id
# 变种
execute store result score #entity_variant jkpof.int run random value 0..1
execute if score #entity_variant jkpof.int matches 1 run data merge entity @e[type=vindicator, tag=jkpof_variant, limit=1] {CustomName: "Johnny", Johnny: true}
# 清理标签
tag @e[type=vindicator, tag=!jkpof_variant_ed] add jkpof_variant_ed
tag @e[type=vindicator, tag=jkpof_variant] remove jkpof_variant
