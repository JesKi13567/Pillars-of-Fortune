# 计时
scoreboard players operation #time_res jkpof.int = #ctrl_item_time jkpof.int

# 个数（常量）
execute if score #ctrl_item_count_order jkpof.int matches 0..2 run scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.count = #ctrl_item_count_num jkpof.int

## 分类
# 道具补给事件
scoreboard players set #supply_real jkpof.int 0
execute if score #event_prop_supply jkpof.int matches 1.. store result score #supply_real jkpof.int run random value 0..9
execute if score #event_prop_supply jkpof.int matches 1.. run scoreboard players remove #event_prop_supply jkpof.int 1

# 分配模式
execute if score #ctrl_item_mode jkpof.int matches 0 run function jkpof:state/1/give/_diff
execute if score #ctrl_item_mode jkpof.int matches 1 run function jkpof:state/1/give/_same
