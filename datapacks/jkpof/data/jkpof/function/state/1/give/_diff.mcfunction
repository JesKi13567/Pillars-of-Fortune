# 个数（随机）
execute if score #ctrl_item_count_order jkpof.int matches 3 as @a[scores={jkpof.state=2}] store result score @s jkpof.item.count run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 as @a[scores={jkpof.state=2}] store result score @s jkpof.item.count run random value 1..8

# 种类
execute if score #event_prop_supply.chance.prop jkpof.int matches 4.. as @a[scores={jkpof.state=2}] store result score @s jkpof.item.order run random value 1..21
execute unless score #event_prop_supply.chance.prop jkpof.int matches 4.. as @a[scores={jkpof.state=2}] store result score @s jkpof.item.order run random value 1..1247

# 道具
execute as @a[scores={jkpof.state=2, jkpof.item.order=3..21}] run loot give @s loot jkpof:item/prop/common
execute unless score #ctrl_lang jkpof.int matches 2 as @a[scores={jkpof.state=2, jkpof.item.order=1}] run loot give @s loot jkpof:item/prop/death_note/zh
execute if score #ctrl_lang jkpof.int matches 2 as @a[scores={jkpof.state=2, jkpof.item.order=1}] run loot give @s loot jkpof:item/prop/death_note/en
execute as @a[scores={jkpof.state=2, jkpof.item.order=2}] run loot give @s loot jkpof:item/prop/creative

# 附赠
execute if score #event_prop_supply.count.enchanted_book jkpof.int matches 1.. as @a[scores={jkpof.state=2}] run loot give @s loot {functions: [{function: "set_components", components: {max_stack_size: 64}}, {function: "set_count", count: {type: "score", target: "this", score: "jkpof.item.count"}}], pools: [{rolls: 1, entries: [{type: "loot_table", value: "jkpof:item/64/enchanted_book"}]}]}
execute if score #event_prop_supply.count.potion jkpof.int matches 1.. as @a[scores={jkpof.state=2}] run loot give @s loot {functions: [{function: "set_components", components: {max_stack_size: 64}}, {function: "set_count", count: {type: "score", target: "this", score: "jkpof.item.count"}}], pools: [{rolls: 1, entries: [{type: "loot_table", value: "jkpof:item/64/potion"}]}]}

# 其他
execute as @a[scores={jkpof.state=2}] unless score @s jkpof.item.order matches 1..21 run loot give @s loot jkpof:item/main
