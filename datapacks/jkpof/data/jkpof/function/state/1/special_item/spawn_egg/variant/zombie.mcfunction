# 分数
scoreboard players reset @s jkpof.spawn_egg.zombie
# 找到
tag @n[type=zombie, tag=!jkpof_variant_ed] add jkpof_variant
# 变种
execute store result score #entity_variant jkpof.int run random value 0..99
execute unless score #entity_variant jkpof.int matches 99 run scoreboard players operation @e[type=zombie, tag=jkpof_variant] jkpof.id = @s jkpof.id
execute if score #entity_variant jkpof.int matches 99 at @e[type=zombie, tag=jkpof_variant, limit=1] run summon giant
execute if score #entity_variant jkpof.int matches 99 run function jkpof:state/1/special_item/spawn_egg/place {entity: giant}
execute if score #entity_variant jkpof.int matches 99 run tp @e[type=zombie, tag=jkpof_variant, limit=1] 0 -200 0
# 清理标签
tag @e[type=zombie, tag=!jkpof_variant_ed] add jkpof_variant_ed
tag @e[type=zombie, tag=jkpof_variant] remove jkpof_variant
