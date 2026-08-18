kill @e[type=#jkpof:mobs]

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.purge.subtitle", color: "green"}
