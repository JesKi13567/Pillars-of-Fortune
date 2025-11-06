execute if score #ctrl_time jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] CustomName set value {text: "清晨", color: "yellow"}
execute if score #ctrl_time jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] CustomName set value {text: "中午", color: "yellow"}
execute if score #ctrl_time jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] CustomName set value {text: "傍晚", color: "yellow"}
execute if score #ctrl_time jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] CustomName set value {text: "午夜", color: "yellow"}

execute if score #ctrl_time jkpof.int matches 0 run time set 0
execute if score #ctrl_time jkpof.int matches 1 run time set noon
execute if score #ctrl_time jkpof.int matches 2 run time set night
execute if score #ctrl_time jkpof.int matches 3 run time set midnight

execute if score #ctrl_time_freeze jkpof.int matches 0 run gamerule doDaylightCycle true
execute if score #ctrl_time_freeze jkpof.int matches 1 run gamerule doDaylightCycle false

execute if score #ctrl_time_freeze jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] Glowing set value false
execute if score #ctrl_time_freeze jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_time, limit=1] Glowing set value true
