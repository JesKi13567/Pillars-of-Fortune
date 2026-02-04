# 分数
scoreboard players reset @s jkpof.spawn_egg.sheep
# 找到
tag @e[type=sheep, tag=!jkpof_variant_ed, limit=1, sort=nearest] add jkpof_variant
# 变种
execute store result score #entity_variant jkpof.int run random value -1..15
execute unless score #entity_variant jkpof.int matches -1 as @e[type=sheep, tag=jkpof_variant, limit=1] store result entity @s Color byte 1 run scoreboard players get #entity_variant jkpof.int
execute if score #entity_variant jkpof.int matches -1 run data modify entity @e[type=sheep, tag=jkpof_variant, limit=1] CustomName set value "jeb_"
# 清理标签
tag @e[type=sheep, tag=!jkpof_variant_ed] add jkpof_variant_ed
tag @e[type=sheep, tag=jkpof_variant] remove jkpof_variant
