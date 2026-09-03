# 修改数字
execute if score #event_order jkpof.int matches -1 run scoreboard players add #event_border.t jkpof.int 1
execute if score #event_order jkpof.int matches -1 if score #event_border.t jkpof.int matches 4.. run scoreboard players set #event_border.t jkpof.int 1

execute if score #event_order jkpof.int matches 3 if score #event_plus_3 jkpof.int matches 1 run scoreboard players add #event_lightning.t jkpof.int 2
execute if score #event_order jkpof.int matches 3 if score #event_plus_3 jkpof.int matches 1 if score #event_lightning.t jkpof.int matches 8..98 run scoreboard players set #event_lightning.t jkpof.int 99
execute if score #event_order jkpof.int matches 3 if score #event_plus_3 jkpof.int matches 1 if score #event_lightning.t jkpof.int matches 100.. run scoreboard players set #event_lightning.t jkpof.int 3

execute if score #event_order jkpof.int matches 15 run scoreboard players add #event_touch_change.block_type jkpof.int 1
execute if score #event_order jkpof.int matches 15 if score #event_touch_change.block_type jkpof.int matches 2.. run scoreboard players set #event_touch_change.block_type jkpof.int 0

execute if score #event_order jkpof.int matches 17 run scoreboard players add #event_nuke.t jkpof.int 1
execute if score #event_order jkpof.int matches 17 if score #event_nuke.t jkpof.int matches 5.. run scoreboard players set #event_nuke.t jkpof.int 1

function jkpof:state/0/interaction/lobby/event/show/global
