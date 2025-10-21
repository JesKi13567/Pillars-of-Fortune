scoreboard players set #ctrl_pillar_type jkpof.int 3
scoreboard players set #ctrl_ground_type jkpof.int 2

data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_preset] {CustomName: [{text: "单方块", color: "yellow"}], item: {count: 1, id: "grass_block"}}
