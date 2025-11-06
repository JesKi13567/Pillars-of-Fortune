summon lightning_bolt ~ ~ ~
tellraw @a[tag=!jkpof_lightning_player] [{text: "【幸运之柱】", color: "yellow"}, {text: "恭喜玩家 ", color: "aqua"}, {selector: "@s", color: "white"}, {text: " 在此渡劫！", color: "aqua"}]

# 背包需要有物品才能附魔
execute store result score #lightning_inventory jkpof.int run data get entity @s Inventory
execute store result score #lightning_equipment jkpof.int run data get entity @s equipment

scoreboard players reset #lightning_hasitem jkpof.int
scoreboard players operation #lightning_hasitem jkpof.int += #lightning_inventory jkpof.int
scoreboard players operation #lightning_hasitem jkpof.int += #lightning_equipment jkpof.int

execute if score #lightning_hasitem jkpof.int matches 1.. run function jkpof:state/1/progress/event/once/lightning/hasitem

execute if score #lightning_hasitem jkpof.int matches 0 run tellraw @s [{text: "【幸运之柱】", color: "yellow"}, {text: "恭喜你渡劫成功，即便你一贫如洗...", color: "aqua"}]
