# 限高
execute store result score @s jkpof.Y run data get entity @s Pos[1]
execute unless score @s jkpof.void_charm matches 1.. if items entity @s[scores={jkpof.Y=..-65}] container.* bedrock[custom_data={jkpof: ["void_charm"]}] run function jkpof:state/1/special_item/void_charm/use
execute unless score #test_mode jkpof.int matches 1 run damage @s[scores={jkpof.Y=..-160}] 100 out_of_world
execute if score #test_mode jkpof.int matches 1 run tp @s[scores={jkpof.Y=..-160}] 0 118 0
execute if score @s jkpof.Y >= #height_max jkpof.int run function jkpof:state/1/height_limit/player_damage

# 给予物品倒计时
title @s actionbar [{storage: "jk:pof", nbt: "txt.game.item_give", color: "yellow"}, {score: {name: "#time_res", objective: "jkpof.int"}, color: "gold"}, {storage: "jk:pof", nbt: "txt.seconds"}]

# 死亡笔记倒计时
scoreboard players remove @s[scores={jkpof.death_note.cd=1..}] jkpof.death_note.cd 1
kill @s[scores={jkpof.death_note.cd=0}]
