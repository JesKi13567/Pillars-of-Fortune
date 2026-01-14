execute store result score #item_order jkpof.int run random value 1..1284

# 锻造模板19、箭48、旗帜图案10、珊瑚（非固体方块）20、附魔书43、马/鹦鹉螺铠11、山羊角8、唱片21、陶片23、药水系列46*3、色16*2、色17*1、铜制品（是否涂蜡）120
execute if score #item_order jkpof.int matches 1210 store result score #item_color jkpof.int run random value 0..18
execute if score #item_order jkpof.int matches 1211 store result score #item_color jkpof.int run random value -1..46
execute if score #item_order jkpof.int matches 1212 store result score #item_color jkpof.int run random value 1..10
execute if score #item_order jkpof.int matches 1213 store result score #item_color jkpof.int run random value 1..20
execute if score #item_order jkpof.int matches 1214 store result score #item_color jkpof.int run random value 0..42
execute if score #item_order jkpof.int matches 1215 store result score #item_color jkpof.int run random value 1..11
execute if score #item_order jkpof.int matches 1216 store result score #item_color jkpof.int run random value 1..8
execute if score #item_order jkpof.int matches 1217 store result score #item_color jkpof.int run random value 1..21
execute if score #item_order jkpof.int matches 1218 store result score #item_color jkpof.int run random value 1..23
execute if score #item_order jkpof.int matches 1219..1221 store result score #item_color jkpof.int run random value 1..46
execute if score #item_order jkpof.int matches 1222..1223 store result score #item_color jkpof.int run random value 1..16
execute if score #item_order jkpof.int matches 1224 store result score #item_color jkpof.int run random value 0..16
execute if score #item_order jkpof.int matches 1225.. store result score #item_color jkpof.int run random value 1..120

# 分数一致
scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.order = #item_order jkpof.int
scoreboard players operation @a[scores={jkpof.state=2}, gamemode=survival] jkpof.item.color = #item_color jkpof.int
