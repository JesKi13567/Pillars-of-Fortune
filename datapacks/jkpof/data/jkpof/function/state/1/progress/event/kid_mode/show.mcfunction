scoreboard players set #event_kid_mode jkpof.int 1
execute as @a[scores={jkpof.state=2}] run attribute @s scale base set 0.5
execute as @e[type=mannequin] run attribute @s scale base set 0.5

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.lore.p1", color: "aqua"}, {translate: "attribute.name.scale", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.lore.p2", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.kid_mode.subtitle", color: "green"}
