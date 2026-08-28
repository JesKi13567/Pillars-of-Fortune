scoreboard players set #event_kid_mode jkpof.int 0
execute as @a run attribute @s scale base reset
execute as @e[type=mannequin] run attribute @s scale base reset

execute if score #event_plus_14 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
execute if score #event_plus_14 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.kid_mode.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
