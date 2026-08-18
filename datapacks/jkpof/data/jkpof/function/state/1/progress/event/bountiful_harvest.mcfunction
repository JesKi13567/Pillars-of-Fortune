# 读取血量
execute as @a[scores={jkpof.state=2}] store result score @s jkpof.bh.hp run data get entity @s Health 100
execute as @a[scores={jkpof.state=2}] store result score @s jkpof.bh.max run attribute @s max_health get 100

# 残血 → 回满血
execute as @a[scores={jkpof.state=2}] if score @s jkpof.bh.hp < @s jkpof.bh.max run effect give @s instant_health 1 19 true

# 满血 → 随机道具
execute as @a[scores={jkpof.state=2}] unless score @s jkpof.bh.hp < @s jkpof.bh.max run loot give @s loot jkpof:item/prop/common

# 播报
tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.subtitle", color: "green"}
