scoreboard players set #ctrl_pillar_type jkpof.int 1
scoreboard players set #ctrl_item_player jkpof.int 1

data merge entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] {CustomName: {text: "共同体", color: "yellow"}, item: {id: "dandelion"}}
