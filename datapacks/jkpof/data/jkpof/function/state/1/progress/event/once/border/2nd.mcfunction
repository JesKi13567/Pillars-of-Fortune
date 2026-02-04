execute if score #ctrl_upside_down jkpof.int matches 0 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_height_symbol"], CustomName: "↓"}
execute if score #ctrl_upside_down jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_height_symbol"], CustomName: "↑"}

tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.border.tellraw", color: "aqua"}, {text: " →8←", color: "green"}, " 5", {storage: "jk:pof", nbt: "txt.event.global.seconds"}, {text: ", ", color: "aqua"}, {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]", color: "green"}, {text: "30", color: "green"}, {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]", color: "green"}, " 15", {storage: "jk:pof", nbt: "txt.event.global.seconds"}, {storage: "jk:pof", nbt: "txt.char.exclamation", color: "aqua"}]
title @a subtitle [{text: "→8← ", color: "green"}, {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]"}, "30", {selector: "@e[type=marker, tag=jkpof_height_symbol, limit=1]"}]

kill @e[type=marker, tag=jkpof_height_symbol]

worldborder set 13 5s

execute as @e[type=item_display, tag=jkpof_height_barrier] run data modify entity @s transformation.scale set value [13f, 13f, 0.1f]

execute if score #ctrl_upside_down jkpof.int matches 0 run scoreboard players add @e[type=item_display, tag=jkpof_height_barrier, tag=max, limit=1] jkpof.int 15
execute if score #ctrl_upside_down jkpof.int matches 1 run scoreboard players add @e[type=item_display, tag=jkpof_height_barrier, tag=min, limit=1] jkpof.int 15

execute if score #ctrl_upside_down jkpof.int matches 0 run fill -15 50 15 15 50 15 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 0 run fill 15 50 -15 15 50 15 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 0 run fill -15 50 -15 15 50 -15 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 0 run fill -15 50 -15 -15 50 15 red_concrete

execute if score #ctrl_upside_down jkpof.int matches 1 run fill -15 0 15 15 0 15 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 1 run fill 15 0 -15 15 0 15 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 1 run fill -15 0 -15 15 0 -15 red_concrete
execute if score #ctrl_upside_down jkpof.int matches 1 run fill -15 0 -15 -15 0 15 red_concrete

# 移出随机池
data remove storage jk:pof data.event.list[0]
execute store result storage jk:pof data.event.count int 1 run scoreboard players remove #event_s jkpof.int 1
