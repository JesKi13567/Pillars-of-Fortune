effect give @a[scores={jkpof.state=2}, gamemode=survival] jump_boost 15 9
effect give @a[scores={jkpof.state=2}, gamemode=survival] slow_falling 15 0

tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.moon_walk.tellraw", color: "aqua"}, " ", {translate: "effect.minecraft.jump_boost"}, {text: " + ", color: "aqua"}, {translate: "effect.minecraft.slow_falling"}, " ", {storage: "jk:pof", nbt: "txt.event.global.effects", color: "aqua"}, {storage: "jk:pof", nbt: "txt.event.global.last", color: "aqua"}, "15", {storage: "jk:pof", nbt: "txt.event.global.seconds"}, {storage: "jk:pof", nbt: "txt.char.exclamation", color: "aqua"}]
title @a title {storage: "jk:pof", nbt: "txt.event.moon_walk.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", nbt: "txt.event.moon_walk.subtitle", color: "green"}
