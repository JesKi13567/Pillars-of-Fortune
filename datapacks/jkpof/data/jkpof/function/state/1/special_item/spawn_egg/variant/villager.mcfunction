# 分数
scoreboard players reset @s jkpof.spawn_egg.villager
# 找到
tag @e[type=villager, tag=!jkpof_variant_ed, limit=1, sort=nearest] add jkpof_variant
# 变种
execute store result score #entity_variant jkpof.int run random value -1..6
execute if score #entity_variant jkpof.int matches -1 run loot spawn 0 800 0 kill @s
execute if score #entity_variant jkpof.int matches -1 at @e[type=villager, tag=jkpof_variant, limit=1] summon mannequin positioned 0 800 0 run data modify entity @s profile.name set from entity @e[type=item, distance=..1, limit=1] Item.components."minecraft:profile".name
execute if score #entity_variant jkpof.int matches -1 as @e[type=mannequin, tag=!jkpof_variant_ed] run data modify entity @s CustomName set from entity @s profile.name
execute if score #entity_variant jkpof.int matches -1 as @e[type=mannequin, tag=!jkpof_variant_ed] run data merge entity @s {CustomNameVisible: true, description: "20 ♥"}
execute if score #entity_variant jkpof.int matches -1 positioned 0 800 0 run kill @e[type=item, distance=..1]
execute if score #entity_variant jkpof.int matches -1 run tp @e[type=villager, tag=jkpof_variant, limit=1] 0 -200 0
execute if score #entity_variant jkpof.int matches 0 run data modify entity @e[type=villager, tag=jkpof_variant, limit=1] VillagerData.type set value "desert"
execute if score #entity_variant jkpof.int matches 1 run data modify entity @e[type=villager, tag=jkpof_variant, limit=1] VillagerData.type set value "jungle"
execute if score #entity_variant jkpof.int matches 2 run data modify entity @e[type=villager, tag=jkpof_variant, limit=1] VillagerData.type set value "plains"
execute if score #entity_variant jkpof.int matches 3 run data modify entity @e[type=villager, tag=jkpof_variant, limit=1] VillagerData.type set value "savanna"
execute if score #entity_variant jkpof.int matches 4 run data modify entity @e[type=villager, tag=jkpof_variant, limit=1] VillagerData.type set value "snow"
execute if score #entity_variant jkpof.int matches 5 run data modify entity @e[type=villager, tag=jkpof_variant, limit=1] VillagerData.type set value "swamp"
execute if score #entity_variant jkpof.int matches 6 run data modify entity @e[type=villager, tag=jkpof_variant, limit=1] VillagerData.type set value "taiga"
# 清理标签
tag @e[type=villager, tag=!jkpof_variant_ed] add jkpof_variant_ed
tag @e[type=mannequin, tag=!jkpof_variant_ed] add jkpof_variant_ed
tag @e[type=villager, tag=jkpof_variant] remove jkpof_variant
