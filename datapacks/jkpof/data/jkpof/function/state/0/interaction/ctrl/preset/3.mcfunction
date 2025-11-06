scoreboard players set #ctrl_item_count_order jkpof.int 4
scoreboard players set #ctrl_ground_floor jkpof.int 4
scoreboard players set #ctrl_ground_floor_random jkpof.int 1

data merge entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] {CustomName: {text: "JK服常玩", color: "yellow"}, item: {id: "apple"}}
