# 计时
scoreboard players operation #time_res jkpof.int = #ctrl_item_time jkpof.int

# 个数（常量）
execute if score #ctrl_item_count_order jkpof.int matches 0..2 run scoreboard players operation @a[scores={jkpof.state=2}] jkpof.item.count = #ctrl_item_count_num jkpof.int

## 道具
scoreboard players set #is_prop jkpof.int 0

# 道具获取概率
execute if score #ctrl_item_prop_chance jkpof.int matches 0 store result score #is_prop.roll jkpof.int run random value 1..1247
execute if score #ctrl_item_prop_chance jkpof.int matches 0 if score #is_prop.roll jkpof.int matches 1..21 run scoreboard players set #is_prop jkpof.int 1
execute if score #ctrl_item_prop_chance jkpof.int matches 1 if predicate {condition: "random_chance", chance: 0.01} run scoreboard players set #is_prop jkpof.int 1
execute if score #ctrl_item_prop_chance jkpof.int matches 2 if predicate {condition: "random_chance", chance: 0.02} run scoreboard players set #is_prop jkpof.int 1
execute if score #ctrl_item_prop_chance jkpof.int matches 3 if predicate {condition: "random_chance", chance: 0.03} run scoreboard players set #is_prop jkpof.int 1
execute if score #ctrl_item_prop_chance jkpof.int matches 4 if predicate {condition: "random_chance", chance: 0.04} run scoreboard players set #is_prop jkpof.int 1
execute if score #ctrl_item_prop_chance jkpof.int matches 5 if predicate {condition: "random_chance", chance: 0.05} run scoreboard players set #is_prop jkpof.int 1

# 道具补给事件
scoreboard players set #event_prop_supply.chance.prop jkpof.int 0
execute if score #event_prop_supply.count.prop jkpof.int matches 1.. store result score #event_prop_supply.chance.prop jkpof.int run random value 0..9
execute if score #event_prop_supply.chance.prop jkpof.int matches 4.. run scoreboard players set #is_prop jkpof.int 1

## 分配模式
execute if score #ctrl_item_mode jkpof.int matches 0 run function jkpof:state/1/give/_diff
execute if score #ctrl_item_mode jkpof.int matches 1 run function jkpof:state/1/give/_same

# 清理
execute if score #event_prop_supply.count.prop jkpof.int matches 1.. run scoreboard players remove #event_prop_supply.count.prop jkpof.int 1
execute if score #event_prop_supply.count.enchanted_book jkpof.int matches 1.. run scoreboard players remove #event_prop_supply.count.enchanted_book jkpof.int 1
execute if score #event_prop_supply.count.potion jkpof.int matches 1.. run scoreboard players remove #event_prop_supply.count.potion jkpof.int 1
