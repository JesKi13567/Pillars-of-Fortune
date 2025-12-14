tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.border.tellraw", color: "aqua"}, {text: " →10←", color: "green"}, " 10", {storage: "jk:pof", nbt: "txt.seconds"}, {text: ", ", color: "aqua"}, {text: "↓40↓", color: "green"}, " 20", {storage: "jk:pof", nbt: "txt.seconds"}, {storage: "jk:pof", nbt: "txt.char.1", color: "aqua"}]
title @a subtitle {text: "→10← ↓40↓", color: "green"}

function jkpof:_by_version/worldborder/1st

data modify entity @e[type=item_display, tag=jkpof_barrier, limit=1] transformation.scale set value [29f, 29f, 0.1f]
scoreboard players add @e[type=item_display, tag=jkpof_barrier, limit=1] jkpof.int 20

fill -25 80 25 25 80 25 red_concrete
fill 25 80 -25 25 80 25 red_concrete
fill -25 80 -25 25 80 -25 red_concrete
fill -25 80 -25 -25 80 25 red_concrete
