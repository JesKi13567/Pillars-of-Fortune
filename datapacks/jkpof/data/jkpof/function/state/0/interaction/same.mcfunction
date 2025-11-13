playsound block.note_block.bell block @a

execute as @s[tag=jkpof_interaction_ctrl_pillar_type] run function jkpof:state/0/interaction/ctrl/pillar/type
execute as @s[tag=jkpof_interaction_ctrl_team] run function jkpof:state/0/interaction/ctrl/pillar/count/team

execute as @s[tag=jkpof_interaction_ctrl_item_player] run function jkpof:state/0/interaction/ctrl/item/player
execute as @s[tag=jkpof_interaction_ctrl_item_count] run function jkpof:state/0/interaction/ctrl/item/count
execute as @s[tag=jkpof_interaction_ctrl_item_time] run function jkpof:state/0/interaction/ctrl/item/time

execute as @s[tag=jkpof_interaction_ctrl_ground_type] run function jkpof:state/0/interaction/ctrl/ground/type
execute as @s[tag=jkpof_interaction_ctrl_ground_radius] run function jkpof:state/0/interaction/ctrl/ground/radius
execute as @s[tag=jkpof_interaction_ctrl_ground_floor] run function jkpof:state/0/interaction/ctrl/ground/floor/s
execute as @s[tag=jkpof_interaction_ctrl_ground_floor_random] run function jkpof:state/0/interaction/ctrl/ground/floor/random

execute as @s[tag=jkpof_interaction_ctrl_night_vision] run function jkpof:state/0/interaction/ctrl/night_vision
execute as @s[tag=jkpof_interaction_ctrl_natural_regen] run function jkpof:state/0/interaction/ctrl/natural_regen
execute as @s[tag=jkpof_interaction_ctrl_advancement] run function jkpof:state/0/interaction/ctrl/advancement
execute as @s[tag=jkpof_interaction_ctrl_locator_bar] run function jkpof:state/0/interaction/ctrl/locator_bar
execute as @s[tag=jkpof_interaction_ctrl_map] run function jkpof:state/0/interaction/ctrl/map

execute as @s[tag=jkpof_display_lobby_item] run function jkpof:state/0/interaction/lobby/item
execute as @s[tag=jkpof_display_event_page_next] run function jkpof:state/0/interaction/lobby/event/_next
execute as @s[tag=jkpof_display_event_page_prev] run function jkpof:state/0/interaction/lobby/event/_prev
execute as @s[tag=jkpof_display_event_switch] run function jkpof:state/0/interaction/lobby/event/switch
execute as @s[tag=jkpof_display_event_ctrl] run function jkpof:state/0/interaction/lobby/event/ctrl

execute as @s[tag=jkpof_interaction_ctrl_preset] run function jkpof:state/0/interaction/ctrl/preset/show
execute as @s[tag=!jkpof_interaction_ctrl_preset, tag=!jkpof_display_lobby] run function jkpof:state/0/interaction/ctrl/preset/_1
