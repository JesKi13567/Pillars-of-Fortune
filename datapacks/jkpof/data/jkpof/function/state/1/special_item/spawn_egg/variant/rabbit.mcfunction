# 分数
scoreboard players reset @s jkpof.spawn_egg.rabbit
# 找到
tag @e[type=rabbit, tag=!jkpof_variant_ed, limit=1, sort=nearest] add jkpof_variant
# 变种
execute store result score #entity_variant jkpof.int run random value 0..7
execute if score #entity_variant jkpof.int matches 0 run data modify entity @e[type=rabbit, tag=jkpof_variant, limit=1] RabbitType set value 0
execute if score #entity_variant jkpof.int matches 1 run data modify entity @e[type=rabbit, tag=jkpof_variant, limit=1] RabbitType set value 1
execute if score #entity_variant jkpof.int matches 2 run data modify entity @e[type=rabbit, tag=jkpof_variant, limit=1] RabbitType set value 2
execute if score #entity_variant jkpof.int matches 3 run data modify entity @e[type=rabbit, tag=jkpof_variant, limit=1] RabbitType set value 3
execute if score #entity_variant jkpof.int matches 4 run data modify entity @e[type=rabbit, tag=jkpof_variant, limit=1] RabbitType set value 4
execute if score #entity_variant jkpof.int matches 5 run data modify entity @e[type=rabbit, tag=jkpof_variant, limit=1] RabbitType set value 5
execute if score #entity_variant jkpof.int matches 6 run data modify entity @e[type=rabbit, tag=jkpof_variant, limit=1] RabbitType set value 99
execute if score #entity_variant jkpof.int matches 7 run data modify entity @e[type=rabbit, tag=jkpof_variant, limit=1] CustomName set value "Toast"
execute if score #entity_variant jkpof.int matches 7 run scoreboard players operation @e[type=rabbit, tag=jkpof_variant] jkpof.id = @s jkpof.id
# 清理标签
tag @e[type=rabbit, tag=!jkpof_variant_ed] add jkpof_variant_ed
tag @e[type=rabbit, tag=jkpof_variant] remove jkpof_variant
