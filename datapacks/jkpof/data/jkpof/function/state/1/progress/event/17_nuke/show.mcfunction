execute if score #event_plus_17 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {text: "5", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.later", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.tellraw", color: "aqua"}]
execute if score #event_plus_17 jkpof.int matches 0 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.name", color: "aqua"}
execute if score #event_plus_17 jkpof.int matches 0 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.subtitle", color: "green"}
execute if score #event_plus_17 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {text: "5", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.later", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.nuke.tellraw", color: "aqua"}, {translate: "block.minecraft.orange_stained_glass", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.exclamation", color: "aqua"}]
execute if score #event_plus_17 jkpof.int matches 1 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.nuke.name", color: "aqua"}
execute if score #event_plus_17 jkpof.int matches 1 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.nuke.subtitle", color: "green"}

execute store result score #event_nuke.q jkpof.int run random value 1..4
scoreboard players set #event_time jkpof.int 100
scoreboard players remove #event_nuke.c jkpof.int 1
