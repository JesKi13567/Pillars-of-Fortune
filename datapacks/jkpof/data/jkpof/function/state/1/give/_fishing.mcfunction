scoreboard players reset @s jkpof.fishing

# 个数
execute if score #ctrl_item_count_order jkpof.int matches 0..2 run scoreboard players operation @s jkpof.item.count = #ctrl_item_count_num jkpof.int
execute if score #ctrl_item_count_order jkpof.int matches 3 store result score @s jkpof.item.count run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 store result score @s jkpof.item.count run random value 1..8

# 分数
execute store result score @s[scores={jkpof.item.is_prop=0}] jkpof.item.order run random value 1..1187
execute if score #ctrl_item_prop_chance jkpof.int matches 1 as @s[scores={jkpof.item.is_prop=0, jkpof.item.order=24..}] if predicate {condition: "random_chance", chance: 0.01} store result score @s jkpof.item.order run random value 1..23
execute if score #ctrl_item_prop_chance jkpof.int matches 2 as @s[scores={jkpof.item.is_prop=0, jkpof.item.order=24..}] if predicate {condition: "random_chance", chance: 0.02} store result score @s jkpof.item.order run random value 1..23
execute if score #ctrl_item_prop_chance jkpof.int matches 3 as @s[scores={jkpof.item.is_prop=0, jkpof.item.order=24..}] if predicate {condition: "random_chance", chance: 0.03} store result score @s jkpof.item.order run random value 1..23
execute if score #ctrl_item_prop_chance jkpof.int matches 4 as @s[scores={jkpof.item.is_prop=0, jkpof.item.order=24..}] if predicate {condition: "random_chance", chance: 0.04} store result score @s jkpof.item.order run random value 1..23
execute if score #ctrl_item_prop_chance jkpof.int matches 5 as @s[scores={jkpof.item.is_prop=0, jkpof.item.order=24..}] if predicate {condition: "random_chance", chance: 0.05} store result score @s jkpof.item.order run random value 1..23
execute store result score @s[scores={jkpof.item.is_prop=1..}] jkpof.item.order run random value 1..23
execute unless score #ctrl_lang jkpof.int matches 2 run scoreboard players set @s[scores={jkpof.item.order=1}] jkpof.item.order 0

execute if score #ctrl_ban_spawn_egg.ender_dragon jkpof.int matches 1 store result score @s[scores={jkpof.item.order=1013}] jkpof.item.order run random value 926..1010
execute if score #ctrl_ban_spawn_egg.warden jkpof.int matches 1 store result score @s[scores={jkpof.item.order=1011}] jkpof.item.order run random value 926..1010
execute if score #ctrl_ban_spawn_egg.wither jkpof.int matches 1 store result score @s[scores={jkpof.item.order=1012}] jkpof.item.order run random value 926..1010

# 应用
scoreboard players operation @e[type=fishing_bobber, tag=!jkpof] jkpof.item.count = @s jkpof.item.count
scoreboard players operation @e[type=fishing_bobber, tag=!jkpof] jkpof.item.order = @s jkpof.item.order
scoreboard players operation @e[type=fishing_bobber, tag=!jkpof] jkpof.item.extra.enchanted_book = @s jkpof.item.extra.enchanted_book
scoreboard players operation @e[type=fishing_bobber, tag=!jkpof] jkpof.item.extra.potion = @s jkpof.item.extra.potion
tag @e[type=fishing_bobber, tag=!jkpof] add jkpof

# 清理
scoreboard players remove @s[scores={jkpof.item.is_prop=1..}] jkpof.item.is_prop 1
scoreboard players remove @s[scores={jkpof.item.extra.enchanted_book=1..}] jkpof.item.extra.enchanted_book 1
scoreboard players remove @s[scores={jkpof.item.extra.potion=1..}] jkpof.item.extra.potion 1
