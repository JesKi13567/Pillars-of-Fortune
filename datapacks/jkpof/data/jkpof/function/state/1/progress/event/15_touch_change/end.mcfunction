execute if score #event_plus_15 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.touch_change.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
execute if score #event_plus_15 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.touch_change.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
scoreboard players set #event_touch_change jkpof.int 0
kill @e[type=marker, tag=jkpof_touch_block]
