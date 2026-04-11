tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.tellraw", color: "aqua"}, {translate: "block.minecraft.lava"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.last", color: "aqua"}, "6", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.exclamation", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.lava.subtitle", color: "green"}
scoreboard players set #event_time jkpof.int 120
