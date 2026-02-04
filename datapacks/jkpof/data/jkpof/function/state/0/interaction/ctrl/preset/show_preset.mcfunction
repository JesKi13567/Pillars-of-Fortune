execute if score #ctrl_preset jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] item.id set value "nether_star"
execute if score #ctrl_preset jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.custom"}]
execute if score #ctrl_preset jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] item.id set value "iron_ingot"
execute if score #ctrl_preset jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.global.default"}]
execute if score #ctrl_preset jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] item.id set value "apple"
execute if score #ctrl_preset jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.preset.author_love"}]
execute if score #ctrl_preset jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] item.id set value "bedrock"
execute if score #ctrl_preset jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{translate: "block.minecraft.bedrock"}]

data modify entity @e[type=item_display, tag=jkpof_display_ctrl_preset, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
