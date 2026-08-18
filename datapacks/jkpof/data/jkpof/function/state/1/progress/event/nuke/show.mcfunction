execute store result score #event_nuke.q jkpof.int run random value 1..4
scoreboard players set #event_time jkpof.int 100

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {text: "5", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.nuke.subtitle", color: "green"}

# 减少次数
scoreboard players remove #event_nuke.c jkpof.int 1
