# 计时
scoreboard players operation #time_res jkpof.int = #ctrl_item_time jkpof.int

# 附魔等级
execute store result storage jk:pof data.item_count.x int 1 run random value 1..5

# 个数
execute if score #ctrl_item_count_order jkpof.int matches 0..2 store result storage jk:pof data.item_count.n int 1 run scoreboard players get #ctrl_item_count_num jkpof.int
execute if score #ctrl_item_count_order jkpof.int matches 3 store result storage jk:pof data.item_count.n int 1 run random value 1..4
execute if score #ctrl_item_count_order jkpof.int matches 4 store result storage jk:pof data.item_count.n int 1 run random value 1..8

### 分类（个数1278/1295）
## 不同
execute if score #ctrl_item_mode jkpof.int matches 0 as @a[scores={jkpof.state=2}, gamemode=survival] store result score @s jkpof.item.order run function jkpof:_by_version/give/random/item_order
# 颜色写在各个种类里面了

## 相同
execute if score #ctrl_item_mode jkpof.int matches 1 store result score #item_order jkpof.int run function jkpof:_by_version/give/random/item_order
# 战利品56、锻造模板18、箭48、旗帜图案10、珊瑚（非固体方块）20、附魔书（42/43）、山羊角8、唱片21、陶片23、药水系列46*3、色16*2、色17*1、铜制品（是否涂蜡）120
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1203 store result score #item_color jkpof.int run random value 1..56
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1204 store result score #item_color jkpof.int run random value 1..18
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1205 store result score #item_color jkpof.int run random value -1..46
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1206 store result score #item_color jkpof.int run random value 1..10
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1207 store result score #item_color jkpof.int run random value 1..20
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1208 store result score #item_color jkpof.int run function jkpof:_by_version/give/random/enchantment
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1209 store result score #item_color jkpof.int run random value 1..8
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1210 store result score #item_color jkpof.int run random value 1..21
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1211 store result score #item_color jkpof.int run random value 1..23
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1212..1214 store result score #item_color jkpof.int run random value 1..46
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1215..1216 store result score #item_color jkpof.int run random value 1..16
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1217 store result score #item_color jkpof.int run random value 0..16
execute if score #ctrl_item_mode jkpof.int matches 1 if score #item_order jkpof.int matches 1218..1278 store result score #item_color jkpof.int run random value 1..120
# 分数一致
execute if score #ctrl_item_mode jkpof.int matches 1 run scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.order = #item_order jkpof.int
execute if score #ctrl_item_mode jkpof.int matches 1 run scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.color = #item_color jkpof.int

## 真正
execute as @a[scores={jkpof.state=2}, gamemode=survival] run function jkpof:state/1/give/real with storage jk:pof data.item_count
