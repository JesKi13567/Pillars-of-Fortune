# 计时
scoreboard players operation #time_res jkpof.int = #ctrl_item_time jkpof.int

# 附魔等级
execute store result storage jk:pof data.item_count.x int 1 run random value 1..5

# 个数
execute if score #ctrl_item_count_order jkpof.int matches 0..2 store result storage jk:pof data.item_count.n int 1 run scoreboard players get #ctrl_item_count_num jkpof.int
execute if score #ctrl_item_count_order jkpof.int matches 3 store result storage jk:pof data.item_count.n int 1 run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 store result storage jk:pof data.item_count.n int 1 run random value 1..8

### 分类
## 道具补给事件
scoreboard players set #supply_real jkpof.int 0
execute if score #event_prop_supply jkpof.int matches 1.. store result score #supply_real jkpof.int run random value 0..9
execute if score #event_prop_supply jkpof.int matches 1.. run scoreboard players remove #event_prop_supply jkpof.int 1

## 不同
execute if score #ctrl_item_mode jkpof.int matches 0 if score #supply_real jkpof.int matches 0..3 as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.order run random value 1..1284
execute if score #ctrl_item_mode jkpof.int matches 0 if score #supply_real jkpof.int matches 4..9 as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.order run random value 1193..1206

## 相同
execute if score #ctrl_item_mode jkpof.int matches 1 run function jkpof:state/1/give/mode_same

## 真正
execute as @a[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/give/real with storage jk:pof data.item_count
