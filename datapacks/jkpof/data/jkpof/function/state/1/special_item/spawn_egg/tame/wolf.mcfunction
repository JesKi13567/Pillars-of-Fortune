# 分数
scoreboard players reset @s jkpof.spawn_egg.wolf
# 找到
tag @e[type=wolf, tag=!jkpof_tame_ed, limit=1, sort=nearest] add jkpof_tame
scoreboard players operation @e[type=wolf, tag=jkpof_tame] jkpof.id = @s jkpof.id
# 认主
data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] Owner set from entity @s UUID
# 项圈颜色
execute store result score #collar_color jkpof.int run random value 0..15
execute as @e[type=wolf, tag=jkpof_tame, limit=1] store result entity @s CollarColor byte 1 run scoreboard players get #collar_color jkpof.int
# 变种
execute store result score #entity_variant jkpof.int run random value 0..8
execute if score #entity_variant jkpof.int matches 0 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "pale"
execute if score #entity_variant jkpof.int matches 1 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "woods"
execute if score #entity_variant jkpof.int matches 2 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "ashen"
execute if score #entity_variant jkpof.int matches 3 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "black"
execute if score #entity_variant jkpof.int matches 4 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "chestnut"
execute if score #entity_variant jkpof.int matches 5 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "rusty"
execute if score #entity_variant jkpof.int matches 6 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "spotted"
execute if score #entity_variant jkpof.int matches 7 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "striped"
execute if score #entity_variant jkpof.int matches 8 run data modify entity @e[type=wolf, tag=jkpof_tame, limit=1] variant set value "snowy"
# 清理标签
tag @e[type=wolf, tag=!jkpof_tame_ed] add jkpof_tame_ed
tag @e[type=wolf, tag=jkpof_tame] remove jkpof_tame
