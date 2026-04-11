# 计时
scoreboard players operation #time_res jkpof.int = #ctrl_item_time jkpof.int

# 个数（常量）
execute if score #ctrl_item_count_order jkpof.int matches 0..2 run scoreboard players operation @a[scores={jkpof.state=2}] jkpof.item.count = #ctrl_item_count_num jkpof.int

## 分类
# 道具补给事件
scoreboard players set #event_prop_supply.chance.prop jkpof.int 0
execute if score #event_prop_supply.count.prop jkpof.int matches 1.. store result score #event_prop_supply.chance.prop jkpof.int run random value 0..9
execute if score #event_prop_supply.count.prop jkpof.int matches 1.. run scoreboard players remove #event_prop_supply.count.prop jkpof.int 1

# 分配模式
execute if score #ctrl_item_mode jkpof.int matches 0 run function jkpof:state/1/give/_diff
execute if score #ctrl_item_mode jkpof.int matches 1 run function jkpof:state/1/give/_same

# 额外
execute if score #event_prop_supply.count.enchanted_book jkpof.int matches 1.. run scoreboard players remove #event_prop_supply.count.enchanted_book jkpof.int 1
execute if score #event_prop_supply.count.potion jkpof.int matches 1.. run scoreboard players remove #event_prop_supply.count.potion jkpof.int 1
