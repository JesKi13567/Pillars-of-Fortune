function jkpof:state/0/interaction/same
execute on attacker run effect give @s glowing 1 0 true

execute as @s[tag=jkpof_ctrl_pillar_count] run function jkpof:state/0/interaction/ctrl/pillar/count/remove
execute as @s[tag=jkpof_ctrl_pillar_height] run function jkpof:state/0/interaction/ctrl/pillar/height/remove
execute as @s[tag=jkpof_ctrl_time] run function jkpof:state/0/interaction/ctrl/time/freeze
execute as @s[tag=jkpof_stats] on attacker run function jkpof:state/0/interaction/stats/0

data remove entity @s attack
