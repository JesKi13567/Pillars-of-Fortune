tag @a[scores={jkpof.state=2}, gamemode=survival, limit=1, sort=random] add jkpof_chicken_0
tag @a[scores={jkpof.state=2}, gamemode=survival, limit=1, sort=random, tag=!jkpof_chicken_0] add jkpof_chicken_1

execute at @p[tag=jkpof_chicken_0] run summon chicken ~ 120 ~ {Tags: ["jkpof", "jkpof_chicken"], Invulnerable: true, NoGravity: true}
rotate @e[type=chicken, tag=jkpof_chicken, limit=1] facing entity @p[tag=jkpof_chicken_1]
execute as @e[type=chicken, tag=jkpof_chicken, limit=1] at @s run rotate @s ~ 0
execute as @e[type=chicken, tag=jkpof_chicken, limit=1] at @s run tp @s ^ ^ ^-12

tag @a remove jkpof_chicken_0
tag @a remove jkpof_chicken_1

tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.bomb_chicken.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", nbt: "txt.event.bomb_chicken.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", nbt: "txt.event.bomb_chicken.subtitle", color: "green"}
