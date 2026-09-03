execute as @e[type=item] run data modify entity @s NoGravity set value true
execute if score #event_plus_13 jkpof.int matches 0 as @e[type=item] at @s facing entity @p[scores={jkpof.state=2}] feet run tp ^ ^ ^.2
execute if score #event_plus_13 jkpof.int matches 1 as @e[type=item] at @s facing entity @p[scores={jkpof.state=2}] feet run tp ^ ^ ^-.2
execute if score #event_time jkpof.int matches 0 as @e[type=item] run data modify entity @s NoGravity set value false
execute if score #event_time jkpof.int matches 0 if score #event_plus_13 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
execute if score #event_time jkpof.int matches 0 if score #event_plus_13 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.loot_magnet.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
