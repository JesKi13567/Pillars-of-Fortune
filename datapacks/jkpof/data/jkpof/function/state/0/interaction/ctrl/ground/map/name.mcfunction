$data modify entity @e[type=text_display, tag=jkpof_display_ctrl_map, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.map", color: "green"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.map.title.$(id)", color: "gold"}]
$data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(id), limit=1] Glowing set value true
$execute as @e[type=item_display, tag=jkpof_display_ctrl_map, tag=!$(id)] run data modify entity @s Glowing set value false

execute if score #ctrl_map jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_ctrl_map, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.map", color: "green"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.disabled.common", color: "red"}]

execute if score #ctrl_map jkpof.int matches -1 as @e[type=item_display, tag=jkpof_display_ctrl_map, tag=!-1] run data modify entity @s Glowing set value false
execute if score #ctrl_map jkpof.int matches -1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=-1, limit=1] Glowing set value true
execute if score #ctrl_map jkpof.int matches -1 run data modify entity @e[type=text_display, tag=jkpof_display_ctrl_map, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.map", color: "green"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.random", color: "gold"}]

execute as @s[tag=jkpof_ctrl_map, tag=15] run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.mix", color: "gold"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom.p1"}, {translate: "gameMode.creative", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom.p2"}]
execute as @s[tag=jkpof_ctrl_map, tag=16] run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.combine", color: "gold"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom.p1"}, {translate: "gameMode.creative", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom.p2"}]
execute as @s[tag=jkpof_ctrl_map, tag=17] run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.3f", color: "gold"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom.p1"}, {translate: "gameMode.creative", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.map.global.custom.p2"}]

execute unless score #ctrl_map jkpof.int matches 15..17 as @e[type=item_display, tag=jkpof_ctrl_map_custom] run data modify entity @s view_range set value 0
execute if score #ctrl_map jkpof.int matches 15..16 as @e[type=item_display, tag=jkpof_ctrl_map_custom, tag=!1st_2] run data modify entity @s view_range set value 0
execute if score #ctrl_map jkpof.int matches 15..16 as @e[type=item_display, tag=jkpof_ctrl_map_custom, tag=1st_2] run data modify entity @s view_range set value 1
execute if score #ctrl_map jkpof.int matches 17 as @e[type=item_display, tag=jkpof_ctrl_map_custom] run data modify entity @s view_range set value 1

execute if score #ctrl_map jkpof.int matches 15 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.block", color: "aqua"}, "1"]
execute if score #ctrl_map jkpof.int matches 15 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=b1, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 15 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.block", color: "aqua"}, "2"]
execute if score #ctrl_map jkpof.int matches 15 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=b2, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

execute if score #ctrl_map jkpof.int matches 16 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.pillar.name", color: "aqua"}]
execute if score #ctrl_map jkpof.int matches 16 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=b1, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 16 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.ground.name", color: "aqua"}]
execute if score #ctrl_map jkpof.int matches 16 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=b2, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

execute if score #ctrl_map jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.pillar.name", color: "aqua"}]
execute if score #ctrl_map jkpof.int matches 17 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=b1, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.ground.name", color: "aqua"}, "1"]
execute if score #ctrl_map jkpof.int matches 17 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=b2, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.ground.name", color: "aqua"}, "2"]
execute if score #ctrl_map jkpof.int matches 17 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=b3, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
execute if score #ctrl_map jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.ground.name", color: "aqua"}, "3"]
execute if score #ctrl_map jkpof.int matches 17 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=b4, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
