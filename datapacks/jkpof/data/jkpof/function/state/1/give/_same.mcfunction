# 个数（随机）
execute if score #ctrl_item_count_order jkpof.int matches 3 store result score #item_count jkpof.int run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 store result score #item_count jkpof.int run random value 1..8
execute if score #ctrl_item_count_order jkpof.int matches 3..4 run scoreboard players operation @a[scores={jkpof.state=2}] jkpof.item.count = #item_count jkpof.int

# 附赠
execute if score #event_prop_supply.count.enchanted_book jkpof.int matches 1.. as @r[scores={jkpof.state=2}] run loot give @a[scores={jkpof.state=2}] loot {functions: [{function: "set_components", components: {max_stack_size: 64}}, {function: "set_count", count: {type: "score", target: "this", score: "jkpof.item.count"}}], pools: [{rolls: 1, entries: [{type: "loot_table", value: "jkpof:item/64/enchanted_book"}]}]}
execute if score #event_prop_supply.count.potion jkpof.int matches 1.. as @r[scores={jkpof.state=2}] run loot give @a[scores={jkpof.state=2}] loot {functions: [{function: "set_components", components: {max_stack_size: 64}}, {function: "set_count", count: {type: "score", target: "this", score: "jkpof.item.count"}}], pools: [{rolls: 1, entries: [{type: "loot_table", value: "jkpof:item/64/potion"}]}]}

# 道具
execute if score #is_prop jkpof.int matches 1 store result score #item_order jkpof.int run random value 1..21
execute if score #is_prop jkpof.int matches 1 unless score #ctrl_lang jkpof.int matches 2 if score #item_order jkpof.int matches 1 as @r[scores={jkpof.state=2}] run loot give @a[scores={jkpof.state=2}] loot jkpof:item/prop/death_note/zh
execute if score #is_prop jkpof.int matches 1 if score #ctrl_lang jkpof.int matches 2 if score #item_order jkpof.int matches 1 as @r[scores={jkpof.state=2}] run loot give @a[scores={jkpof.state=2}] loot jkpof:item/prop/death_note/en
execute if score #is_prop jkpof.int matches 1 if score #item_order jkpof.int matches 2 as @r[scores={jkpof.state=2}] run loot give @a[scores={jkpof.state=2}] loot jkpof:item/prop/creative
execute if score #is_prop jkpof.int matches 1 if score #item_order jkpof.int matches 3..21 as @r[scores={jkpof.state=2}] run loot give @a[scores={jkpof.state=2}] loot jkpof:item/prop/common

# 非道具
execute unless score #is_prop jkpof.int matches 1 as @r[scores={jkpof.state=2}] run loot give @a[scores={jkpof.state=2}] loot jkpof:item/main
