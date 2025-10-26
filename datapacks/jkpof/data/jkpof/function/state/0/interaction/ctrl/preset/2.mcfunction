scoreboard players set #ctrl_pillar_type jkpof.int 1
scoreboard players set #ctrl_item_player jkpof.int 1

data merge entity @e[limit=1, type=item_display, tag=jkpof_display_ctrl_preset] {CustomName: [{text: "共同体", color: "yellow"}], item: {id: "dandelion"}}
