scoreboard players add #ctrl_item_prop_chance jkpof.int 1
execute if score #ctrl_item_prop_chance jkpof.int matches 6.. run scoreboard players set #ctrl_item_prop_chance jkpof.int 0

execute if score #ctrl_item_prop_chance jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_prop_chance, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.default", color: "yellow"}]
execute if score #ctrl_item_prop_chance jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_prop_chance, limit=1] text set value [{score: {name: "#ctrl_item_prop_chance", objective: "jkpof.int"}, color: "yellow"}, "%"]
