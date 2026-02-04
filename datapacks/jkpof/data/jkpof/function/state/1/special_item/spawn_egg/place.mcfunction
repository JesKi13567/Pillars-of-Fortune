$scoreboard players reset @s jkpof.spawn_egg.$(entity)
$scoreboard players operation @e[type=$(entity), tag=!jkpof_spawn] jkpof.id = @s jkpof.id
$execute if entity @e[type=$(entity), tag=!jkpof_spawn] run tellraw @a [{storage: "jk:pof", nbt: "txt.EOF.show", color: "gold"}, {selector: "@s", color: "white"}, " ", {storage: "jk:pof", nbt: "txt.EOF.summoned1", color: "green"}, {translate: "entity.minecraft.$(entity)"}, {storage: "jk:pof", nbt: "txt.char.exclamation", color: "green"}]
$tag @e[type=$(entity), tag=!jkpof_spawn] add jkpof_spawn
