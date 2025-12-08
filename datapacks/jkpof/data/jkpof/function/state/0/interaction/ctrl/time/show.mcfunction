execute if score #ctrl_time jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.time_set.show.0", color: "yellow"}]
execute if score #ctrl_time jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.time_set.show.1", color: "yellow"}]
execute if score #ctrl_time jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.time_set.show.2", color: "yellow"}]
execute if score #ctrl_time jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.time_set.show.3", color: "yellow"}]
data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

execute if score #ctrl_time jkpof.int matches 0 run time set 0
execute if score #ctrl_time jkpof.int matches 1 run time set noon
execute if score #ctrl_time jkpof.int matches 2 run time set night
execute if score #ctrl_time jkpof.int matches 3 run time set midnight

function jkpof:_by_version/gamerule/day_night

execute if score #ctrl_time_freeze jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] Glowing set value false
execute if score #ctrl_time_freeze jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] Glowing set value true
