tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "边界将 ", color: "aqua"}, {text: "→10←", color: "green"}, " 10 秒", {text: "，", color: "aqua"}, {text: "↓40↓", color: "green"}, " 20 秒", {text: "！", color: "aqua"}]
title @a subtitle {text: "→10← ↓40↓", color: "green"}

worldborder set 29 10

data modify entity @e[type=item_display, tag=jkpof_barrier, limit=1] transformation.scale set value [29f, 29f, 0.1f]
scoreboard players add @e[type=item_display, tag=jkpof_barrier, limit=1] jkpof.int 20

fill -25 80 25 25 80 25 red_concrete
fill 25 80 -25 25 80 25 red_concrete
fill -25 80 -25 25 80 -25 red_concrete
fill -25 80 -25 -25 80 25 red_concrete
