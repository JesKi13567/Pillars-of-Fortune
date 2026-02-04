function jkpof:state/0/interaction/ctrl/preset/show_ctrl
function jkpof:state/0/interaction/lobby/event/show
function jkpof:state/0/interaction/lobby/item/global

data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_play, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.top.play", color: "green", bold: true}]
data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_items, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.top.items", color: "red", bold: true}]
data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_events, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.top.events", color: "aqua", bold: true}]
data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_settings, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.top.settings", color: "gold", bold: true}]
data modify entity @e[type=text_display, tag=jkpof_lobby_const_top_lore, limit=1] text set value [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {text: " v1.2.1", color: "gold"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.const.top.lore.p1", color: "green"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.const.top.lore.p2", color: "aqua"}]

data modify entity @e[type=text_display, tag=jkpof_display_ctrl_item_show, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.random_item_give.name", color: "gold"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_item_mode, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.random_item_give.distribution_mode", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_item_count, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.global.count", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_item_time, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.random_item_give.interval_seconds", color: "green"}]

data modify entity @e[type=text_display, tag=jkpof_display_ctrl_map, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.map", color: "green"}]

data modify entity @e[type=text_display, tag=jkpof_display_ctrl_pillar_show, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.pillar.name", color: "gold"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_pillar_type, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.global.type", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_pillar_count, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.pillar.count", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_pillar_height, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.pillar.height", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_pillar_distance, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.pillar.distance", color: "green"}]

data modify entity @e[type=text_display, tag=jkpof_display_ctrl_ground_show, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.ground.name", color: "gold"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_ground_type, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.global.type", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_ground_radius, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.ground.radius", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_ground_floor, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.ground.floor_count", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_ground_floor_random, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.ground.floor_random", color: "green"}]

data modify entity @e[type=text_display, tag=jkpof_display_ctrl_others_show, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.others", color: "gold"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_time, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.time", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_natural_regen, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.natural_regen", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_advancement, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.advancement", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_locator_bar, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.locator_bar", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_upside_down, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.upside_down", color: "green"}]
data modify entity @e[type=text_display, tag=jkpof_display_ctrl_kid_mode, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.kid_mode", color: "green"}]

data modify entity @e[type=text_display, tag=jkpof_display_ctrl_preset, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.const.settings.presets", color: "green"}]

data modify entity @e[type=text_display, tag=jkpof_lobby_const_short_text_explain, limit=1] view_range set value 0
data modify entity @e[type=text_display, tag=jkpof_lobby_const_set_lang_1st, limit=1] view_range set value 0
