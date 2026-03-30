execute if score #event_time jkpof.int matches 0.. as @e[type=chicken, tag=jkpof_chicken, limit=1] at @s run function jkpof:state/1/progress/event/bomb_chicken/go

execute if score #event_time jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bomb_chicken.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
