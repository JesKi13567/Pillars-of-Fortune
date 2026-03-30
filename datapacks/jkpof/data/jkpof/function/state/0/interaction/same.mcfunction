playsound block.note_block.bell block @a

execute as @s[tag=jkpof_ctrl_pillar_type] run function jkpof:state/0/interaction/ctrl/pillar/type
execute as @s[tag=jkpof_ctrl_pillar_distance] run function jkpof:state/0/interaction/ctrl/pillar/distance/add
execute as @s[tag=jkpof_ctrl_team] run function jkpof:state/0/interaction/ctrl/pillar/count/team

execute as @s[tag=jkpof_ctrl_item_mode] run function jkpof:state/0/interaction/ctrl/item/mode
execute as @s[tag=jkpof_ctrl_item_count] run function jkpof:state/0/interaction/ctrl/item/count
execute as @s[tag=jkpof_ctrl_item_time] run function jkpof:state/0/interaction/ctrl/item/time

execute as @s[tag=jkpof_ctrl_ground_type] run function jkpof:state/0/interaction/ctrl/ground/type
execute as @s[tag=jkpof_ctrl_ground_radius] run function jkpof:state/0/interaction/ctrl/ground/radius
execute as @s[tag=jkpof_ctrl_ground_floor] run function jkpof:state/0/interaction/ctrl/ground/floor/s
execute as @s[tag=jkpof_ctrl_ground_floor_random] run function jkpof:state/0/interaction/ctrl/ground/floor/random

execute as @s[tag=jkpof_ctrl_night_vision] run function jkpof:state/0/interaction/ctrl/switcher {id: 'night_vision', item: 'golden_carrot'}
execute as @s[tag=jkpof_ctrl_natural_regen] run function jkpof:state/0/interaction/ctrl/switcher {id: 'natural_regen', item: 'golden_apple'}
execute as @s[tag=jkpof_ctrl_advancement] run function jkpof:state/0/interaction/ctrl/switcher {id: 'advancement', item: 'dragon_egg'}
execute as @s[tag=jkpof_ctrl_locator_bar] run function jkpof:state/0/interaction/ctrl/switcher {id: 'locator_bar', item: 'compass'}
execute as @s[tag=jkpof_ctrl_upside_down] run function jkpof:state/0/interaction/ctrl/switcher {id: 'upside_down', item: 'magenta_glazed_terracotta'}
execute as @s[tag=jkpof_ctrl_kid_mode] run function jkpof:state/0/interaction/ctrl/switcher {id: 'kid_mode', item: 'wheat_seeds'}

execute as @s[tag=jkpof_ctrl_lang] run function jkpof:state/0/interaction/ctrl/lang

execute as @s[tag=jkpof_display_lobby_item] run function jkpof:state/0/interaction/lobby/item/global
execute as @s[tag=jkpof_display_event_order] run function jkpof:state/0/interaction/lobby/event/show
execute as @s[tag=jkpof_display_event_switch] run function jkpof:state/0/interaction/lobby/event/switch
execute as @s[tag=jkpof_display_event_ctrl] run function jkpof:state/0/interaction/lobby/event/ctrl

execute as @s[tag=jkpof_ctrl_preset] run function jkpof:state/0/interaction/ctrl/preset/show
execute as @s[tag=jkpof_ctrl] run function jkpof:state/0/interaction/ctrl/preset/custom
