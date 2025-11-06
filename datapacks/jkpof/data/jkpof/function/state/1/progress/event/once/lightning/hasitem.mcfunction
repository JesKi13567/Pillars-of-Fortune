tellraw @s [{text: "【幸运之柱】", color: "yellow"}, {text: "恭喜你渡劫成功，你背包中某栏位获得了覆盖的随机附魔！", color: "aqua"}]

# 随机取背包种类
execute store result score #lightning_backpack jkpof.int run random value 1..41
execute if score #lightning_inventory jkpof.int matches 0 run scoreboard players set #lightning_backpack jkpof.int 1
execute if score #lightning_equipment jkpof.int matches 0 run scoreboard players set #lightning_backpack jkpof.int 6

# 从存在的栏位取值
data remove storage jk:pof data.lightning

execute if score #lightning_backpack jkpof.int matches ..5 run function jkpof:state/1/progress/event/once/lightning/slot/equipment
execute if score #lightning_backpack jkpof.int matches 6.. run function jkpof:state/1/progress/event/once/lightning/slot/inventory

function jkpof:state/1/progress/event/once/lightning/slot/random with storage jk:pof data.lightning
