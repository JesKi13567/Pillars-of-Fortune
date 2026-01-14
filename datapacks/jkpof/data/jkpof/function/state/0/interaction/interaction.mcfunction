function jkpof:state/0/interaction/same

execute as @s[tag=jkpof_ctrl_pillar_count] run function jkpof:state/0/interaction/ctrl/pillar/count/add
execute as @s[tag=jkpof_ctrl_pillar_height] run function jkpof:state/0/interaction/ctrl/pillar/height/add
execute as @s[tag=jkpof_ctrl_pillar_distance] run function jkpof:state/0/interaction/ctrl/pillar/distance/add
execute as @s[tag=jkpof_ctrl_map] run function jkpof:state/0/interaction/ctrl/ground/map/add

execute as @s[tag=jkpof_ctrl_time] run function jkpof:state/0/interaction/ctrl/time/change

execute on target run effect give @s glowing 1 0 true
data remove entity @s interaction

scoreboard players set #countdown jkpof.int 10
