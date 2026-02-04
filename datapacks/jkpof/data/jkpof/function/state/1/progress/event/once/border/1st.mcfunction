execute if score #ctrl_upside_down jkpof.int matches 0 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_height_symbol"], CustomName: "↓"}
execute if score #ctrl_upside_down jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_height_symbol"], CustomName: "↑"}

tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.border.tellraw", color: "aqua"}, {text: " →10←", color: "green"}, " 10", {storage: "jk:pof", nbt: "txt.event.global.seconds"}, {text: ", ", color: "aqua"}, {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]", color: "green"}, {text: "40", color: "green"}, {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]", color: "green"}, " 20", {storage: "jk:pof", nbt: "txt.event.global.seconds"}, {storage: "jk:pof", nbt: "txt.char.exclamation", color: "aqua"}]
title @a subtitle [{text: "→10← ", color: "green"}, {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]"}, "40", {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]"}]

kill @e[type=marker, tag=jkpof_height_symbol]

worldborder set 29 10s

execute as @e[type=item_display, tag=jkpof_height_barrier] run data modify entity @s transformation.scale set value [29f, 29f, 0.1f]

execute if score #ctrl_upside_down jkpof.int matches 0 run scoreboard players add @e[type=item_display, tag=jkpof_height_barrier, tag=max, limit=1] jkpof.int 20
execute if score #ctrl_upside_down jkpof.int matches 1 run scoreboard players add @e[type=item_display, tag=jkpof_height_barrier, tag=min, limit=1] jkpof.int 20

execute if score #ctrl_upside_down jkpof.int matches 0 run fill -25 80 25 25 80 25 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 0 run fill 25 80 -25 25 80 25 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 0 run fill -25 80 -25 25 80 -25 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 0 run fill -25 80 -25 -25 80 25 red_concrete

execute if score #ctrl_upside_down jkpof.int matches 1 run fill -25 -30 25 25 -30 25 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 1 run fill 25 -30 -25 25 -30 25 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 1 run fill -25 -30 -25 25 -30 -25 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 1 run fill -25 -30 -25 -25 -30 25 red_concrete
