function jkpof:state/0/interaction/same
execute as @s[tag=!jkpof_silent] on target run effect give @s glowing 1 0 true

execute as @s[tag=jkpof_ctrl_pillar_count] run function jkpof:state/0/interaction/ctrl/pillar/count/add
execute as @s[tag=jkpof_ctrl_pillar_height] run function jkpof:state/0/interaction/ctrl/pillar/height/add
execute if score #ctrl_map jkpof.int matches 15..17 as @s[tag=jkpof_ctrl_map_custom] run function jkpof:state/0/interaction/ctrl/ground/map/custom/item
execute as @s[tag=jkpof_ctrl_time] run function jkpof:state/0/interaction/ctrl/time/change
execute as @s[tag=jkpof_stats] on target run function jkpof:state/0/interaction/stats/0
execute as @s[tag=jkpof_egg] on target run loot give @s loot jkpof:set/player_head

data remove entity @s interaction
