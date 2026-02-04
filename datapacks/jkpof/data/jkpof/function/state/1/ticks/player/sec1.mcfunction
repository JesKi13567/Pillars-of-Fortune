# 给予物品倒计时
title @s actionbar [{storage: "jk:pof", nbt: "txt.game.item_give", color: "yellow"}, {score: {name: "#time_res", objective: "jkpof.int"}, color: "gold"}, {storage: "jk:pof", nbt: "txt.event.global.seconds"}]

# 限高
execute store result score @s jkpof.Y run data get entity @s Pos[1]
execute if score @s jkpof.Y < #height_min jkpof.int run function jkpof:state/1/height_limit/too_low
execute if score @s jkpof.Y > #height_max jkpof.int run function jkpof:state/1/height_limit/too_high
execute if score @s jkpof.Y matches 400.. run damage @s 100 out_of_world

# 原谅
scoreboard players remove @s[scores={jkpof.damage.forgive=1..}] jkpof.damage.forgive 1
execute as @s[scores={jkpof.damage.forgive=..0, jkpof.damage.source.real=1..}] run function jkpof:state/1/hurt/sub/forgive

# 死亡笔记倒计时
scoreboard players remove @s[scores={jkpof.death_note.cd=1..}] jkpof.death_note.cd 1
kill @s[scores={jkpof.death_note.cd=0}]
