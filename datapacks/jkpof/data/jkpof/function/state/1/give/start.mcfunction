# 计时
scoreboard players operation #time_res jkpof.int = #ctrl_item_time jkpof.int

# 附魔等级
execute store result storage jk:pof data.item_count.x int 1 run random value 1..5

# 个数
execute if score #ctrl_item_count_order jkpof.int matches 0..2 store result storage jk:pof data.item_count.n int 1 run scoreboard players get #ctrl_item_count_num jkpof.int
execute if score #ctrl_item_count_order jkpof.int matches 3 store result storage jk:pof data.item_count.n int 1 run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 store result storage jk:pof data.item_count.n int 1 run random value 1..8

### 分类
## 不同
execute if score #ctrl_item_player jkpof.int matches 0 as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.order run random value 1..1356
# 颜色写在各个种类里面了

## 相同
execute if score #ctrl_item_player jkpof.int matches 1 store result score #item_order jkpof.int run random value 1..1356
# 锻造模板18、箭48、旗帜图案10、附魔书42、山羊角8、唱片21、陶片23、药水系列46*3、色16*2、色17*1
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1344 store result score #item_color jkpof.int run random value 1..18
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1345 store result score #item_color jkpof.int run random value -1..46
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1346 store result score #item_color jkpof.int run random value 1..10
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1347 store result score #item_color jkpof.int run random value 1..42
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1348 store result score #item_color jkpof.int run random value 1..8
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1349 store result score #item_color jkpof.int run random value 1..21
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1350 store result score #item_color jkpof.int run random value 1..23
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1351..1353 store result score #item_color jkpof.int run random value 1..46
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1354..1355 store result score #item_color jkpof.int run random value 1..16
execute if score #ctrl_item_player jkpof.int matches 1 if score #item_order jkpof.int matches 1356 store result score #item_color jkpof.int run random value 0..16
# 分数一致
execute if score #ctrl_item_player jkpof.int matches 1 run scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.order = #item_order jkpof.int
execute if score #ctrl_item_player jkpof.int matches 1 run scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.color = #item_color jkpof.int

## 真正
execute as @a[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/give/real with storage jk:pof data.item_count
