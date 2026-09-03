# 消耗和冷却
clear @s paper[custom_data~{jkpof: ["tp_scroll"]}] 1
scoreboard players set @s jkpof.cd 5

effect give @s slow_falling 1 0 true
playsound entity.enderman.teleport block @s 0 1000000 0 10000000

execute store result score #prop.tp_scroll jkpof.int run random value 1..3

execute if score #prop.tp_scroll jkpof.int matches 1 run function jkpof:state/1/before_start/tp_spawn
execute if score #prop.tp_scroll jkpof.int matches 1 run tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.tp_scroll.lore.p1", color: "aqua"}]

execute if score #prop.tp_scroll jkpof.int matches 2 run tag @r[scores={jkpof.state=2}] add jkpof_tar
execute if score #prop.tp_scroll jkpof.int matches 2 run tp @s @a[limit=1, tag=jkpof_tar]
execute if score #prop.tp_scroll jkpof.int matches 2 run tellraw @a[limit=1, tag=jkpof_tar] ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {selector: "@s"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.tp_scroll.lore.tar", color: "aqua"}]
execute if score #prop.tp_scroll jkpof.int matches 2 run tellraw @s ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.tp_scroll.lore.p2", color: "aqua"}, " (", {selector: "@a[limit=1, tag=jkpof_tar]"}, ")"]
execute if score #prop.tp_scroll jkpof.int matches 2 run tag @a remove jkpof_tar

execute if score #prop.tp_scroll jkpof.int matches 3 if score #ctrl_upside_down jkpof.int matches 0 run tp @s 0 1 0
execute if score #prop.tp_scroll jkpof.int matches 3 if score #ctrl_upside_down jkpof.int matches 1 run tp @s 0 48 0
execute if score #prop.tp_scroll jkpof.int matches 3 run tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.tp_scroll.lore.p3", color: "aqua"}]
