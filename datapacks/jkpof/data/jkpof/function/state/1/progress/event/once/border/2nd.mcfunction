tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.border.tellraw", color: "aqua"}, {text: " →8←", color: "green"}, " 5", {storage: "jk:pof", nbt: "txt.seconds"}, {text: ", ", color: "aqua"}, {text: "↓30↓", color: "green"}, " 15", {storage: "jk:pof", nbt: "txt.seconds"}, {storage: "jk:pof", nbt: "txt.char.exclamation", color: "aqua"}]
title @a subtitle {text: "→8← ↓30↓", color: "green"}

worldborder set 13 5s

data modify entity @e[type=item_display, tag=jkpof_barrier, limit=1] transformation.scale set value [13f, 13f, 0.1f]
scoreboard players add @e[type=item_display, tag=jkpof_barrier, limit=1] jkpof.int 15

fill -15 50 15 15 50 15 red_concrete
fill 15 50 -15 15 50 15 red_concrete
fill -15 50 -15 15 50 -15 red_concrete
fill -15 50 -15 -15 50 15 red_concrete

# 移出随机池
data remove storage jk:pof data.event.list[0]
execute store result storage jk:pof data.event.count int 1 run scoreboard players remove #event_s jkpof.int 1
