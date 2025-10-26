title @a title {text: "边界收缩", color: "aqua"}

execute if score #progress_border jkpof.int matches 2 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "边界将 ", color: "aqua"}, {text: "→10←", color: "green"}, " 10 秒", {text: "，", color: "aqua"}, {"text": "↓40↓", color: "green"}, " 20 秒", {text: "！", color: "aqua"}]
execute if score #progress_border jkpof.int matches 2 run title @a subtitle {text: "→10← ↓40↓", color: "green"}
execute if score #progress_border jkpof.int matches 2 run worldborder set 29 10
execute if score #progress_border jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_barrier, limit=1] transformation.scale set value [29f, 29f, 0.1f]
execute if score #progress_border jkpof.int matches 2 run scoreboard players add @e[type=item_display, tag=jkpof_barrier, limit=1] jkpof.int 20

execute if score #progress_border jkpof.int matches 1 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "边界将 ", color: "aqua"}, {text: "→8←", color: "green"}, " 5 秒", {text: "，", color: "aqua"}, {"text": "↓30↓", color: "green"}, " 15 秒", {text: "！", color: "aqua"}]
execute if score #progress_border jkpof.int matches 1 run title @a subtitle {text: "→8← ↓30↓", color: "green"}
execute if score #progress_border jkpof.int matches 1 run worldborder set 13 5
execute if score #progress_border jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_barrier, limit=1] transformation.scale set value [13f, 13f, 0.1f]
execute if score #progress_border jkpof.int matches 1 run scoreboard players add @e[type=item_display, tag=jkpof_barrier, limit=1] jkpof.int 15

scoreboard players remove #progress_border jkpof.int 1
