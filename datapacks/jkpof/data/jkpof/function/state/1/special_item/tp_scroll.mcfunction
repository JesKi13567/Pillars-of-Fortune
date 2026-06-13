# 消耗和冷却
clear @s paper[custom_data={jkpof: ["tp_scroll"]}] 1
scoreboard players set @s jkpof.cd 5

effect give @s slow_falling 1 0 true
playsound entity.enderman.teleport block @s 0 1000000 0 10000000

execute store result score @s jkpof.tp_scroll run random value 1..3

execute as @s[scores={jkpof.tp_scroll=1}] run function jkpof:state/1/before_start/tp_spawn
tellraw @s[scores={jkpof.tp_scroll=1}] [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.tp_scroll.lore.p2", color: "aqua"}]

execute as @s[scores={jkpof.tp_scroll=2}] run tag @r[scores={jkpof.state=2}] add jkpof_tar
tp @s[scores={jkpof.tp_scroll=2}] @a[limit=1, tag=jkpof_tar]
tellraw @a[limit=1, tag=jkpof_tar] ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {selector: "@s"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.tp_scroll.lore.tar", color: "aqua"}]
tellraw @s[scores={jkpof.tp_scroll=2}] ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.tp_scroll.lore.p3", color: "aqua"}, " (", {selector: "@a[limit=1, tag=jkpof_tar]"}, ")"]
execute as @s[scores={jkpof.tp_scroll=2}] run tag @a remove jkpof_tar

execute if score #ctrl_upside_down jkpof.int matches 0 run tp @s[scores={jkpof.tp_scroll=3}] 0 1 0
execute if score #ctrl_upside_down jkpof.int matches 0 run setblock 0 0 0 glass strict
execute if score #ctrl_upside_down jkpof.int matches 1 run tp @s[scores={jkpof.tp_scroll=3}] 0 48 0
execute if score #ctrl_upside_down jkpof.int matches 1 run setblock 0 47 0 glass strict
tellraw @s[scores={jkpof.tp_scroll=3}] [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.tp_scroll.lore.p4", color: "aqua"}]

scoreboard players reset @s jkpof.tp_scroll
