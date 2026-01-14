# 分数
scoreboard players reset @s jkpof.spawn_egg.wolf
# 找到
execute as @e[type=wolf] unless data entity @s Owner run tag @s add jkpof_tame
tag @e[type=wolf, tag=jkpof_tame, limit=1, sort=nearest] add jkpof_tame_real
# 认主
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1] Owner set from entity @s UUID
# 项圈颜色
execute store result score #collar_color jkpof.int run random value 0..15
execute as @e[type=wolf, tag=jkpof_tame_real, limit=1] store result entity @s CollarColor byte 1 run scoreboard players get #collar_color jkpof.int
# 狼变种
execute store result score @e[type=wolf, tag=jkpof_tame_real, limit=1] jkpof.int run random value 0..8
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=0}] variant set value "pale"
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=1}] variant set value "woods"
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=2}] variant set value "ashen"
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=3}] variant set value "black"
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=4}] variant set value "chestnut"
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=5}] variant set value "rusty"
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=6}] variant set value "spotted"
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=7}] variant set value "striped"
data modify entity @e[type=wolf, tag=jkpof_tame_real, limit=1, scores={jkpof.int=8}] variant set value "snowy"
# 清理标签
tag @e[type=wolf, tag=jkpof_tame] remove jkpof_tame
tag @e[type=wolf, tag=jkpof_tame_real] remove jkpof_tame_real
