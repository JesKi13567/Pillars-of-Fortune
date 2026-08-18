scoreboard players set #event_kid_mode jkpof.int 0
execute as @a run attribute @s scale base reset
execute as @e[type=mannequin] run attribute @s scale base reset

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
