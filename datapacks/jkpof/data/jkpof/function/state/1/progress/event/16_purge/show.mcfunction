execute if score #event_plus_16 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.tellraw", color: "aqua"}]
execute if score #event_plus_16 jkpof.int matches 0 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.name", color: "aqua"}
execute if score #event_plus_16 jkpof.int matches 0 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.subtitle", color: "green"}
execute if score #event_plus_16 jkpof.int matches 0 run kill @e[type=#jkpof:mobs]
execute if score #event_plus_16 jkpof.int matches 1 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.name", color: "aqua"}
execute if score #event_plus_16 jkpof.int matches 1 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.subtitle", color: "green"}
execute if score #event_plus_16 jkpof.int matches 1 store result score #entity_count jkpof.int if entity @e[type=#jkpof:mobs]
execute if score #event_plus_16 jkpof.int matches 1 if score #entity_count jkpof.int matches 500.. run return run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.fail", color: "red"}]
execute if score #event_plus_16 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.purge.tellraw", color: "aqua"}]
execute if score #event_plus_16 jkpof.int matches 1 as @e[type=#jkpof:mobs] at @s run function jkpof:state/1/progress/event/16_purge/clone
