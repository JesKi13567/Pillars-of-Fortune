# 分数
$scoreboard players reset @s jkpof.spawn_egg.$(entity)
# 找到
$tag @e[type=$(entity), tag=!jkpof_variant_ed, limit=1, sort=nearest] add jkpof_variant
# 变种
execute store result score #entity_variant jkpof.int run random value 0..2
$execute if score #entity_variant jkpof.int matches 0 run data modify entity @e[type=$(entity), tag=jkpof_variant, limit=1] variant set value "temperate"
$execute if score #entity_variant jkpof.int matches 1 run data modify entity @e[type=$(entity), tag=jkpof_variant, limit=1] variant set value "cold"
$execute if score #entity_variant jkpof.int matches 2 run data modify entity @e[type=$(entity), tag=jkpof_variant, limit=1] variant set value "warm"
# 清理标签
$tag @e[type=$(entity), tag=!jkpof_variant_ed] add jkpof_variant_ed
$tag @e[type=$(entity), tag=jkpof_variant] remove jkpof_variant
