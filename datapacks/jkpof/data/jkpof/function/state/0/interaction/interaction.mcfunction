playsound block.note_block.bell block @a

execute as @s[tag=jkpof_interaction_ctrl_pillar_type] run function jkpof:state/0/interaction/ctrl/pillar/type/add
execute as @s[tag=jkpof_interaction_ctrl_pillar_count] run function jkpof:state/0/interaction/ctrl/pillar/count/add
execute as @s[tag=jkpof_interaction_ctrl_pillar_height] run function jkpof:state/0/interaction/ctrl/pillar/height/add
execute as @s[tag=jkpof_interaction_ctrl_pillar_distance] run function jkpof:state/0/interaction/ctrl/pillar/distance/add

execute as @s[tag=jkpof_interaction_ctrl_item_player] run function jkpof:state/0/interaction/ctrl/item/player
execute as @s[tag=jkpof_interaction_ctrl_item_count] run function jkpof:state/0/interaction/ctrl/item/count
execute as @s[tag=jkpof_interaction_ctrl_item_time] run function jkpof:state/0/interaction/ctrl/item/time

execute as @s[tag=jkpof_interaction_ctrl_ground_type] run function jkpof:state/0/interaction/ctrl/ground/type/add
execute as @s[tag=jkpof_interaction_ctrl_ground_radius] run function jkpof:state/0/interaction/ctrl/ground/radius/add
execute as @s[tag=jkpof_interaction_ctrl_ground_floor] run function jkpof:state/0/interaction/ctrl/ground/floor
execute as @s[tag=jkpof_interaction_ctrl_ground_floor_random] run function jkpof:state/0/interaction/ctrl/ground/floor_random

execute as @s[tag=jkpof_interaction_ctrl_time] run function jkpof:state/0/interaction/ctrl/time/change
execute as @s[tag=jkpof_interaction_ctrl_night_vision] run function jkpof:state/0/interaction/ctrl/night_vision
execute as @s[tag=jkpof_interaction_ctrl_preset] run function jkpof:state/0/interaction/ctrl/preset/show
execute as @s[tag=!jkpof_interaction_ctrl_preset] run function jkpof:state/0/interaction/ctrl/preset/_1

data remove entity @s interaction
