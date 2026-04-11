tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.lore", color: "aqua"}, {translate: "block.minecraft.barrier"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.last", color: "aqua"}, "8", {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.exclamation", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.vertical_lock.subtitle", color: "green"}
scoreboard players set #event_time jkpof.int 160
execute at @a[scores={jkpof.state=2}] run summon marker 0 ~-1 0 {Tags: ["jkpof_vertical_lock"]}
execute at @a[scores={jkpof.state=2}] run summon marker 0 ~3 0 {Tags: ["jkpof_vertical_lock"]}
