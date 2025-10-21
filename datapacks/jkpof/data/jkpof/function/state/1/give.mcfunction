# 计时
scoreboard players operation #time_res jkpof.int = #ctrl_item_time jkpof.int

## 随机分类
# 不同
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.value run random value 1..1488
# 相同
execute if score #ctrl_item_player jkpof.int matches 1 store result score #item_player jkpof.int run random value 1..1488
execute if score #ctrl_item_player jkpof.int matches 1 run scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.value = #item_player jkpof.int

## 个数
# 指定
execute if score #ctrl_item_count_order jkpof.int matches 0..2 store result storage jk:pof data.item_count.n int 1 run scoreboard players get #ctrl_item_count_num jkpof.int
# 随机
execute if score #ctrl_item_count_order jkpof.int matches 3 store result storage jk:pof data.item_count.n int 1 run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 store result storage jk:pof data.item_count.n int 1 run random value 1..8

## 真正
execute as @a[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/give_real with storage jk:pof data.item_count
