# 分数
scoreboard players reset @s jkpof.spawn_egg.pillager
# 找到
tag @e[type=pillager, tag=!jkpof_variant_ed, limit=1, sort=nearest] add jkpof_variant
# 变种
execute store result score #entity_variant jkpof.int run random value 0..9
execute unless score #entity_variant jkpof.int matches 9 run scoreboard players operation @e[type=pillager, tag=jkpof_variant] jkpof.id = @s jkpof.id
execute if score #entity_variant jkpof.int matches 9 at @e[type=pillager, tag=jkpof_variant, limit=1] run summon illusioner
execute if score #entity_variant jkpof.int matches 9 run function jkpof:state/1/special_item/spawn_egg/place {entity: illusioner}
execute if score #entity_variant jkpof.int matches 9 run tp @e[type=pillager, tag=jkpof_variant, limit=1] 0 -200 0
# 清理标签
tag @e[type=pillager, tag=!jkpof_variant_ed] add jkpof_variant_ed
tag @e[type=pillager, tag=jkpof_variant] remove jkpof_variant
