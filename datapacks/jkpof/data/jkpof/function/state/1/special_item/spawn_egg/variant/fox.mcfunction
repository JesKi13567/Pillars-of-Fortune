# 分数
scoreboard players reset @s jkpof.spawn_egg.fox
# 找到
tag @e[type=fox, tag=!jkpof_variant_ed, limit=1, sort=nearest] add jkpof_variant
# 变种
execute store result score #entity_variant jkpof.int run random value 0..1
execute if score #entity_variant jkpof.int matches 0 run data modify entity @e[type=fox, tag=jkpof_variant, limit=1] Type set value "red"
execute if score #entity_variant jkpof.int matches 1 run data modify entity @e[type=fox, tag=jkpof_variant, limit=1] Type set value "snow"
# 清理标签
tag @e[type=fox, tag=!jkpof_variant_ed] add jkpof_variant_ed
tag @e[type=fox, tag=jkpof_variant] remove jkpof_variant
