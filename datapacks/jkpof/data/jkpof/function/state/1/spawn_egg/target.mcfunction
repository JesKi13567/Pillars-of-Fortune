$scoreboard players reset @s jkpof.spawn_egg.$(entity)
$tellraw @a [{storage: "jk:pof", nbt: "txt.EOF.show", color: "gold"}, {selector: "@s", color: "white"}, " ", {storage: "jk:pof", nbt: "txt.EOF.summoned1", color: "green"}, {translate: "entity.minecraft.$(entity)"}, {storage: "jk:pof", nbt: "txt.char.1", color: "green"}]
