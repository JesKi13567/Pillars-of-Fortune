scoreboard players set #event_loot_magnet jkpof.int 1

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.tellraw", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.loot_magnet.subtitle", color: "green"}
