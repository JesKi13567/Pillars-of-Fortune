function jkpof:state/0/interaction/same
execute as @s[tag=!jkpof_silent] on attacker run effect give @s glowing 1 0 true

execute as @s[tag=jkpof_ctrl_pillar_count] run function jkpof:state/0/interaction/ctrl/pillar/count/remove
execute as @s[tag=jkpof_ctrl_pillar_height] run function jkpof:state/0/interaction/ctrl/pillar/height/remove
execute as @s[tag=jkpof_ctrl_time] run function jkpof:state/0/interaction/ctrl/time/freeze
execute as @s[tag=jkpof_stats] on attacker run function jkpof:state/0/interaction/stats/0
execute as @s[tag=jkpof_egg] on attacker run loot give @s loot jkpof:set/player_head

data remove entity @s attack
