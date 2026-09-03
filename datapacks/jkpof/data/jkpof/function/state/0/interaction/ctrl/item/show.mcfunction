# 游戏模式
execute if score #ctrl_game_mode jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_game_mode, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.POF.expand", color: "yellow"}]
execute if score #ctrl_game_mode jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_lore, limit=1] text.extra[0] set value {storage: "jk:pof", interpret: true, nbt: "txt.POF.expand", color: "yellow"}
execute if score #ctrl_game_mode jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_lore, limit=1] text.extra[6] set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.top.description.p2", color: "green"}
execute if score #ctrl_game_mode jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_game_mode, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.FOF.expand", color: "light_purple"}]
execute if score #ctrl_game_mode jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_lore, limit=1] text.extra[0] set value {storage: "jk:pof", interpret: true, nbt: "txt.FOF.expand", color: "light_purple"}
execute if score #ctrl_game_mode jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_lore, limit=1] text.extra[6] set value {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.top.description.p2_", color: "green"}

# 分配模式
execute if score #ctrl_item_mode jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_item_mode, limit=1] item.id set value "raw_gold"
execute if score #ctrl_item_mode jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.diff", color: "yellow"}]
execute if score #ctrl_item_mode jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_item_mode, limit=1] item.id set value "diamond"
execute if score #ctrl_item_mode jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.bool.same", color: "aqua"}]
execute if score #ctrl_game_mode jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_item_mode, limit=1] item.id set value "barrier"
execute if score #ctrl_game_mode jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}]
data modify entity @e[type=item_display, tag=jkpof_display_ctrl_item_mode, limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text

# 数量
execute if score #ctrl_item_count_order jkpof.int matches 0..2 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_count, limit=1] text set value {score: {name: "#ctrl_item_count_num", objective: "jkpof.int"}, color: "yellow"}
execute if score #ctrl_item_count_order jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_count, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.random", color: "yellow"}, " 1~4"]
execute if score #ctrl_item_count_order jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_count, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.random", color: "yellow"}, " 1~8"]

# 间隔秒数
data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_time, limit=1] text set value {score: {name: "#ctrl_item_time", objective: "jkpof.int"}, color: "yellow"}
execute if score #ctrl_game_mode jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_time, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.invalid", color: "yellow"}]

# 道具概率
execute if score #ctrl_item_prop_chance jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_prop_chance, limit=1] text set value [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.global.default", color: "yellow"}]
execute if score #ctrl_item_prop_chance jkpof.int matches 1.. run data modify entity @e[type=text_display, tag=jkpof_display_show_ctrl_item_prop_chance, limit=1] text set value [{score: {name: "#ctrl_item_prop_chance", objective: "jkpof.int"}, color: "yellow"}, "%"]
