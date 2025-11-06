tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "边界将 ", color: "aqua"}, {text: "→8←", color: "green"}, " 5 秒", {text: "，", color: "aqua"}, {text: "↓30↓", color: "green"}, " 15 秒", {text: "！", color: "aqua"}]
title @a subtitle {text: "→8← ↓30↓", color: "green"}

worldborder set 13 5

data modify entity @e[type=item_display, tag=jkpof_barrier, limit=1] transformation.scale set value [13f, 13f, 0.1f]
scoreboard players add @e[type=item_display, tag=jkpof_barrier, limit=1] jkpof.int 15

fill -15 50 15 15 50 15 red_concrete
fill 15 50 -15 15 50 15 red_concrete
fill -15 50 -15 15 50 -15 red_concrete
fill -15 50 -15 -15 50 15 red_concrete
