scoreboard players add #ctrl_item_mode jkpof.int 1
execute if score #ctrl_item_mode jkpof.int matches 2.. run scoreboard players set #ctrl_item_mode jkpof.int 0

execute if score #ctrl_item_mode jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_item_mode, limit=1] item.id set value "raw_gold"
execute if score #ctrl_item_mode jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.bool.diff", color: "yellow"}]
execute if score #ctrl_item_mode jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_item_mode, limit=1] item.id set value "diamond"
execute if score #ctrl_item_mode jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.bool.same", color: "aqua"}]

data modify entity @e[type=item_display, tag=jkpof_display_ctrl_item_mode, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
