scoreboard players set #ctrl_pillar_type jkpof.int 0
scoreboard players set #ctrl_pillar_count_order jkpof.int -1
scoreboard players set #ctrl_pillar_count_order_real jkpof.int 0
scoreboard players set #ctrl_pillar_height jkpof.int 40
scoreboard players set #ctrl_pillar_distance jkpof.int 1

scoreboard players set #ctrl_item_player jkpof.int 0
scoreboard players set #ctrl_item_count_order jkpof.int 0
scoreboard players set #ctrl_item_time jkpof.int 5

scoreboard players set #ctrl_ground_type jkpof.int 0
scoreboard players set #ctrl_ground_radius jkpof.int 16
scoreboard players set #ctrl_ground_floor jkpof.int 1
scoreboard players set #ctrl_ground_floor_random jkpof.int 0

scoreboard players set #ctrl_time jkpof.int 1
scoreboard players set #ctrl_time_freeze jkpof.int 1

scoreboard players set #ctrl_night_vision jkpof.int 1
scoreboard players set #ctrl_natural_regen jkpof.int 1
scoreboard players set #ctrl_vote jkpof.int 1
scoreboard players set #ctrl_event jkpof.int 1
scoreboard players set #ctrl_advancement jkpof.int 1
scoreboard players set #ctrl_locator_bar jkpof.int 1

execute if score #ctrl_preset jkpof.int matches 0 run data merge entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] {CustomName: {text: "默认", color: "yellow"}, item: {id: "iron_ingot"}}
