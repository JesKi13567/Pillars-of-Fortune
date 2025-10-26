# 计时
scoreboard players operation #time_res jkpof.int = #ctrl_item_time jkpof.int

## 个数
# 附魔等级
execute store result storage jk:pof data.item_count.x int 1 run random value 1..5
# 指定
execute if score #ctrl_item_count_order jkpof.int matches 0..2 store result storage jk:pof data.item_count.n int 1 run scoreboard players get #ctrl_item_count_num jkpof.int
# 随机
execute if score #ctrl_item_count_order jkpof.int matches 3 store result storage jk:pof data.item_count.n int 1 run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 store result storage jk:pof data.item_count.n int 1 run random value 1..8

### 分类
## 不同
# 顺序
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.order run random value 1..1374
# 锻造模板
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1363}, gamemode=survival] store result score @s jkpof.item.color run random value 1..18
# 旗帜图案
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1364}, gamemode=survival] store result score @s jkpof.item.color run random value 1..10
# 唱片
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1365}, gamemode=survival] store result score @s jkpof.item.color run random value 1..21
# 陶片
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1366}, gamemode=survival] store result score @s jkpof.item.color run random value 1..23
# 山羊角
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1367}, gamemode=survival] store result score @s jkpof.item.color run random value 1..8
# 附魔书
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1368}, gamemode=survival] store result score @s jkpof.item.color run random value 1..42
# 药水/药箭（4种）
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1369..1372}, gamemode=survival] store result score @s jkpof.item.color run random value 1..46
# 16色物品（1种）
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1373}, gamemode=survival] store result score @s jkpof.item.color run random value 1..16
# 17色物品（1种）
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2, jkpof.item.order=1374}, gamemode=survival] store result score @s jkpof.item.color run random value 1..17

## 相同
# 顺序
execute if score #ctrl_item_player jkpof.int matches 1 store result score #item_order jkpof.int run random value 1..1374
# 锻造模板
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1363 store result score #item_color jkpof.int run random value 1..18
# 旗帜图案
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1364 store result score #item_color jkpof.int run random value 1..10
# 唱片
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1365 store result score #item_color jkpof.int run random value 1..21
# 陶片
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1366 store result score #item_color jkpof.int run random value 1..23
# 山羊角
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1367 store result score #item_color jkpof.int run random value 1..8
# 附魔书
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1368 store result score #item_color jkpof.int run random value 1..42
# 药水/药箭（4种）
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1369..1372 store result score #item_color jkpof.int run random value 1..46
# 16色物品（1种）
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1373 store result score #item_color jkpof.int run random value 1..16
# 17色物品（1种）
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1374 store result score #item_color jkpof.int run random value 1..17
# 分数一致
execute if score #ctrl_item_player jkpof.int matches 1 run scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.order = #item_order jkpof.int
execute if score #ctrl_item_player jkpof.int matches 1 run scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.color = #item_color jkpof.int

## 真正
execute as @a[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/give/real with storage jk:pof data.item_count
