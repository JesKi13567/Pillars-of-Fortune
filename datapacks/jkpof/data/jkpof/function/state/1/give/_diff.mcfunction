# 个数（随机）
execute if score #ctrl_item_count_order jkpof.int matches 3 as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.count run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.count run random value 1..8

# 种类
execute if score #supply_real jkpof.int matches 4.. as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.order run random value 1..16
execute unless score #supply_real jkpof.int matches 4.. as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.order run random value 1..1246

# 道具
execute as @a[scores={jkpof.state=2, jkpof.item.order=2..16}, gamemode=survival] run loot give @s loot jkpof:item/prop/common
execute unless score #ctrl_lang jkpof.int matches 2 as @a[scores={jkpof.state=2, jkpof.item.order=1}, gamemode=survival] run loot give @s loot jkpof:item/prop/death_note/zh
execute if score #ctrl_lang jkpof.int matches 2 as @a[scores={jkpof.state=2, jkpof.item.order=1}, gamemode=survival] run loot give @s loot jkpof:item/prop/death_note/en

# 其他
execute as @a[scores={jkpof.state=2}, gamemode=survival] unless score @s jkpof.item.order matches 1..16 run loot give @s loot jkpof:item/main
