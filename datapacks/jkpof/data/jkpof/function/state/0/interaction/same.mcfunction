playsound block.note_block.bell block @a

execute as @s[tag=jkpof_ctrl_pillar_type] run function jkpof:state/0/interaction/ctrl/pillar/type
execute as @s[tag=jkpof_ctrl_pillar_distance] run function jkpof:state/0/interaction/ctrl/pillar/distance/add
execute as @s[tag=jkpof_ctrl_team] run function jkpof:state/0/interaction/ctrl/pillar/count/team

execute as @s[tag=jkpof_ctrl_item_mode] run function jkpof:state/0/interaction/ctrl/item/mode
execute as @s[tag=jkpof_ctrl_item_count] run function jkpof:state/0/interaction/ctrl/item/count
execute as @s[tag=jkpof_ctrl_item_time] run function jkpof:state/0/interaction/ctrl/item/time
execute as @s[tag=jkpof_ctrl_item_prop_chance] run function jkpof:state/0/interaction/ctrl/item/prop_chance

execute as @s[tag=jkpof_ctrl_ground_type] run function jkpof:state/0/interaction/ctrl/ground/type
execute as @s[tag=jkpof_ctrl_ground_radius] run function jkpof:state/0/interaction/ctrl/ground/radius
execute as @s[tag=jkpof_ctrl_ground_floor] run function jkpof:state/0/interaction/ctrl/ground/floor/s
execute as @s[tag=jkpof_ctrl_ground_floor_random] run function jkpof:state/0/interaction/ctrl/ground/floor/random

execute as @s[tag=jkpof_ctrl_night_vision] run function jkpof:state/0/interaction/ctrl/switcher {id: 'night_vision', item: 'golden_carrot'}
execute as @s[tag=jkpof_ctrl_natural_regen] run function jkpof:state/0/interaction/ctrl/switcher {id: 'natural_regen', item: 'golden_apple'}
execute as @s[tag=jkpof_ctrl_advancement] run function jkpof:state/0/interaction/ctrl/switcher {id: 'advancement', item: 'dragon_egg'}
execute as @s[tag=jkpof_ctrl_locator_bar] run function jkpof:state/0/interaction/ctrl/switcher {id: 'locator_bar', item: 'compass'}
execute as @s[tag=jkpof_ctrl_actionbar] run function jkpof:state/0/interaction/ctrl/switcher {id: 'actionbar', item: 'name_tag'}
execute as @s[tag=jkpof_ctrl_bossbar] run function jkpof:state/0/interaction/ctrl/switcher {id: 'bossbar', item: 'repeater'}

execute as @s[tag=jkpof_ctrl_upside_down] run function jkpof:state/0/interaction/ctrl/switcher {id: 'upside_down', item: 'magenta_glazed_terracotta'}
execute as @s[tag=jkpof_ctrl_upside_down] if score #ctrl_upside_down jkpof.int matches 1 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.upside_down.name", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.global.player_get_on_spawn.p1"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.gravity_device.name", color: "light_purple"}, {text: "*2", color: "light_purple"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.global.player_get_on_spawn.p2"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.upside_down.lore"}]
execute as @s[tag=jkpof_ctrl_kid_mode] run function jkpof:state/0/interaction/ctrl/switcher {id: 'kid_mode', item: 'wheat_seeds'}
execute as @s[tag=jkpof_ctrl_kid_mode] if score #ctrl_kid_mode jkpof.int matches 1 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.kid_mode.name", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.kid_mode.lore.p1"}, {translate: "attribute.name.scale", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.kid_mode.lore.p2"}]
execute as @s[tag=jkpof_ctrl_forgiving_void] run function jkpof:state/0/interaction/ctrl/switcher {id: 'forgiving_void', item: 'bedrock'}
execute as @s[tag=jkpof_ctrl_forgiving_void] if score #ctrl_forgiving_void jkpof.int matches 1 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.forgiving_void.name", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.forgiving_void.lore"}]
execute as @s[tag=jkpof_ctrl_double_health] run function jkpof:state/0/interaction/ctrl/switcher {id: 'double_health', item: 'cake'}
execute as @s[tag=jkpof_ctrl_init_tool] run function jkpof:state/0/interaction/ctrl/switcher {id: 'init_tool', item: 'shears'}
execute as @s[tag=jkpof_ctrl_init_tool] if score #ctrl_init_tool jkpof.int matches 1 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.init_tool.name", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.global.player_get_on_spawn.p1"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.shears.name", color: "aqua"}, {text: "*1", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.global.player_get_on_spawn.p2"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}]
execute as @s[tag=jkpof_ctrl_bonus_chest] run function jkpof:state/0/interaction/ctrl/switcher {id: 'bonus_chest', item: 'chest'}
execute as @s[tag=jkpof_ctrl_bonus_chest] if score #ctrl_bonus_chest jkpof.int matches 1 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {translate: "selectWorld.bonusItems", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.colon"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.global.player_get_on_spawn.p1"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.loot_chest.name", color: "yellow"}, {text: "*1", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.const.settings.special_rules.global.player_get_on_spawn.p2"}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}]

execute as @s[tag=jkpof_ctrl_lang] run function jkpof:state/0/interaction/ctrl/lang/0

execute as @s[tag=jkpof_display_lobby_item] run function jkpof:state/0/interaction/lobby/item/global
execute as @s[tag=jkpof_display_event_order] run function jkpof:state/0/interaction/lobby/event/show
execute as @s[tag=jkpof_display_event_switch] run function jkpof:state/0/interaction/lobby/event/switch
execute as @s[tag=jkpof_display_event_ctrl] run function jkpof:state/0/interaction/lobby/event/ctrl

execute as @s[tag=jkpof_ctrl_map, tag=-1] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: -1}
execute as @s[tag=jkpof_ctrl_map, tag=0] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 0}
execute as @s[tag=jkpof_ctrl_map, tag=1] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 1}
execute as @s[tag=jkpof_ctrl_map, tag=2] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 2}
execute as @s[tag=jkpof_ctrl_map, tag=3] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 3}
execute as @s[tag=jkpof_ctrl_map, tag=4] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 4}
execute as @s[tag=jkpof_ctrl_map, tag=5] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 5}
execute as @s[tag=jkpof_ctrl_map, tag=6] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 6}
execute as @s[tag=jkpof_ctrl_map, tag=7] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 7}
execute as @s[tag=jkpof_ctrl_map, tag=8] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 8}
execute as @s[tag=jkpof_ctrl_map, tag=9] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 9}
execute as @s[tag=jkpof_ctrl_map, tag=10] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 10}
execute as @s[tag=jkpof_ctrl_map, tag=11] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 11}
execute as @s[tag=jkpof_ctrl_map, tag=12] run function jkpof:state/0/interaction/ctrl/ground/map/num {n: 12}

execute as @s[tag=jkpof_ctrl_preset] run function jkpof:state/0/interaction/ctrl/preset/show
execute as @s[tag=jkpof_ctrl] run function jkpof:state/0/interaction/ctrl/preset/custom
