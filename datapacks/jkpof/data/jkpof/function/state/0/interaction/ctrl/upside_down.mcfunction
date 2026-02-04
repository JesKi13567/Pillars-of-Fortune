scoreboard players add #ctrl_upside_down jkpof.int 1
execute if score #ctrl_upside_down jkpof.int matches 2.. run scoreboard players set #ctrl_upside_down jkpof.int 0

execute if score #ctrl_upside_down jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_upside_down, limit=1] item.id set value "barrier"
execute if score #ctrl_upside_down jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.bool.disabled.common", color: "yellow"}]
execute if score #ctrl_upside_down jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_upside_down, limit=1] item.id set value "magenta_glazed_terracotta"
execute if score #ctrl_upside_down jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.bool.enabled.common", color: "yellow"}]

data modify entity @e[type=item_display, tag=jkpof_display_ctrl_upside_down, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
