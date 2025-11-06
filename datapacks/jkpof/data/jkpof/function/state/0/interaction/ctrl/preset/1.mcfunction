scoreboard players set #ctrl_pillar_type jkpof.int 3
scoreboard players set #ctrl_ground_type jkpof.int 2

data merge entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] {CustomName: {text: "单方块", color: "yellow"}, item: {id: "grass_block"}}
