# 个数（随机）
execute if score #ctrl_item_count_order jkpof.int matches 3 as @a[scores={jkpof.state=2}] store result score @s jkpof.item.count run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 as @a[scores={jkpof.state=2}] store result score @s jkpof.item.count run random value 1..8

# 分数
execute if score #is_prop jkpof.int matches 0 as @a[scores={jkpof.state=2}] store result score @s jkpof.item.order run random value 1..1196
execute if score #is_prop jkpof.int matches 0 if score #ctrl_item_prop_chance jkpof.int matches 1 as @a[scores={jkpof.state=2, jkpof.item.order=23..}] if predicate {condition: "random_chance", chance: 0.01} store result score @s jkpof.item.order run random value 1..22
execute if score #is_prop jkpof.int matches 0 if score #ctrl_item_prop_chance jkpof.int matches 2 as @a[scores={jkpof.state=2, jkpof.item.order=23..}] if predicate {condition: "random_chance", chance: 0.02} store result score @s jkpof.item.order run random value 1..22
execute if score #is_prop jkpof.int matches 0 if score #ctrl_item_prop_chance jkpof.int matches 3 as @a[scores={jkpof.state=2, jkpof.item.order=23..}] if predicate {condition: "random_chance", chance: 0.03} store result score @s jkpof.item.order run random value 1..22
execute if score #is_prop jkpof.int matches 0 if score #ctrl_item_prop_chance jkpof.int matches 4 as @a[scores={jkpof.state=2, jkpof.item.order=23..}] if predicate {condition: "random_chance", chance: 0.04} store result score @s jkpof.item.order run random value 1..22
execute if score #is_prop jkpof.int matches 0 if score #ctrl_item_prop_chance jkpof.int matches 5 as @a[scores={jkpof.state=2, jkpof.item.order=23..}] if predicate {condition: "random_chance", chance: 0.05} store result score @s jkpof.item.order run random value 1..22
execute if score #is_prop jkpof.int matches 1 as @a[scores={jkpof.state=2}] store result score @s jkpof.item.order run random value 1..22

# 真正
execute if score #event_prop_supply.count.enchanted_book jkpof.int matches 1.. run function jkpof:state/1/give/extra {A: 'a', S: 's', I: 'enchanted_book'}
execute if score #event_prop_supply.count.potion jkpof.int matches 1.. run function jkpof:state/1/give/extra {A: 'a', S: 's', I: 'potion'}
function jkpof:state/1/give/real {A: 'a[', S: 's'}
