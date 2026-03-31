# 个数（随机）
execute if score #ctrl_item_count_order jkpof.int matches 3 store result score #item_count jkpof.int run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 store result score #item_count jkpof.int run random value 1..8
scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.count = #item_count jkpof.int

# 种类
execute if score #supply_real jkpof.int matches 4.. store result score #item_order jkpof.int run random value 1..16
execute unless score #supply_real jkpof.int matches 4.. store result score #item_order jkpof.int run random value 1..1262

# 道具
execute if score #item_order jkpof.int matches 2..16 as @r[scores={jkpof.state=2}, gamemode=survival] run loot give @a[scores={jkpof.state=2}, gamemode=survival] loot jkpof:item/prop/common
execute unless score #ctrl_lang jkpof.int matches 2 if score #item_order jkpof.int matches 1 as @r[scores={jkpof.state=2}, gamemode=survival] run loot give @a[scores={jkpof.state=2}, gamemode=survival] loot jkpof:item/prop/death_note/zh
execute if score #ctrl_lang jkpof.int matches 2 if score #item_order jkpof.int matches 1 as @r[scores={jkpof.state=2}, gamemode=survival] run loot give @a[scores={jkpof.state=2}, gamemode=survival] loot jkpof:item/prop/death_note/en

# 其他
execute unless score #item_order jkpof.int matches 1..16 as @r[scores={jkpof.state=2}, gamemode=survival] run loot give @a[scores={jkpof.state=2}, gamemode=survival] loot jkpof:item/main
