scoreboard players add #event_prop_supply jkpof.int 3

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.subtitle", color: "green"}
