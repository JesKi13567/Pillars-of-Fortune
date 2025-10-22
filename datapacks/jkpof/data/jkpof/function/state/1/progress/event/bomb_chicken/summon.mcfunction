tag @a[limit=1, sort=random, scores={jkpof.state=2}, gamemode=survival] add jkpof_chicken_0
tag @a[limit=1, sort=random, scores={jkpof.state=2}, gamemode=survival, tag=!jkpof_chicken_0] add jkpof_chicken_1

execute at @p[tag=jkpof_chicken_0] run summon chicken ~ 127 ~ {Tags: ["jkpof", "jkpof_chicken"], Invulnerable: true, NoGravity: true}
rotate @e[type=chicken, tag=jkpof_chicken, limit=1] facing entity @p[tag=jkpof_chicken_1]
execute as @e[type=chicken, tag=jkpof_chicken, limit=1] at @s run rotate @s ~ 0
execute as @e[type=chicken, tag=jkpof_chicken, limit=1] at @s run tp @s ^ ^ ^-10

tag @a remove jkpof_chicken_0
tag @a remove jkpof_chicken_1

tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "天上有轰炸鸡飞过，注意躲避！", color: "aqua"}]
title @a title {text: "轰炸鸡", color: "aqua"}
title @a subtitle {text: "注意天上降落的炸弹", color: "green"}
