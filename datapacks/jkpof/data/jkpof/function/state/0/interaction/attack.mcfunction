function jkpof:state/0/interaction/same

execute as @s[tag=jkpof_interaction_ctrl_pillar_count] run function jkpof:state/0/interaction/ctrl/pillar/count/remove
execute as @s[tag=jkpof_interaction_ctrl_pillar_height] run function jkpof:state/0/interaction/ctrl/pillar/height/remove
execute as @s[tag=jkpof_interaction_ctrl_pillar_distance] run function jkpof:state/0/interaction/ctrl/pillar/distance/remove

execute as @s[tag=jkpof_interaction_ctrl_time] run function jkpof:state/0/interaction/ctrl/time/freeze

execute on attacker run effect give @s glowing 1 0 true
data remove entity @s attack
