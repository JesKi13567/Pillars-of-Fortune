tag @a[scores={jkpof.state=2}, gamemode=survival, limit=1, sort=random] add jkpof_chicken_0
tag @a[scores={jkpof.state=2}, gamemode=survival, limit=1, sort=random, tag=!jkpof_chicken_0] add jkpof_chicken_1

execute at @p[tag=jkpof_chicken_0] run summon chicken ~ 119 ~ {Tags: ["jkpof", "jkpof_chicken"], Invulnerable: true, NoGravity: true}
rotate @e[type=chicken, tag=jkpof_chicken, limit=1] facing entity @p[tag=jkpof_chicken_1]
execute as @e[type=chicken, tag=jkpof_chicken, limit=1] at @s run rotate @s ~ 0
execute as @e[type=chicken, tag=jkpof_chicken, limit=1] at @s run tp @s ^ ^ ^-12

tag @a remove jkpof_chicken_0
tag @a remove jkpof_chicken_1

tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "天上有轰炸鸡飞过，注意躲避！", color: "aqua"}]
title @a title {text: "飞鸡来袭", color: "aqua"}
title @a subtitle {text: "注意天上投放的炸弹", color: "green"}
