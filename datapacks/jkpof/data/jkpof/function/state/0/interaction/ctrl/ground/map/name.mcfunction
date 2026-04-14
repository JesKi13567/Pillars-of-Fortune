$data modify entity @e[type=text_display, tag=jkpof_display_ctrl_map, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.map", color: "gold"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.map.title.$(id)", color: "yellow"}]
$data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(id), limit=1] Glowing set value true
$execute as @e[type=item_display, tag=jkpof_display_ctrl_map, tag=!$(id)] run data modify entity @s Glowing set value false

execute if score #ctrl_map jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_ctrl_map, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.map", color: "gold"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}]

execute if score #ctrl_map jkpof.int matches -1 as @e[type=item_display, tag=jkpof_display_ctrl_map, tag=!-1] run data modify entity @s Glowing set value false
execute if score #ctrl_map jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=-1, limit=1] Glowing set value true
execute if score #ctrl_map jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_ctrl_map, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.map", color: "gold"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.random", color: "yellow"}]

execute unless score #ctrl_map jkpof.int matches 11..12 as @e[type=item_display, tag=jkpof_ctrl_map_custom] run data modify entity @s view_range set value 0
execute if score #ctrl_map jkpof.int matches 11..12 as @e[type=item_display, tag=jkpof_ctrl_map_custom] run data modify entity @s view_range set value 1
execute if score #ctrl_map jkpof.int matches 11..12 as @s[tag=jkpof_ctrl_map, tag=11] run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom", color: "green"}]
execute if score #ctrl_map jkpof.int matches 11..12 as @s[tag=jkpof_ctrl_map, tag=12] run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom", color: "green"}]
execute if score #ctrl_map jkpof.int matches 11 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.block", color: "aqua"}, "1"]
execute if score #ctrl_map jkpof.int matches 11 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=block1, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 11 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.block", color: "aqua"}, "2"]
execute if score #ctrl_map jkpof.int matches 11 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=block2, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 12 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.ground.name", color: "aqua"}]
execute if score #ctrl_map jkpof.int matches 12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=block1, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 12 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.pillar.name", color: "aqua"}]
execute if score #ctrl_map jkpof.int matches 12 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=block2, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
